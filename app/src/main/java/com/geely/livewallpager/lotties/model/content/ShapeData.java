package com.geely.livewallpager.lotties.model.content;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.model.CubicCurveData;
import com.geely.livewallpager.lotties.utils.Logger;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeData {
    private boolean closed;
    private final List<CubicCurveData> curves;
    private PointF initialPoint;

    public ShapeData(PointF initialPoint, boolean closed, List<CubicCurveData> curves) {
        this.initialPoint = initialPoint;
        this.closed = closed;
        this.curves = new ArrayList(curves);
    }

    public ShapeData() {
        this.curves = new ArrayList();
    }

    private void setInitialPoint(float x, float y) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.initialPoint.set(x, y);
    }

    public PointF getInitialPoint() {
        return this.initialPoint;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public List<CubicCurveData> getCurves() {
        return this.curves;
    }

    public void interpolateBetween(ShapeData shapeData1, ShapeData shapeData2, float percentage) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.closed = shapeData1.isClosed() || shapeData2.isClosed();
        if (shapeData1.getCurves().size() != shapeData2.getCurves().size()) {
            Logger.warning("Curves must have the same number of control points. Shape 1: " + shapeData1.getCurves().size() + "\tShape 2: " + shapeData2.getCurves().size());
        }
        int iMin = Math.min(shapeData1.getCurves().size(), shapeData2.getCurves().size());
        if (this.curves.size() < iMin) {
            for (int size = this.curves.size(); size < iMin; size++) {
                this.curves.add(new CubicCurveData());
            }
        } else if (this.curves.size() > iMin) {
            for (int size2 = this.curves.size() - 1; size2 >= iMin; size2--) {
                List<CubicCurveData> list = this.curves;
                list.remove(list.size() - 1);
            }
        }
        PointF initialPoint = shapeData1.getInitialPoint();
        PointF initialPoint2 = shapeData2.getInitialPoint();
        setInitialPoint(MiscUtils.lerp(initialPoint.x, initialPoint2.x, percentage), MiscUtils.lerp(initialPoint.y, initialPoint2.y, percentage));
        for (int size3 = this.curves.size() - 1; size3 >= 0; size3--) {
            CubicCurveData cubicCurveData = shapeData1.getCurves().get(size3);
            CubicCurveData cubicCurveData2 = shapeData2.getCurves().get(size3);
            PointF controlPoint1 = cubicCurveData.getControlPoint1();
            PointF controlPoint2 = cubicCurveData.getControlPoint2();
            PointF vertex = cubicCurveData.getVertex();
            PointF controlPoint12 = cubicCurveData2.getControlPoint1();
            PointF controlPoint22 = cubicCurveData2.getControlPoint2();
            PointF vertex2 = cubicCurveData2.getVertex();
            this.curves.get(size3).setControlPoint1(MiscUtils.lerp(controlPoint1.x, controlPoint12.x, percentage), MiscUtils.lerp(controlPoint1.y, controlPoint12.y, percentage));
            this.curves.get(size3).setControlPoint2(MiscUtils.lerp(controlPoint2.x, controlPoint22.x, percentage), MiscUtils.lerp(controlPoint2.y, controlPoint22.y, percentage));
            this.curves.get(size3).setVertex(MiscUtils.lerp(vertex.x, vertex2.x, percentage), MiscUtils.lerp(vertex.y, vertex2.y, percentage));
        }
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.curves.size() + "closed=" + this.closed + '}';
    }
}
