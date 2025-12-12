package com.geely.livewallpager.lotties.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.provider.Settings;
import com.geely.livewallpager.lotties.L;
import com.geely.livewallpager.lotties.animation.LPaint;
import com.geely.livewallpager.lotties.animation.content.TrimPathContent;
import com.geely.livewallpager.lotties.animation.keyframe.FloatKeyframeAnimation;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* loaded from: classes.dex */
public final class Utils {
    public static final int SECOND_IN_NANOS = 1000000000;
    private static final PathMeasure pathMeasure = new PathMeasure();
    private static final Path tempPath = new Path();
    private static final Path tempPath2 = new Path();
    private static final float[] points = new float[4];
    private static final float INV_SQRT_2 = (float) (Math.sqrt(2.0d) / 2.0d);
    private static float dpScale = -1.0f;

    public static int hashFor(float a, float b, float c, float d) {
        int i = a != 0.0f ? (int) (527 * a) : 17;
        if (b != 0.0f) {
            i = (int) (i * 31 * b);
        }
        if (c != 0.0f) {
            i = (int) (i * 31 * c);
        }
        return d != 0.0f ? (int) (i * 31 * d) : i;
    }

    public static boolean isAtLeastVersion(int major, int minor, int patch, int minMajor, int minMinor, int minPatch) {
        if (major < minMajor) {
            return false;
        }
        if (major > minMajor) {
            return true;
        }
        if (minor < minMinor) {
            return false;
        }
        return minor > minMinor || patch >= minPatch;
    }

    private Utils() {
    }

    public static Path createPath(PointF startPoint, PointF endPoint, PointF cp1, PointF cp2) {
        Path path = new Path();
        path.moveTo(startPoint.x, startPoint.y);
        if (cp1 != null && cp2 != null && (cp1.length() != 0.0f || cp2.length() != 0.0f)) {
            path.cubicTo(cp1.x + startPoint.x, startPoint.y + cp1.y, endPoint.x + cp2.x, endPoint.y + cp2.y, endPoint.x, endPoint.y);
        } else {
            path.lineTo(endPoint.x, endPoint.y);
        }
        return path;
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    public static float getScale(Matrix matrix) {
        float[] fArr = points;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f = INV_SQRT_2;
        fArr[2] = f;
        fArr[3] = f;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static boolean hasZeroScaleAxis(Matrix matrix) {
        float[] fArr = points;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static void applyTrimPathIfNeeded(Path path, TrimPathContent trimPath) {
        if (trimPath == null || trimPath.isHidden()) {
            return;
        }
        applyTrimPathIfNeeded(path, ((FloatKeyframeAnimation) trimPath.getStart()).getFloatValue() / 100.0f, ((FloatKeyframeAnimation) trimPath.getEnd()).getFloatValue() / 100.0f, ((FloatKeyframeAnimation) trimPath.getOffset()).getFloatValue() / 360.0f);
    }

    public static void applyTrimPathIfNeeded(Path path, float startValue, float endValue, float offsetValue) {
        L.beginSection("applyTrimPathIfNeeded");
        PathMeasure pathMeasure2 = pathMeasure;
        pathMeasure2.setPath(path, false);
        float length = pathMeasure2.getLength();
        if (startValue == 1.0f && endValue == 0.0f) {
            L.endSection("applyTrimPathIfNeeded");
            return;
        }
        if (length < 1.0f || Math.abs((endValue - startValue) - 1.0f) < 0.01d) {
            L.endSection("applyTrimPathIfNeeded");
            return;
        }
        float f = startValue * length;
        float f2 = endValue * length;
        float f3 = offsetValue * length;
        float fMin = Math.min(f, f2) + f3;
        float fMax = Math.max(f, f2) + f3;
        if (fMin >= length && fMax >= length) {
            fMin = MiscUtils.floorMod(fMin, length);
            fMax = MiscUtils.floorMod(fMax, length);
        }
        if (fMin < 0.0f) {
            fMin = MiscUtils.floorMod(fMin, length);
        }
        if (fMax < 0.0f) {
            fMax = MiscUtils.floorMod(fMax, length);
        }
        if (fMin == fMax) {
            path.reset();
            L.endSection("applyTrimPathIfNeeded");
            return;
        }
        if (fMin >= fMax) {
            fMin -= length;
        }
        Path path2 = tempPath;
        path2.reset();
        pathMeasure2.getSegment(fMin, fMax, path2, true);
        if (fMax > length) {
            Path path3 = tempPath2;
            path3.reset();
            pathMeasure2.getSegment(0.0f, fMax % length, path3, true);
            path2.addPath(path3);
        } else if (fMin < 0.0f) {
            Path path4 = tempPath2;
            path4.reset();
            pathMeasure2.getSegment(fMin + length, length, path4, true);
            path2.addPath(path4);
        }
        path.set(path2);
        L.endSection("applyTrimPathIfNeeded");
    }

    public static float dpScale() {
        if (dpScale == -1.0f) {
            dpScale = Resources.getSystem().getDisplayMetrics().density;
        }
        return dpScale;
    }

    public static float getAnimationScale(Context context) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
        }
        return Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static Bitmap resizeBitmapIfNeeded(Bitmap bitmap, int width, int height) {
        if (bitmap.getWidth() == width && bitmap.getHeight() == height) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
        bitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static boolean isNetworkException(Throwable e) {
        return (e instanceof SocketException) || (e instanceof ClosedChannelException) || (e instanceof InterruptedIOException) || (e instanceof ProtocolException) || (e instanceof SSLException) || (e instanceof UnknownHostException) || (e instanceof UnknownServiceException);
    }

    public static void saveLayerCompat(Canvas canvas, RectF rect, Paint paint) {
        saveLayerCompat(canvas, rect, paint, 31);
    }

    public static void saveLayerCompat(Canvas canvas, RectF rect, Paint paint, int flag) {
        L.beginSection("Utils#saveLayer");
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rect, paint, flag);
        } else {
            canvas.saveLayer(rect, paint);
        }
        L.endSection("Utils#saveLayer");
    }

    public static Bitmap renderPath(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, false);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) rectF.right, (int) rectF.bottom, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        LPaint lPaint = new LPaint();
        lPaint.setAntiAlias(true);
        lPaint.setColor(-16776961);
        canvas.drawPath(path, lPaint);
        return bitmapCreateBitmap;
    }
}
