package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class KeyframeParser {
    private static final float MAX_CP_VALUE = 100.0f;
    private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache;
    private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    static JsonReader.Options NAMES = JsonReader.Options.of("t", "s", "e", "o", "i", "h", "to", "ti");

    KeyframeParser() {
    }

    private static SparseArrayCompat<WeakReference<Interpolator>> pathInterpolatorCache() {
        if (pathInterpolatorCache == null) {
            pathInterpolatorCache = new SparseArrayCompat<>();
        }
        return pathInterpolatorCache;
    }

    private static WeakReference<Interpolator> getInterpolator(int hash) {
        WeakReference<Interpolator> weakReference;
        synchronized (KeyframeParser.class) {
            weakReference = pathInterpolatorCache().get(hash);
        }
        return weakReference;
    }

    private static void putInterpolator(int hash, WeakReference<Interpolator> interpolator) {
        synchronized (KeyframeParser.class) {
            pathInterpolatorCache.put(hash, interpolator);
        }
    }

    static <T> Keyframe<T> parse(JsonReader reader, LottieComposition composition, float scale, ValueParser<T> valueParser, boolean animated) throws IOException {
        if (animated) {
            return parseKeyframe(composition, reader, scale, valueParser);
        }
        return parseStaticValue(reader, scale, valueParser);
    }

    private static <T> Keyframe<T> parseKeyframe(LottieComposition composition, JsonReader reader, float scale, ValueParser<T> valueParser) throws IOException {
        Interpolator interpolator;
        T t;
        Interpolator linearInterpolator;
        reader.beginObject();
        boolean z = false;
        float fNextDouble = 0.0f;
        PointF pointFJsonToPoint = null;
        PointF pointFJsonToPoint2 = null;
        T t2 = null;
        T t3 = null;
        PointF pointFJsonToPoint3 = null;
        PointF pointFJsonToPoint4 = null;
        while (reader.hasNext()) {
            switch (reader.selectName(NAMES)) {
                case 0:
                    fNextDouble = (float) reader.nextDouble();
                    break;
                case 1:
                    t3 = valueParser.parse(reader, scale);
                    break;
                case 2:
                    t2 = valueParser.parse(reader, scale);
                    break;
                case 3:
                    pointFJsonToPoint = JsonUtils.jsonToPoint(reader, scale);
                    break;
                case 4:
                    pointFJsonToPoint2 = JsonUtils.jsonToPoint(reader, scale);
                    break;
                case 5:
                    if (reader.nextInt() != 1) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 6:
                    pointFJsonToPoint4 = JsonUtils.jsonToPoint(reader, scale);
                    break;
                case 7:
                    pointFJsonToPoint3 = JsonUtils.jsonToPoint(reader, scale);
                    break;
                default:
                    reader.skipValue();
                    break;
            }
        }
        reader.endObject();
        if (z) {
            interpolator = LINEAR_INTERPOLATOR;
            t = t3;
        } else {
            if (pointFJsonToPoint != null && pointFJsonToPoint2 != null) {
                float f = -scale;
                pointFJsonToPoint.x = MiscUtils.clamp(pointFJsonToPoint.x, f, scale);
                pointFJsonToPoint.y = MiscUtils.clamp(pointFJsonToPoint.y, -100.0f, MAX_CP_VALUE);
                pointFJsonToPoint2.x = MiscUtils.clamp(pointFJsonToPoint2.x, f, scale);
                pointFJsonToPoint2.y = MiscUtils.clamp(pointFJsonToPoint2.y, -100.0f, MAX_CP_VALUE);
                int iHashFor = Utils.hashFor(pointFJsonToPoint.x, pointFJsonToPoint.y, pointFJsonToPoint2.x, pointFJsonToPoint2.y);
                WeakReference<Interpolator> interpolator2 = getInterpolator(iHashFor);
                Interpolator interpolator3 = interpolator2 != null ? interpolator2.get() : null;
                if (interpolator2 == null || interpolator3 == null) {
                    pointFJsonToPoint.x /= scale;
                    pointFJsonToPoint.y /= scale;
                    pointFJsonToPoint2.x /= scale;
                    pointFJsonToPoint2.y /= scale;
                    try {
                        linearInterpolator = PathInterpolatorCompat.create(pointFJsonToPoint.x, pointFJsonToPoint.y, pointFJsonToPoint2.x, pointFJsonToPoint2.y);
                    } catch (IllegalArgumentException e) {
                        if (e.getMessage().equals("The Path cannot loop back on itself.")) {
                            linearInterpolator = PathInterpolatorCompat.create(Math.min(pointFJsonToPoint.x, 1.0f), pointFJsonToPoint.y, Math.max(pointFJsonToPoint2.x, 0.0f), pointFJsonToPoint2.y);
                        } else {
                            linearInterpolator = new LinearInterpolator();
                        }
                    }
                    interpolator3 = linearInterpolator;
                    try {
                        putInterpolator(iHashFor, new WeakReference(interpolator3));
                    } catch (ArrayIndexOutOfBoundsException unused) {
                    }
                }
                interpolator = interpolator3;
            } else {
                interpolator = LINEAR_INTERPOLATOR;
            }
            t = t2;
        }
        Keyframe<T> keyframe = new Keyframe<>(composition, t3, t, interpolator, fNextDouble, null);
        keyframe.pathCp1 = pointFJsonToPoint4;
        keyframe.pathCp2 = pointFJsonToPoint3;
        return keyframe;
    }

    private static <T> Keyframe<T> parseStaticValue(JsonReader reader, float scale, ValueParser<T> valueParser) throws IOException {
        return new Keyframe<>(valueParser.parse(reader, scale));
    }
}
