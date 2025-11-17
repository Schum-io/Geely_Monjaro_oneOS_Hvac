package com.geely.os.car;

/* loaded from: classes.dex */
public interface IGlyCar {
    public static final int RATE_NORMAL = 3;
    public static final int RATE_SLOW = 4;
    public static final int RATE_SLOWEST = 5;

    void addRateSingleCarEventCallback(IGlyCarEventCallBack callback, int rate, int... propertyIds);

    void disconnect();

    float getFloatProperty(int propertyId);

    float getFloatProperty(int propertyId, int areaId);

    int getIntProperty(int propertyId);

    int getIntProperty(int propertyId, int areaId);

    int getSupportStatus(int propertyId);

    int getSupportStatus(int propertyId, int areaId);

    int[] getSupportedValueStatus(int propertyId);

    int[] getSupportedValueStatus(int propertyId, int areaId);

    void registerSingleCarEventCallback(IGlyCarEventCallBack callback, int... propertyIds);

    boolean setFloatProperty(int propertyId, float val);

    boolean setFloatProperty(int propertyId, int areaId, float val);

    boolean setIntProperty(int propertyId, int val);

    boolean setIntProperty(int propertyId, int areaId, int val);

    void unregisterSingleCarEventCallback(IGlyCarEventCallBack callback);
}
