package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class SteeringWheelHeatLevel extends SeatFeatureLevel {
    @Override // com.geely.hvac.component.SeatFeatureLevel
    protected int levelToIndex(int level) {
        switch (level) {
            case GlyCarPropertyValue.STEERING_WHEEL_HEAT_LOW /* 269025537 */:
                return 1;
            case GlyCarPropertyValue.STEERING_WHEEL_HEAT_MID /* 269025538 */:
                return 2;
            case GlyCarPropertyValue.STEERING_WHEEL_HEAT_HIGH /* 269025539 */:
                return 3;
            default:
                return 0;
        }
    }

    public SteeringWheelHeatLevel(Context context) {
        super(context);
        init();
    }

    public SteeringWheelHeatLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public SteeringWheelHeatLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        if (isInEditMode()) {
            // In edit mode, set a default level or state for preview
            // For example, set the level to medium
            setLevel(GlyCarPropertyValue.STEERING_WHEEL_HEAT_MID);
        }
    }
}
