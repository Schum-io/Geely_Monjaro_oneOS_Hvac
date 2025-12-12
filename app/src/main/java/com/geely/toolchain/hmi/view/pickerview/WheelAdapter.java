package com.geely.toolchain.hmi.view.pickerview;

/* loaded from: classes.dex */
public interface WheelAdapter<T> {
    T getItem(int index);

    int getItemsCount();

    int indexOf(T o);
}
