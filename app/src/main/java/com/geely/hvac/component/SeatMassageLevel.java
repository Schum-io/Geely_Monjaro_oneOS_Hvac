package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class SeatMassageLevel extends SeatFeatureLevel {
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

    @Override // com.geely.hvac.component.SeatFeatureLevel
    protected int levelToIndex(int level) {
        return level;
    }

    public SeatMassageLevel(Context context) {
        super(context);
    }

    public SeatMassageLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatMassageLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
