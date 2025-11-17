package com.geely.toolchain.hmi.view.pickerview;

/* loaded from: classes.dex */
public class NumericWheelAdapter implements WheelAdapter {
    private int maxValue;
    private int minValue;

    public NumericWheelAdapter(int minValue, int maxValue) {
        this.minValue = minValue;
        this.maxValue = maxValue;
    }

    @Override // com.geely.toolchain.hmi.view.pickerview.WheelAdapter
    public Object getItem(int index) {
        if (index >= 0 && index < getItemsCount()) {
            return Integer.valueOf(this.minValue + index);
        }
        return 0;
    }

    @Override // com.geely.toolchain.hmi.view.pickerview.WheelAdapter
    public int getItemsCount() {
        return (this.maxValue - this.minValue) + 1;
    }

    @Override // com.geely.toolchain.hmi.view.pickerview.WheelAdapter
    public int indexOf(Object o) {
        try {
            return ((Integer) o).intValue() - this.minValue;
        } catch (Exception unused) {
            return -1;
        }
    }
}
