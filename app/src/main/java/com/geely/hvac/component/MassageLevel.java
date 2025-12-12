package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class MassageLevel extends Selector {
    @Override // com.geely.hvac.component.Selector
    protected int indexToValue(int index) {
        return index != 1 ? index != 2 ? GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_1 : GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_3 : GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_2;
    }

    @Override // com.geely.hvac.component.Selector
    protected int valueToIndex(int value) {
        switch (value) {
            case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_2 /* 268764930 */:
                return 1;
            case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_3 /* 268764931 */:
                return 2;
            default:
                return 0;
        }
    }

    public MassageLevel(Context context) {
        super(context);
    }

    public MassageLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public MassageLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
