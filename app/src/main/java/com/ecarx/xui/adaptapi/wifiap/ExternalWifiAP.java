package com.ecarx.xui.adaptapi.wifiap;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import com.ecarx.xui.adaptapi.FunctionStatus;

public class ExternalWifiAP {
    public static ExternalWifiAP create(Context context) {
        return null;
    }

    public void registerApStateChangeListener(ExternalApStateListener listener) {
    }

    public FunctionStatus isWifiAPSupported() {
        return FunctionStatus.UNKNOWN;
    }

    public boolean isWifiApEnabled() {
        return false;
    }

    public WifiConfiguration getWifiApConfiguration() {
        return null;
    }

    public boolean startSoftAp(WifiConfiguration wifiConfiguration) {
        return false;
    }

    public boolean stopSoftAp() {
        return false;
    }
}