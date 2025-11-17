package com.geely.livewallpager.lotties.utils;

import android.graphics.Path;
import android.graphics.PointF;
import com.geely.livewallpager.lotties.animation.content.KeyPathElementContent;
import com.geely.livewallpager.lotties.model.CubicCurveData;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.content.ShapeData;
import java.util.List;

/* loaded from: classes.dex */
public class MiscUtils {
    private static PointF pathFromDataCurrentPoint = new PointF();

    public static boolean contains(float number, float rangeMin, float rangeMax) {
        return number >= rangeMin && number <= rangeMax;
    }

    public static double lerp(double a, double b, double percentage) {
        return a + (percentage * (b - a));
    }

    public static float lerp(float a, float b, float percentage) {
        return a + (percentage * (b - a));
    }

    public static int lerp(int a, int b, float percentage) {
        return (int) (a + (percentage * (b - a)));
    }

    public static PointF addPoints(PointF p1, PointF p2) {
        return new PointF(p1.x + p2.x, p1.y + p2.y);
    }

    public static void getPathFromData(ShapeData shapeData, Path outPath) {
        outPath.reset();
        PointF initialPoint = shapeData.getInitialPoint();
        outPath.moveTo(initialPoint.x, initialPoint.y);
        pathFromDataCurrentPoint.set(initialPoint.x, initialPoint.y);
        for (int i = 0; i < shapeData.getCurves().size(); i++) {
            CubicCurveData cubicCurveData = shapeData.getCurves().get(i);
            PointF controlPoint1 = cubicCurveData.getControlPoint1();
            PointF controlPoint2 = cubicCurveData.getControlPoint2();
            PointF vertex = cubicCurveData.getVertex();
            if (controlPoint1.equals(pathFromDataCurrentPoint) && controlPoint2.equals(vertex)) {
                outPath.lineTo(vertex.x, vertex.y);
            } else {
                outPath.cubicTo(controlPoint1.x, controlPoint1.y, controlPoint2.x, controlPoint2.y, vertex.x, vertex.y);
            }
            pathFromDataCurrentPoint.set(vertex.x, vertex.y);
        }
        if (shapeData.isClosed()) {
            outPath.close();
        }
    }

    static int floorMod(float x, float y) {
        return floorMod((int) x, (int) y);
    }

    private static int floorMod(int x, int y) {
        return x - (y * floorDiv(x, y));
    }

    private static int floorDiv(int x, int y) {
        int i = x / y;
        return (((x ^ y) >= 0) || x % y == 0) ? i : i - 1;
    }

    public static int clamp(int number, int min, int max) {
        return Math.max(min, Math.min(max, number));
    }

    public static float clamp(float number, float min, float max) {
        return Math.max(min, Math.min(max, number));
    }

    public static void resolveKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath, KeyPathElementContent content) {
        if (keyPath.fullyResolvesTo(content.getName(), depth)) {
            accumulator.add(currentPartialKeyPath.addKey(content.getName()).resolve(content));
        }
    }
}
