package com.geely.os.wifiap;

import java.util.List;

/* loaded from: classes.dex */
public interface IGlyWifiAp {
    void connect();

    void disconnect();

    int getMaxConnections();

    IGlyWifiAPHost getWifiAPHost();

    List<IGlyWifiApClient> getWifiApClients();

    int isWifi5GModeSupported();

    int isWifiAPSupported();

    int isWifiSupported();

    boolean query5GMode();

    void registerConnectWatcher(IGlyWifiApConnectWatcher watcher);

    void set5GMode(boolean enable);

    boolean setMaxConnections(int size);

    boolean setWifiApClientCallback(IGlyWifiApClientCallback callback);

    void unregisterConnectWatcher(IGlyWifiApConnectWatcher watcher);

    boolean unsetWifiApClientCallback(IGlyWifiApClientCallback callback);
}
