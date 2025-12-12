package com.geely.os.wifiap;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.FunctionStatus;
import com.ecarx.xui.adaptapi.wifiap.ExternalApStateListener;
import com.ecarx.xui.adaptapi.wifiap.ExternalWifiAP;
import com.geely.os.car.GlyLog;
import com.geely.os.wifiap.IGlyApHandler;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GlyApHandlerImpl implements IGlyApHandler {
    private ExternalWifiAP mExternalWifiAP;
    private final ArraySet<OnApClientDeviceChanged> mCallbackSet = new ArraySet<>();
    private ExternalApStateListener externalApStateListener = new AnonymousClass1();

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void addToBlacklist(GlyApClient client) {
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public List<GlyApClient> getBlacklist() {
        return null;
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public int getMaxConnectCount() {
        return 5;
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public List<GlyApClient> getWifiApClients() {
        return null;
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void init() {
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public boolean isDualBandSupported() {
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void removeFromBlackList(GlyApClient client) {
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void setWifiApHost(GlyApHost host) {
    }

    /* renamed from: com.geely.os.wifiap.GlyApHandlerImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ExternalApStateListener {
        AnonymousClass1() {
        }

        public void onApStateChanged(final int state) {
            GlyLog.i("OneVehicleSDK_GlyApHandlerImpl", "state = " + state);
            GlyApHandlerImpl.this.mCallbackSet.forEach(new Consumer() { // from class: com.geely.os.wifiap.-$$Lambda$GlyApHandlerImpl$1$3dRqwdBgloq0soF_RNyBEu7nBZs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((OnApClientDeviceChanged) obj).onApStateChanged(state);
                }
            });
        }
    }

    public GlyApHandlerImpl(Context context) {
        ExternalWifiAP externalWifiAPCreate = ExternalWifiAP.create(context);
        this.mExternalWifiAP = externalWifiAPCreate;
        externalWifiAPCreate.registerApStateChangeListener(this.externalApStateListener);
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void release() {
        GlyLog.d("OneVehicleSDK_GlyApHandlerImpl", "release");
        this.mCallbackSet.clear();
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public boolean isWifiApSupport() {
        if (this.mExternalWifiAP == null) {
            return false;
        }
        GlyLog.i("OneVehicleSDK_GlyApHandlerImpl", "isWifiApSupport =" + this.mExternalWifiAP.isWifiAPSupported().ordinal());
        return this.mExternalWifiAP.isWifiAPSupported() == FunctionStatus.active;
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public boolean isWifiApOpen() {
        ExternalWifiAP externalWifiAP = this.mExternalWifiAP;
        if (externalWifiAP != null) {
            return externalWifiAP.isWifiApEnabled();
        }
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void enableWifiAp() {
        GlyLog.i("OneVehicleSDK_GlyApHandlerImpl", "enableWifiAp ");
        if (this.mExternalWifiAP != null) {
            GlyLog.i("OneVehicleSDK_GlyApHandlerImpl", "startSoftAp(" + this.mExternalWifiAP.getWifiApConfiguration() + ")");
            ExternalWifiAP externalWifiAP = this.mExternalWifiAP;
            GlyLog.i("OneVehicleSDK_GlyApHandlerImpl", "startSoftAp  result = " + externalWifiAP.startSoftAp(externalWifiAP.getWifiApConfiguration()));
        }
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void disableWifiAp() {
        GlyLog.d("OneVehicleSDK_GlyApHandlerImpl", "disableWifiAp");
        ExternalWifiAP externalWifiAP = this.mExternalWifiAP;
        if (externalWifiAP != null) {
            GlyLog.i("OneVehicleSDK_GlyApHandlerImpl", "stopSoftAp  result = " + externalWifiAP.stopSoftAp());
        }
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public GlyApHost getWifiApHost() {
        GlyLog.d("OneVehicleSDK_GlyApHandlerImpl", "getWifiApHost");
        GlyApHost glyApHost = new GlyApHost("G636", IGlyApHandler.AP_DEFAULT_PSW);
        WifiConfiguration wifiApConfiguration = this.mExternalWifiAP.getWifiApConfiguration();
        glyApHost.setApName(wifiApConfiguration.SSID);
        glyApHost.setPassword(wifiApConfiguration.preSharedKey);
        glyApHost.setFrequency(wifiApConfiguration.priority);
        return glyApHost;
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void registerApCallback(OnApClientDeviceChanged callback) {
        if (callback != null) {
            this.mCallbackSet.add(callback);
        }
    }

    @Override // com.geely.os.wifiap.IGlyApHandler
    public void unregisterApCallback(OnApClientDeviceChanged callback) {
        this.mCallbackSet.remove(callback);
    }
}
