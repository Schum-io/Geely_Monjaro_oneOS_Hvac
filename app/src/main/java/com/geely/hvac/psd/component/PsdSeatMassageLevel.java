package com.geely.hvac.psd.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class PsdSeatMassageLevel extends PsdSeatFeatureLevel {
    public static int getLevel(boolean massageState, int massageLevel) {
        if (!massageState) {
            return 0;
        }
        switch (massageLevel) {
        }
        return 0;
    }

    public static float getLevelBgAlpha(int massageLevel) {
        switch (massageLevel) {
            case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_1 /* 268764929 */:
                return 0.3f;
            case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_2 /* 268764930 */:
                return 0.6f;
            case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_3 /* 268764931 */:
                return 1.0f;
            default:
                return 0.0f;
        }
    }

    @Override // com.geely.hvac.psd.component.PsdSeatFeatureLevel
    protected int levelToIndex(int level) {
        return level;
    }

    public PsdSeatMassageLevel(Context context) {
        super(context);
    }

    public PsdSeatMassageLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public PsdSeatMassageLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
