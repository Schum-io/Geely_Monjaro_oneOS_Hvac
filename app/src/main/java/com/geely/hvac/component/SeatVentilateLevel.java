package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class SeatVentilateLevel extends SeatFeatureLevel {
    @Override // com.geely.hvac.component.SeatFeatureLevel
    protected int levelToIndex(int level) {
        switch (level) {
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_1 /* 268763393 */:
                return 1;
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_2 /* 268763394 */:
                return 2;
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_3 /* 268763395 */:
                return 3;
            default:
                return 0;
        }
    }

    public SeatVentilateLevel(Context context) {
        super(context);
    }

    public SeatVentilateLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatVentilateLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
