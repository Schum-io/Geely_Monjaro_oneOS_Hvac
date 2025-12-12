package com.geely.os.car;

import android.content.Context;
import android.util.ArraySet;
import android.util.Log;
import com.ecarx.xui.adaptapi.binder.IConnectable;
import com.ecarx.xui.adaptapi.car.Car;
import com.ecarx.xui.adaptapi.car.ICar;
import com.ecarx.xui.adaptapi.car.hev.ICharging;
import com.ecarx.xui.adaptapi.car.hev.IHev;
import com.ecarx.xui.adaptapi.car.hev.ITripData;
import java.util.Calendar;

/* loaded from: classes.dex */
public class GlyHevImpl implements IGlyHev {
    private final ICar car;
    private IConnectable carConnectable;
    private GlyTripData glyTripData;
    private ICharging mChargingManager;
    private IHev mHevManager;
    private ICharging.IChargingListener mIChargingListener;
    private IGlyHevCallBack mIGlyTripInfoListener;
    private ITripData mITripData;
    private ArraySet<IGlyTPTFReportListener> tptfReportListeners = new ArraySet<>();
    IConnectable.IConnectWatcher connectCarWatcher = new IConnectable.IConnectWatcher() { // from class: com.geely.os.car.GlyHevImpl.1
        public void onConnected() {
            GlyLog.i("OneVehicleSDK_GlyHevImpl", "IConnectWatcher onConnected");
        }

        public void onDisConnected() {
            GlyLog.i("OneVehicleSDK_GlyHevImpl", "IConnectWatcher onDisConnected");
        }
    };
    private ITripData.ITripInfoListener mOnTripUpdatedListener = new ITripData.ITripInfoListener() { // from class: com.geely.os.car.GlyHevImpl.2
        public void onAvgEnergyInfoUpdate(ITripData.IAvgEnergyInfo iAvgEnergyInfo) {
        }

        public void onDrivingInfoUpdate(ITripData.IDrivingInfo iDrivingInfo) {
        }

        public void onTripDataReset(int i) {
        }

        public void onTripInfoUpdate(ITripData.ITripInfo iTripInfo) {
            GlyLog.i("OneVehicleSDK_GlyHevImpl", "onTripInfoUpdate iTripInfo=" + iTripInfo);
            if (GlyHevImpl.this.mIGlyTripInfoListener != null) {
                GlyHevImpl.this.mIGlyTripInfoListener.tripInfoChange();
            }
        }
    };

    @Override // com.geely.os.car.IGlyHev
    public void addSuperHybridListener(IGlySuperHybridListener superHybridListener) {
    }

    @Override // com.geely.os.car.IGlyHev
    public void removeSuperHybridListener(IGlySuperHybridListener superHybridListener) {
    }

    @Override // com.geely.os.car.IGlyHev
    public void requestRemoteBookChargingTime() {
    }

    @Override // com.geely.os.car.IGlyHev
    public boolean setBookChargingTime(Calendar startTime, Calendar stopTime, int switchStatus, int startPriority, int stopPriority) {
        return false;
    }

    public static IGlyHev create(Context context) {
        if (context != null) {
            return new GlyHevImpl(context);
        }
        return null;
    }

    private GlyHevImpl(Context context) {
        ICar iCar = Car.create(context);
        this.car = iCar;
        if (iCar != null) {
            if (this.carConnectable == null && (iCar instanceof IConnectable)) {
                IConnectable iConnectable = iCar;
                this.carConnectable = iConnectable;
                iConnectable.registerConnectWatcher(this.connectCarWatcher);
            }
            IHev hevManager = iCar.getHevManager();
            this.mHevManager = hevManager;
            if (hevManager != null) {
                this.mITripData = hevManager.getTripData();
                this.mChargingManager = this.mHevManager.getChargingManager();
            }
        }
    }

