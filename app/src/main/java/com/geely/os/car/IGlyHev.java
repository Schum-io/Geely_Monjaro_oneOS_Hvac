package com.geely.os.car;

import java.util.Calendar;

/* loaded from: classes.dex */
public interface IGlyHev {
    public static final float AVG_ELE_MAX = 80.0f;
    public static final float AVG_ELE_MIN = -20.0f;
    public static final float AVG_FUEL_MAX = 20.0f;
    public static final float AVG_FUEL_MIN = 0.0f;

    void addSuperHybridListener(IGlySuperHybridListener superHybridListener);

    float getAirConditionPercent(int tripType);

    float[] getAverageConsumptionEn100km();

    float[] getAverageConsumptionEn50km();

    float[] getAverageConsumptionOil100km();

    float[] getAverageConsumptionOil50km();

    float getBatteryClimatePercent(int tripType);

    Calendar[] getHistoricalDischargeCapacityTime();

    Float[] getHistoricalDischargeCapacityValue();

    int getLastedUpdateItemFlag();

    Calendar[] getPreChargingTime();

    float getPropulsionPercent(int tripType);

    IGlyTPTFReport getTPTFReportInfo();

    int getTripDistance(int tripType);

    long getTripDuration(int tripType);

    float getTripEleConsumption(int tripType);

    float getTripFuelConsumption(int tripType);

    int isTripDataSupported(int tripType);

    void registerListener(IGlyChargingListener listener);

    void registerTPTFReportListener(IGlyTPTFReportListener listener);

    void registerTripListener(IGlyHevCallBack iGlyHevCallBack);

    void removeSuperHybridListener(IGlySuperHybridListener superHybridListener);

    void requestRemoteBookChargingTime();

    boolean setBookChargingTime(Calendar startTime, Calendar stopTime, int switchStatus, int startPriority, int stopPriority);

    boolean setPreChargingTime(Calendar start, Calendar end);

    void unRegisterTripListener();

    void unregisterListener(IGlyChargingListener listener);

    void unregisterTPTFReportListener(IGlyTPTFReportListener listener);
}
