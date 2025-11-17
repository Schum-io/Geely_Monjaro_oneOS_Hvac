package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class SeatHeatState extends SeatHeatWindState {
    @Override // com.geely.hvac.component.SeatHeatWindState
    protected int parseLevel(int level) {
        switch (level) {
            case GlyCarPropertyValue.SEAT_HEATING_LEVEL_1 /* 268763649 */:
                return 1;
            case GlyCarPropertyValue.SEAT_HEATING_LEVEL_2 /* 268763650 */:
                return 2;
            case GlyCarPropertyValue.SEAT_HEATING_LEVEL_3 /* 268763651 */:
                return 3;
            default:
                return 0;
        }
    }

    public SeatHeatState(Context context) {
        super(context);
    }

    public SeatHeatState(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatHeatState(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
