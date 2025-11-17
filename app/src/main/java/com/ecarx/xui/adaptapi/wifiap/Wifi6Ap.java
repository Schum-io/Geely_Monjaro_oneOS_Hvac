package com.ecarx.xui.adaptapi.wifiap;

import android.content.Context;
import com.ecarx.xui.adaptapi.FunctionStatus;
import com.ecarx.xui.adaptapi.binder.IConnectable;
import java.util.List;

public class Wifi6Ap implements IConnectable {
    public static IConnectable create(Context context) {
        return null;
    }

    public int getMaxConnections() {
        return 0;
    }

    public boolean getWifi6ApEnabled() {
        return false;
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

    public boolean setMaxConnections(int size) {
        return false;
    }

    public boolean setWifi6ApConfiguration(String ssid, String pwd, int frenquency, int channel) {
        return false;
    }

    public boolean setWifi6ApEnabled(boolean enable) {
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
    public void disconnect() {

    }

    public void connect() {

    }

    public void unregisterConnectWatcher() {

    }
}