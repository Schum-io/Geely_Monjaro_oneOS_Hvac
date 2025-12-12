package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableIntegerValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatablePathValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableScaleValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableSplitDimensionPathValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTransform;
import com.geely.livewallpager.lotties.model.animatable.AnimatableValue;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.value.Keyframe;
import com.geely.livewallpager.lotties.value.ScaleXY;
import java.io.IOException;

/* loaded from: classes.dex */
public class AnimatableTransformParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("a", "p", "s", "rz", "r", "o", "so", "eo", "sk", "sa");
    private static JsonReader.Options ANIMATABLE_NAMES = JsonReader.Options.of("k");

    private AnimatableTransformParser() {
    }

    public static AnimatableTransform parse(JsonReader reader, LottieComposition composition) throws IOException {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = reader.peek() == JsonReader.Token.BEGIN_OBJECT;
        if (z3) {
            reader.beginObject();
        }
        AnimatableFloatValue animatableFloatValue = null;
        AnimatablePathValue animatablePathValue = null;
        AnimatableValue<PointF, PointF> splitPath = null;
        AnimatableScaleValue scale = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        AnimatableIntegerValue integer = null;
        AnimatableFloatValue animatableFloatValue4 = null;
        AnimatableFloatValue animatableFloatValue5 = null;
        while (reader.hasNext()) {
            switch (reader.selectName(NAMES)) {
                case 0:
                    boolean z4 = z2;
                    reader.beginObject();
                    while (reader.hasNext()) {
                        if (reader.selectName(ANIMATABLE_NAMES) == 0) {
                            animatablePathValue = AnimatablePathValueParser.parse(reader, composition);
                        } else {
                            reader.skipName();
                            reader.skipValue();
                        }
                    }
                    reader.endObject();
                    z2 = z4;
                    continue;
                case 1:
                    splitPath = AnimatablePathValueParser.parseSplitPath(reader, composition);
                    continue;
                case 2:
                    scale = AnimatableValueParser.parseScale(reader, composition);
                    continue;
                case 3:
                    composition.addWarning("Lottie doesn't support 3D layers.");
                    break;
                case 4:
                    break;
                case 5:
                    integer = AnimatableValueParser.parseInteger(reader, composition);
                    continue;
                case 6:
                    animatableFloatValue4 = AnimatableValueParser.parseFloat(reader, composition, z2);
                    continue;
                case 7:
                    animatableFloatValue5 = AnimatableValueParser.parseFloat(reader, composition, z2);
                    continue;
                case 8:
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(reader, composition, z2);
                    continue;
                case 9:
                    animatableFloatValue3 = AnimatableValueParser.parseFloat(reader, composition, z2);
                    continue;
                default:
                    reader.skipName();
                    reader.skipValue();
                    continue;
            }
            AnimatableFloatValue animatableFloatValue6 = AnimatableValueParser.parseFloat(reader, composition, z2);
            if (animatableFloatValue6.getKeyframes().isEmpty()) {
                animatableFloatValue6.getKeyframes().add(new Keyframe(composition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(composition.getEndFrame())));
            } else {
                Object startValue = ((Keyframe) animatableFloatValue6.getKeyframes().get(0)).startValue;
                if (startValue != null && ((Float)startValue).floatValue() == 0.0f) {
                    z = false;
                    animatableFloatValue6.getKeyframes().set(0, new Keyframe(composition, Float.valueOf(0.0f), Float.valueOf(0.0f), null, 0.0f, Float.valueOf(composition.getEndFrame())));
                }
                z2 = z;
                animatableFloatValue = animatableFloatValue6;
            }
            z = false;
            z2 = z;
            animatableFloatValue = animatableFloatValue6;
        }
        if (z3) {
            reader.endObject();
        }
        AnimatablePathValue animatablePathValue2 = isAnchorPointIdentity(animatablePathValue) ? null : animatablePathValue;
        AnimatableValue<PointF, PointF> animatableValue = isPositionIdentity(splitPath) ? null : splitPath;
        AnimatableFloatValue animatableFloatValue7 = isRotationIdentity(animatableFloatValue) ? null : animatableFloatValue;
        if (isScaleIdentity(scale)) {
            scale = null;
        }
        return new AnimatableTransform(animatablePathValue2, animatableValue, scale, animatableFloatValue7, integer, animatableFloatValue4, animatableFloatValue5, isSkewIdentity(animatableFloatValue2) ? null : animatableFloatValue2, isSkewAngleIdentity(animatableFloatValue3) ? null : animatableFloatValue3);
    }

    private static boolean isAnchorPointIdentity(AnimatablePathValue anchorPoint) {
        return anchorPoint == null || (anchorPoint.isStatic() && anchorPoint.getKeyframes().get(0).startValue.equals(0.0f, 0.0f));
    }

    private static boolean isPositionIdentity(AnimatableValue<PointF, PointF> position) {
        return position == null || (!(position instanceof AnimatableSplitDimensionPathValue) && position.isStatic() && position.getKeyframes().get(0).startValue.equals(0.0f, 0.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isRotationIdentity(AnimatableFloatValue rotation) {
        return rotation == null || (rotation.isStatic() && ((Float) ((Keyframe) rotation.getKeyframes().get(0)).startValue).floatValue() == 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isScaleIdentity(AnimatableScaleValue scale) {
        return scale == null || (scale.isStatic() && ((ScaleXY) ((Keyframe) scale.getKeyframes().get(0)).startValue).equals(1.0f, 1.0f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isSkewIdentity(AnimatableFloatValue skew) {
        return skew == null || (skew.isStatic() && ((Float) ((Keyframe) skew.getKeyframes().get(0)).startValue).floatValue() == 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isSkewAngleIdentity(AnimatableFloatValue skewAngle) {
        return skewAngle == null || (skewAngle.isStatic() && ((Float) ((Keyframe) skewAngle.getKeyframes().get(0)).startValue).floatValue() == 0.0f);
    }
}
