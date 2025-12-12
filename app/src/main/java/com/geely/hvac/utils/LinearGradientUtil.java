package com.geely.hvac.utils;

import android.graphics.Color;

/* loaded from: classes.dex */
public class LinearGradientUtil {
    private int mAlpha;
    private int mEndColor;
    private int mStartColor;

    public LinearGradientUtil(int startColor, int endColor) {
        this.mAlpha = 255;
        this.mStartColor = startColor;
        this.mEndColor = endColor;
    }

    public LinearGradientUtil(int alpha, int startColor, int endColor) {
        this.mAlpha = 255;
        this.mAlpha = alpha;
        this.mStartColor = startColor;
        this.mEndColor = endColor;
    }

    public LinearGradientUtil(int alpha) {
        this.mAlpha = 255;
        this.mAlpha = alpha;
    }

    public void setColor(int startColor, int endColor) {
        this.mStartColor = startColor;
        this.mEndColor = endColor;
    }

    public void setAlpha(int alpha) {
        this.mAlpha = alpha;
    }

    public int getColor(float radio) {
        int iRed = Color.red(this.mStartColor);
        int iBlue = Color.blue(this.mStartColor);
        int iGreen = Color.green(this.mStartColor);
        int iRed2 = Color.red(this.mEndColor);
        int iBlue2 = Color.blue(this.mEndColor);
        return Color.argb(this.mAlpha, (int) (iRed + ((iRed2 - iRed) * radio) + 0.5d), (int) (iGreen + ((Color.green(this.mEndColor) - iGreen) * radio) + 0.5d), (int) (iBlue + ((iBlue2 - iBlue) * radio) + 0.5d));
    }
}
