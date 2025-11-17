package com.geely.os.car;

/* loaded from: classes.dex */
public interface IGlyCarEventCallBack {
    void onChangeEvent(int propertyId, int areaId, Object value);

    void onSupportChanged(int propertyId, int areaId, int status);
}
