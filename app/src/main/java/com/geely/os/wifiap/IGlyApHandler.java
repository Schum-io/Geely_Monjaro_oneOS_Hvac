package com.geely.os.wifiap;

import java.util.List;

/* loaded from: classes.dex */
public interface IGlyApHandler {
    public static final String ACTION_WIFI_AP_STATE_CHANGED = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    public static final String AP_DEFAULT_NAME = "Geely";
    public static final String AP_DEFAULT_PSW = "12345678";
    public static final String EXTRA_WIFI_AP_STATE = "wifi_state";
    public static final int WIFI_AP_STATE_DISABLED = 11;
    public static final int WIFI_AP_STATE_ENABLED = 13;

    public interface OnApClientDeviceChanged {
        void onApClientDeviceChanged();

        void onApStateChanged(int state);

        void onStartApResult(boolean result);
    }

    void addToBlacklist(GlyApClient client);

    void disableWifiAp();

    void enableWifiAp();

    List<GlyApClient> getBlacklist();

    int getMaxConnectCount();

    List<GlyApClient> getWifiApClients();

    GlyApHost getWifiApHost();

    void init();

    boolean isDualBandSupported();

    boolean isWifiApOpen();

    boolean isWifiApSupport();

    void registerApCallback(OnApClientDeviceChanged callback);

    void release();

    void removeFromBlackList(GlyApClient client);

    void setWifiApHost(GlyApHost host);

    void unregisterApCallback(OnApClientDeviceChanged callback);
}
