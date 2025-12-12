package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class SeatWindTimeSelector extends SeatTimeSelector {
    @Override // com.geely.hvac.component.SeatTimeSelector
    public int indexToLevel(int index) {
        return index != 0 ? index != 1 ? index != 2 ? GlyCarPropertyValue.AUTO_SEAT_VENTILATION_TIME_4 : GlyCarPropertyValue.AUTO_SEAT_VENTILATION_TIME_3 : GlyCarPropertyValue.AUTO_SEAT_VENTILATION_TIME_2 : GlyCarPropertyValue.AUTO_SEAT_VENTILATION_TIME_1;
    }

    @Override // com.geely.hvac.component.SeatTimeSelector
    public int levelToIndex(int level) {
        switch (level) {
            case GlyCarPropertyValue.AUTO_SEAT_VENTILATION_TIME_1 /* 268764161 */:
                return 0;
            case GlyCarPropertyValue.AUTO_SEAT_VENTILATION_TIME_2 /* 268764162 */:
                return 1;
            case GlyCarPropertyValue.AUTO_SEAT_VENTILATION_TIME_3 /* 268764163 */:
                return 2;
            default:
                return 3;
        }
    }

    public SeatWindTimeSelector(Context context) {
        super(context);
    }

    public SeatWindTimeSelector(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatWindTimeSelector(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