    @Override // com.geely.os.car.IGlyHev
    public int isTripDataSupported(int tripType) {
        int iOrdinal = GlySupportStatus.error;
        ITripData iTripData = this.mITripData;
        if (iTripData != null) {
            iOrdinal = iTripData.isTripDataSupported(tripType).ordinal();
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "isTripDataSupported:" + iOrdinal);
        return iOrdinal;
    }

    @Override // com.geely.os.car.IGlyHev
    public int getTripDistance(int tripType) {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0;
        }
        ITripData.IDrivingInfo latestTripInfo = (ITripData.IDrivingInfo) iTripData.getLatestTripInfo(tripType, 8192);
        if (latestTripInfo != null) {
            return latestTripInfo.getTripDistance();
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return 0;
    }

    @Override // com.geely.os.car.IGlyHev
    public long getTripDuration(int tripType) {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0L;
        }
        int tripDistance = 0;
        ITripData.IDrivingInfo latestTripInfo = (ITripData.IDrivingInfo) iTripData.getLatestTripInfo(tripType, 8192);
        if (latestTripInfo != null) {
            tripDistance = latestTripInfo.getTripDistance();
        } else {
            GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        }
        return tripDistance;
    }

    @Override // com.geely.os.car.IGlyHev
    public float getTripFuelConsumption(int tripType) {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0.0f;
        }
        ITripData.IDrivingInfo latestTripInfo = (ITripData.IDrivingInfo) iTripData.getLatestTripInfo(tripType, 8192);
        if (latestTripInfo != null) {
            return latestTripInfo.getTripFuelConsumption();
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return 0.0f;
    }

    @Override // com.geely.os.car.IGlyHev
    public float getTripEleConsumption(int tripType) {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0.0f;
        }
        ITripData.IDrivingInfo latestTripInfo = (ITripData.IDrivingInfo) iTripData.getLatestTripInfo(tripType, 8192);
        if (latestTripInfo != null) {
            return latestTripInfo.getTripEleConsumption();
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return 0.0f;
    }

    @Override // com.geely.os.car.IGlyHev
    public float getPropulsionPercent(int tripType) {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0.0f;
        }
        ITripData.ITripInfo latestTripInfo = iTripData.getLatestTripInfo(tripType, GlyCarPropertyValue.TRIP_INFO_TYPE_ENERGY_DISTRIBUTION);
        if (latestTripInfo != null) {
            return latestTripInfo.getInfoValue(GlyCarPropertyValue.TRIP_ED_PROPULSION_PERCENTAGE);
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return 0.0f;
    }

    @Override // com.geely.os.car.IGlyHev
    public float getAirConditionPercent(int tripType) {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0.0f;
        }
        ITripData.ITripInfo latestTripInfo = iTripData.getLatestTripInfo(tripType, GlyCarPropertyValue.TRIP_INFO_TYPE_ENERGY_DISTRIBUTION);
        if (latestTripInfo != null) {
            return latestTripInfo.getInfoValue(GlyCarPropertyValue.TRIP_AIR_CONDITION_PERCENTAGE);
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return 0.0f;
    }

    @Override // com.geely.os.car.IGlyHev
    public float getBatteryClimatePercent(int tripType) {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0.0f;
        }
        ITripData.ITripInfo latestTripInfo = iTripData.getLatestTripInfo(tripType, GlyCarPropertyValue.TRIP_INFO_TYPE_ENERGY_DISTRIBUTION);
        if (latestTripInfo != null) {
            return latestTripInfo.getInfoValue(GlyCarPropertyValue.TRIP_ED_BATTERY_CLIMATE_PERCENTAGE);
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return 0.0f;
    }

    @Override // com.geely.os.car.IGlyHev
    public boolean setPreChargingTime(Calendar start, Calendar end) {
        ICharging iCharging = this.mChargingManager;
        if (iCharging == null) {
            return false;
        }
        boolean preChargingTime = iCharging.setPreChargingTime(start, end);
        GlyLog.v("OneVehicleSDK_GlyHevImpl", "setPreChargingTime start:" + start.getTime().toString() + " end:" + end.getTime().toString() + " result:" + preChargingTime);
        return preChargingTime;
    }

    @Override // com.geely.os.car.IGlyHev
    public Calendar[] getPreChargingTime() {
        ICharging iCharging = this.mChargingManager;
        if (iCharging == null) {
            return null;
        }
        Calendar[] preChargingTime = iCharging.getPreChargingTime();
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "" + preChargingTime.toString());
        return preChargingTime;
    }

    @Override // com.geely.os.car.IGlyHev
    public void registerTripListener(IGlyHevCallBack iGlyTripInfoListener) {
        this.mIGlyTripInfoListener = iGlyTripInfoListener;
        ITripData iTripData = this.mITripData;
        if (iTripData != null) {
            iTripData.registerTripListener(this.mOnTripUpdatedListener);
        }
    }

    @Override // com.geely.os.car.IGlyHev
    public void unRegisterTripListener() {
        this.mIGlyTripInfoListener = null;
        ITripData iTripData = this.mITripData;
        if (iTripData != null) {
            iTripData.unregisterTripListener(this.mOnTripUpdatedListener);
        }
    }

    @Override // com.geely.os.car.IGlyHev
    public Float[] getHistoricalDischargeCapacityValue() {
        ICharging iCharging = this.mChargingManager;
        return iCharging != null ? iCharging.getHistoricalDischargeCapacityValue() : new Float[0];
    }

    @Override // com.geely.os.car.IGlyHev
    public Calendar[] getHistoricalDischargeCapacityTime() {
        ICharging iCharging = this.mChargingManager;
        return iCharging != null ? iCharging.getHistoricalDischargeCapacityTime() : new Calendar[0];
    }

    @Override // com.geely.os.car.IGlyHev
    public void registerListener(final IGlyChargingListener listener) {
        if (this.mChargingManager == null || listener == null) {
            return;
        }
        if (this.mIChargingListener == null) {
            this.mIChargingListener = new ICharging.IChargingListener() { // from class: com.geely.os.car.GlyHevImpl.3
                public void onPreChargingTimeChanged(Calendar[] calendars) {
                    listener.onPreChargingTimeChanged(calendars);
                }
            };
        }
        this.mChargingManager.registerListener(this.mIChargingListener);
    }

    @Override // com.geely.os.car.IGlyHev
    public void unregisterListener(IGlyChargingListener listener) {
        ICharging.IChargingListener iChargingListener;
        ICharging iCharging = this.mChargingManager;
        if (iCharging == null || (iChargingListener = this.mIChargingListener) == null) {
            return;
        }
        iCharging.unregisterListener(iChargingListener);
        this.mIChargingListener = null;
    }

    @Override // com.geely.os.car.IGlyHev
    public int getLastedUpdateItemFlag() {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return 0;
        }
        ITripData.IAvgEnergyInfo latestAvgEnergyInfo = iTripData.getLatestAvgEnergyInfo();
        if (latestAvgEnergyInfo != null) {
            return latestAvgEnergyInfo.getInfoType();
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestAvgEnergyInfo == null");
        return 0;
    }

    @Override // com.geely.os.car.IGlyHev
    public float[] getAverageConsumptionOil50km() {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return new float[0];
        }
        ITripData.ITripInfo latestTripInfo = iTripData.getLatestTripInfo(2, 20480);
        if (latestTripInfo != null) {
            return latestTripInfo.getInfoValues(GlyCarPropertyValue.TRIP_DI_AVG_OIL_CONSUMPTION_ARRAY_50KM);
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return new float[0];
    }

    @Override // com.geely.os.car.IGlyHev
    public float[] getAverageConsumptionOil100km() {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return new float[0];
        }
        ITripData.ITripInfo latestTripInfo = iTripData.getLatestTripInfo(2, 20480);
        if (latestTripInfo != null) {
            return latestTripInfo.getInfoValues(GlyCarPropertyValue.TRIP_DI_AVG_OIL_CONSUMPTION_ARRAY_100KM);
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return new float[0];
    }

    @Override // com.geely.os.car.IGlyHev
    public float[] getAverageConsumptionEn50km() {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return new float[0];
        }
        ITripData.ITripInfo latestTripInfo = iTripData.getLatestTripInfo(2, 20480);
        if (latestTripInfo != null) {
            return latestTripInfo.getInfoValues(GlyCarPropertyValue.TRIP_DI_AVG_EN_CONSUMPTION_ARRAY_50KM);
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return new float[0];
    }

    @Override // com.geely.os.car.IGlyHev
    public float[] getAverageConsumptionEn100km() {
        ITripData iTripData = this.mITripData;
        if (iTripData == null) {
            return new float[0];
        }
        ITripData.ITripInfo latestTripInfo = iTripData.getLatestTripInfo(2, 20480);
        if (latestTripInfo != null) {
            return latestTripInfo.getInfoValues(GlyCarPropertyValue.TRIP_DI_AVG_EN_CONSUMPTION_ARRAY_100KM);
        }
        GlyLog.i("OneVehicleSDK_GlyHevImpl", "mITripData.getLatestTripInfo == null");
        return new float[0];
    }

    @Override // com.geely.os.car.IGlyHev
    public IGlyTPTFReport getTPTFReportInfo() {
        final ITripData.ITPTFReport tPTFReportInfo = this.mITripData.getTPTFReportInfo();
        Log.i("OneVehicleSDK_GlyHevImpl", "getTPTFReportInfo " + tPTFReportInfo);
        if (tPTFReportInfo != null) {
            return new IGlyTPTFReport() { // from class: com.geely.os.car.GlyHevImpl.4
                @Override // com.geely.os.car.IGlyTPTFReport
                public int getLastedUpdateItemFlag() {
                    return tPTFReportInfo.getLastedUpdateItemFlag();
                }

                @Override // com.geely.os.car.IGlyTPTFReport
                public int[] getTPTFReportDataScene1() {
                    return tPTFReportInfo.getTPTFReportDataScene1();
                }

                @Override // com.geely.os.car.IGlyTPTFReport
                public int[] getTPTFReportDataScene2() {
                    return tPTFReportInfo.getTPTFReportDataScene2();
                }

                @Override // com.geely.os.car.IGlyTPTFReport
                public int[] getTPTFReportDataScene3() {
                    return tPTFReportInfo.getTPTFReportDataScene3();
                }

                @Override // com.geely.os.car.IGlyTPTFReport
                public int[] getTPTFReportDataScene4() {
                    return tPTFReportInfo.getTPTFReportDataScene4();
                }
            };
        }
        return null;
    }

    @Override // com.geely.os.car.IGlyHev
    public void registerTPTFReportListener(IGlyTPTFReportListener listener) {
        ArraySet<IGlyTPTFReportListener> arraySet;
        Log.i("OneVehicleSDK_GlyHevImpl", "registerTPTFReportListener listener =" + listener);
        if (listener == null || this.mITripData == null || (arraySet = this.tptfReportListeners) == null) {
            return;
        }
        if (arraySet.size() == 0) {
            getGlyTripData().registerTPTFReportListener();
        }
        this.tptfReportListeners.add(listener);
    }

    @Override // com.geely.os.car.IGlyHev
    public void unregisterTPTFReportListener(IGlyTPTFReportListener listener) {
        ArraySet<IGlyTPTFReportListener> arraySet;
        Log.i("OneVehicleSDK_GlyHevImpl", "unregisterTPTFReportListener listener =" + listener);
        if (listener == null || this.mITripData == null || (arraySet = this.tptfReportListeners) == null) {
            return;
        }
        arraySet.remove(listener);
        if (this.tptfReportListeners.size() == 0) {
            getGlyTripData().unregisterTPTFReportListener();
        }
    }

    private GlyTripData getGlyTripData() {
        if (this.glyTripData == null) {
            this.glyTripData = new GlyTripData(this.mITripData, this.tptfReportListeners);
        }
        return this.glyTripData;
    }
}