package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class SteeringWheelHeatStatus extends SeatHeatWindState {
    @Override // com.geely.hvac.component.SeatHeatWindState
    protected int parseLevel(int level) {
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

    public SteeringWheelHeatStatus(Context context) {
        super(context);
    }

    public SteeringWheelHeatStatus(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SteeringWheelHeatStatus(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
