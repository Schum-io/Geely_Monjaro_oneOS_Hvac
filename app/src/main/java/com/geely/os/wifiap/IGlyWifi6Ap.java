package com.geely.os.wifiap;

import java.util.List;

/* loaded from: classes.dex */
public interface IGlyWifi6Ap {
    void connect();

    void disconnect();

    int getMaxConnections();

    boolean getWifi6ApEnabled();

    IGlyWifiAPHost getWifiAPHost();

    List<IGlyWifiApClient> getWifiApClients();

    int isWifiAPSupported();

    int isWifiSupported();

    void registerConnectWatcher(IGlyWifiApConnectWatcher watcher);

    boolean setMaxConnections(int size);

    boolean setWifi6ApConfiguration(String ssid, String pwd, int frenquency, int channel);

    boolean setWifi6ApEnabled(boolean enable);

    boolean setWifiApClientCallback(IGlyWifiApClientCallback callback);

    void unregisterConnectWatcher(IGlyWifiApConnectWatcher watcher);

    boolean unsetWifiApClientCallback(IGlyWifiApClientCallback callback);
}
