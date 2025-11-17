package com.geely.os.wlan;

import android.content.Context;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.wifiap.ExternalWifiManager;
import com.ecarx.xui.adaptapi.wifiap.ExternalWifiStateListener;
import com.geely.os.car.GlyLog;
import com.geely.os.wlan.IGlyWlanHandler;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GlyWlanHandlerImpl implements IGlyWlanHandler {
    private ExternalWifiManager externalWifiManager;
    private final ArraySet<IGlyWlanCallback> wlanCallbacks = new ArraySet<>();
    private ExternalWifiStateListener wifiStateListener = new AnonymousClass1();

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void connectEncryptWifi(GlyWifiInfo wifiInfo, String psw) {
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void disconnectWifi(GlyWifiInfo wifiInfo) {
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void forgetWifi(GlyWifiInfo wifiInfo) {
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public List<GlyWifiInfo> getAvailableWifiList() {
        return null;
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public List<GlyWifiInfo> getSavedWifiList() {
        return null;
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void init() {
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public boolean isWlanFuncSupported() {
        return true;
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void startScan() {
    }

    /* renamed from: com.geely.os.wlan.GlyWlanHandlerImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ExternalWifiStateListener {
        AnonymousClass1() {
        }

        public void onWifiStateChanged(final int wifiState) {
            GlyLog.i("OneVehicleSDK_GlyWlanHandlerImpl", "wifiState = " + wifiState);
            GlyWlanHandlerImpl.this.wlanCallbacks.forEach(callback -> callback.onWlanStateChanged(wifiState));
        }
    }

    public GlyWlanHandlerImpl(Context context) {
        ExternalWifiManager externalWifiManagerCreate = ExternalWifiManager.create(context);
        this.externalWifiManager = externalWifiManagerCreate;
        if (externalWifiManagerCreate != null) {
            externalWifiManagerCreate.registerWifiStateListener(this.wifiStateListener);
        }
    }



    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void release() {
        GlyLog.i("OneVehicleSDK_GlyWlanHandlerImpl", "release");
        ExternalWifiManager externalWifiManager = this.externalWifiManager;
        if (externalWifiManager != null) {
            externalWifiManager.unregisterWifiStateListener(this.wifiStateListener);
        }
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public boolean isWlanOpen() {
        boolean z = false;
        ExternalWifiManager externalWifiManager = this.externalWifiManager;
        if (externalWifiManager != null) {
            z = externalWifiManager.getWifiState() == 3;
            GlyLog.i("OneVehicleSDK_GlyWlanHandlerImpl", "getWifiState = " + this.externalWifiManager.getWifiState());
        }
        return z;
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public boolean setWlanOnOff(boolean onOff) {
        if (this.externalWifiManager == null) {
            return false;
        }
        GlyLog.i("OneVehicleSDK_GlyWlanHandlerImpl", "setWlanOnOff(" + onOff + ")");
        this.externalWifiManager.setWifiEnabled(onOff);
        return true;
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void connectSavedWifi(GlyWifiInfo wifiInfo) {
        connectEncryptWifi(wifiInfo, null);
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void connectOpenWifi(GlyWifiInfo wifiInfo) {
        connectEncryptWifi(wifiInfo, null);
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void registerWlanCallback(IGlyWlanCallback callback) {
        this.wlanCallbacks.add(callback);
    }

    @Override // com.geely.os.wlan.IGlyWlanHandler
    public void unregisterWlanCallback(IGlyWlanCallback callback) {
        this.wlanCallbacks.remove(callback);
    }
}
