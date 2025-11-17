package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class SeatHeatTimeSelector extends SeatTimeSelector {
    @Override // com.geely.hvac.component.SeatTimeSelector
    public int indexToLevel(int index) {
        return index != 0 ? index != 1 ? index != 2 ? GlyCarPropertyValue.AUTO_SEAT_HEATING_TIME_4 : GlyCarPropertyValue.AUTO_SEAT_HEATING_TIME_3 : GlyCarPropertyValue.AUTO_SEAT_HEATING_TIME_2 : GlyCarPropertyValue.AUTO_SEAT_HEATING_TIME_1;
    }

    @Override // com.geely.hvac.component.SeatTimeSelector
    public int levelToIndex(int level) {
        switch (level) {
            case GlyCarPropertyValue.AUTO_SEAT_HEATING_TIME_1 /* 268764673 */:
                return 0;
            case GlyCarPropertyValue.AUTO_SEAT_HEATING_TIME_2 /* 268764674 */:
                return 1;
            case GlyCarPropertyValue.AUTO_SEAT_HEATING_TIME_3 /* 268764675 */:
                return 2;
            default:
                return 3;
        }
    }

    public SeatHeatTimeSelector(Context context) {
        super(context);
    }

    public SeatHeatTimeSelector(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatHeatTimeSelector(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
