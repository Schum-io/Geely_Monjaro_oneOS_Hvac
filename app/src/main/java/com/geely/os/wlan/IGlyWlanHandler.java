package com.geely.os.wlan;

import java.util.List;

/* loaded from: classes.dex */
public interface IGlyWlanHandler {
    public static final String EAP = "EAP";
    public static final String PSK = "PSK";
    public static final String WEP = "WEP";
    public static final String WPA = "WPA";

    public interface IGlyWlanCallback {
        void onScanResultAvailable();

        void onWifiInfoStatusChanged();

        void onWlanStateChanged(int state);
    }

    void connectEncryptWifi(GlyWifiInfo wifiInfo, String password);

    void connectOpenWifi(GlyWifiInfo wifiInfo);

    void connectSavedWifi(GlyWifiInfo wifiInfo);

    void disconnectWifi(GlyWifiInfo wifiInfo);

    void forgetWifi(GlyWifiInfo wifiInfo);

    List<GlyWifiInfo> getAvailableWifiList();

    List<GlyWifiInfo> getSavedWifiList();

    void init();

    boolean isWlanFuncSupported();

    boolean isWlanOpen();

    void registerWlanCallback(IGlyWlanCallback callback);

    void release();

    boolean setWlanOnOff(boolean onOff);

    void startScan();

    void unregisterWlanCallback(IGlyWlanCallback callback);
}
