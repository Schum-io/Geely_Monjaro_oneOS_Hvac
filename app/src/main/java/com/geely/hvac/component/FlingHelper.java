package com.geely.hvac.component;

import android.content.Context;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public class FlingHelper {
    private static float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    private static float mFlingFriction = ViewConfiguration.getScrollFriction();
    private static float mPhysicalCoeff;

    public FlingHelper(Context context) {
        mPhysicalCoeff = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
    }

    private double getSplineDeceleration(int i) {
        return Math.log((Math.abs(i) * 0.35f) / (mFlingFriction * mPhysicalCoeff));
    }

    private double getSplineDecelerationByDistance(double d) {
        return ((DECELERATION_RATE - 1.0d) * Math.log(d / (mFlingFriction * mPhysicalCoeff))) / DECELERATION_RATE;
    }

    public double getSplineFlingDistance(int i) {
        double splineDeceleration = getSplineDeceleration(i);
        float f = DECELERATION_RATE;
        return Math.exp(splineDeceleration * (f / (f - 1.0d))) * mFlingFriction * mPhysicalCoeff;
    }

    public int getVelocityByDistance(double d) {
        return Math.abs((int) (((Math.exp(getSplineDecelerationByDistance(d)) * mFlingFriction) * mPhysicalCoeff) / 0.3499999940395355d));
    }
}
