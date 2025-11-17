package com.geely.hvac.utils;

/* loaded from: classes.dex */
public class TemperRGBUtil {
    private static final float MAX_SECOND_TEMP = 26.5f;
    private static final float MAX_TEMP = 28.5f;
    private static final float MIN_SECOND_TEMP = 19.5f;
    private static final float MIN_TEMP = 15.5f;
    private final int mCenterColor;
    private final int mLeftColor;
    private final int mRightColor;
    private final String TAG = TemperRGBUtil.class.getSimpleName();
    private final LinearGradientUtil mLinearGradientUtil = new LinearGradientUtil(26);

    public TemperRGBUtil(int leftColor, int centerColor, int rightColor) {
        this.mLeftColor = leftColor;
        this.mCenterColor = centerColor;
        this.mRightColor = rightColor;
    }

    public int getRGB(float temp) {
        if (Float.compare(MAX_SECOND_TEMP, temp) >= 0 && Float.compare(temp, MIN_SECOND_TEMP) >= 0) {
            LogUtil.d(this.TAG, "26.5<= v <=19.5");
            return this.mCenterColor;
        }
        if (Float.compare(MAX_TEMP, temp) >= 0 && Float.compare(temp, MAX_SECOND_TEMP) > 0) {
            LogUtil.d(this.TAG, "28.5<= v <26.5");
            this.mLinearGradientUtil.setColor(this.mLeftColor, this.mCenterColor);
            return this.mLinearGradientUtil.getColor((MAX_TEMP - temp) / 2.0f);
        }
        if (Float.compare(MIN_SECOND_TEMP, temp) > 0 && Float.compare(temp, MIN_TEMP) >= 0) {
            LogUtil.d(this.TAG, "19.5< v <=15.5");
            float f = (MIN_SECOND_TEMP - temp) / 4.0f;
            this.mLinearGradientUtil.setColor(this.mCenterColor, this.mRightColor);
            return this.mLinearGradientUtil.getColor(f);
        }
        LogUtil.d(this.TAG, "invalid value");
        return 255;
    }
}
