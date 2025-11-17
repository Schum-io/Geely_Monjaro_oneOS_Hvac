package com.ecarx.xui.adaptapi.wifiap;

import android.content.Context;
import com.ecarx.xui.adaptapi.FunctionStatus;
import com.ecarx.xui.adaptapi.binder.IConnectable;
import java.util.List;

public class WifiAp implements IConnectable {
    public static IConnectable create(Context context) {
        return null;
    }

    public int getMaxConnections() {
        return 0;
    }

    public List<IWifiApClient> getWifiApClients() {
        return null;
    }

    public IWifiAPHost getWifiAPHost() {
        return null;
    }

    public FunctionStatus isWifiAPSupported() {
        return FunctionStatus.UNKNOWN;
    }

    public FunctionStatus isWifiSupported() {
        return FunctionStatus.UNKNOWN;
    }

    public boolean query5GMode() {
        return false;
    }

    public void set5GMode(boolean enable) {
    }

    public boolean setMaxConnections(int size) {
        return false;
    }

    public boolean setWifiApClientCallback(IWifiApClientCallback callback) {
        return false;
    }

    public boolean unsetWifiApClientCallback(IWifiApClientCallback callback) {
        return false;
    }

    @Override
    public void registerConnectWatcher(IConnectWatcher watcher) {

    }

    @Override
    public void unregisterConnectWatcher() {

    }

    @Override
    public void connect() {

    }

    @Override
    public void disconnect() {

    }
}