package com.ecarx.xui.adaptapi.car.hev;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface ITripData {
    FunctionStatus isTripDataSupported(int tripType);
    ITripInfo getLatestTripInfo(int tripType, int infoType);
    IAvgEnergyInfo getLatestAvgEnergyInfo();
    void registerTripListener(ITripInfoListener listener);
    void unregisterTripListener(ITripInfoListener listener);
    ITPTFReport getTPTFReportInfo();
    void registerTPTFReportListener(ITPTFReportListener listener);
    void unregisterTPTFReportListener(ITPTFReportListener listener);

    interface IAvgEnergyInfo {
        int getInfoType();
    }

    interface IDrivingInfo extends ITripInfo {
        int getTripDistance();
        float getTripFuelConsumption();
        float getTripEleConsumption();
    }

    interface ITripInfo {
        float getInfoValue(int infoKey);
        float[] getInfoValues(int infoKey);
    }

    interface ITripInfoListener {
        void onAvgEnergyInfoUpdate(IAvgEnergyInfo iAvgEnergyInfo);
        void onDrivingInfoUpdate(IDrivingInfo iDrivingInfo);
        void onTripDataReset(int i);
        void onTripInfoUpdate(ITripInfo iTripInfo);
    }

    interface ITPTFReport {
        int getLastedUpdateItemFlag();
        int[] getTPTFReportDataScene1();
        int[] getTPTFReportDataScene2();
        int[] getTPTFReportDataScene3();
        int[] getTPTFReportDataScene4();
    }

    interface ITPTFReportListener {
        void onReportUpdate(ITPTFReport itptfReport);
    }
}