package com.geely.os.wifiap;

import android.content.Context;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.binder.IConnectable;
import com.ecarx.xui.adaptapi.wifiap.IWifiAPHost;
import com.ecarx.xui.adaptapi.wifiap.IWifiApClient;
import com.ecarx.xui.adaptapi.wifiap.IWifiApClientCallback;
import com.ecarx.xui.adaptapi.wifiap.Wifi6Ap;
import com.geely.os.car.GlySupportStatus;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GlyWifi6ApImpl implements IGlyWifi6Ap {
    private IConnectable mConnectable;
    private Wifi6Ap mWifi6Ap;
    private final ArraySet<IGlyWifiApConnectWatcher> connectWatchers = new ArraySet<>();
    private final ArraySet<IGlyWifiAPFrequencyChangeCallBack> wifiAPFrequencyChangeCallBacks = new ArraySet<>();
    private final ArraySet<IGlyWifiApClientCallback> wifiApClientCallbacks = new ArraySet<>();
    private IConnectable.IConnectWatcher connectWatcher = new AnonymousClass1();
    private IWifiAPHost.IWifiAPFrequencyChangeCallBack wifiAPFrequencyChangeCallBack = new AnonymousClass2();
    private IWifiApClientCallback wifiApClientCallback = new AnonymousClass3();

    /* renamed from: com.geely.os.wifiap.GlyWifi6ApImpl$1, reason: invalid class name */
    class AnonymousClass1 implements IConnectable.IConnectWatcher {
        AnonymousClass1() {
        }

        public void onConnected() {
            GlyWifi6ApImpl.this.connectWatchers.forEach(new Consumer<IGlyWifiApConnectWatcher>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifi6ApImpl$1$D72XjVJAi_eWqCpu0-WdKvQOwh8
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiApConnectWatcher obj) {
                    obj.onConnected();
                }
            });
        }

        public void onDisConnected() {
            GlyWifi6ApImpl.this.connectWatchers.forEach(new Consumer<IGlyWifiApConnectWatcher>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifi6ApImpl$1$oYLBkC8s7rV88EaRxecrQLwDmbM
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiApConnectWatcher obj) {
                    obj.onConnected();
                }
            });
        }
    }

    /* renamed from: com.geely.os.wifiap.GlyWifi6ApImpl$2, reason: invalid class name */
    class AnonymousClass2 implements IWifiAPHost.IWifiAPFrequencyChangeCallBack {
        AnonymousClass2() {
        }

        public void onWifiAPFrequencyChange(final int i) {
            GlyWifi6ApImpl.this.wifiAPFrequencyChangeCallBacks.forEach(new Consumer<IGlyWifiAPFrequencyChangeCallBack>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifi6ApImpl$2$Rp_QDHKVhObP3n_PG4E8icfDSxM
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiAPFrequencyChangeCallBack obj) {
                    obj.onWifiAPFrequencyChange(i);
                }
            });
        }
    }

    /* renamed from: com.geely.os.wifiap.GlyWifi6ApImpl$3, reason: invalid class name */
    class AnonymousClass3 implements IWifiApClientCallback {
        AnonymousClass3() {
        }

        public void onWifiApClientChanged(List<IWifiApClient> list) {
            final ArrayList<IGlyWifiApClient> arrayList = new ArrayList<>();
            if (list != null && list.size() > 0) {
                for (final IWifiApClient iWifiApClient : list) {
                    arrayList.add(new IGlyWifiApClient() { // from class: com.geely.os.wifiap.GlyWifi6ApImpl.3.1
                        @Override // com.geely.os.wifiap.IGlyWifiApClient
                        public String getIP() {
                            return iWifiApClient.getIP();
                        }

                        @Override // com.geely.os.wifiap.IGlyWifiApClient
                        public String getMac() {
                            return iWifiApClient.getMac();
                        }

                        @Override // com.geely.os.wifiap.IGlyWifiApClient
                        public String getName() {
                            return iWifiApClient.getName();
                        }
                    });
                }
            }
            GlyWifi6ApImpl.this.wifiApClientCallbacks.forEach(new Consumer<IGlyWifiApClientCallback>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifi6ApImpl$3$96jmsvVz32uN6MbwsZ4lHJ9Y5Ds
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiApClientCallback obj) {
                    obj.onWifiApClientChanged(arrayList);
                }
            });
        }
    }

    private GlyWifi6ApImpl(Context context) {
        IConnectable iConnectableCreate = Wifi6Ap.create(context);
        this.mWifi6Ap = (Wifi6Ap) iConnectableCreate;
        if (iConnectableCreate != null && this.mConnectable == null && (iConnectableCreate instanceof IConnectable)) {
            this.mConnectable = iConnectableCreate;
        }
    }

    public static IGlyWifi6Ap create(Context context) {
        if (context != null) {
            return new GlyWifi6ApImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public void connect() {
        IConnectable iConnectable = this.mConnectable;
        if (iConnectable != null) {
            iConnectable.connect();
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public void disconnect() {
        IConnectable iConnectable = this.mConnectable;
        if (iConnectable != null) {
            iConnectable.disconnect();
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public void registerConnectWatcher(IGlyWifiApConnectWatcher watcher) {
        if (this.mConnectable != null) {
            this.connectWatchers.add(watcher);
            this.mConnectable.registerConnectWatcher(this.connectWatcher);
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public void unregisterConnectWatcher(IGlyWifiApConnectWatcher watcher) {
        IConnectable iConnectable = this.mConnectable;
        if (iConnectable != null) {
            iConnectable.unregisterConnectWatcher();
            this.connectWatchers.remove(watcher);
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public int getMaxConnections() {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null) {
            return wifi6Ap.getMaxConnections();
        }
        return 0;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public boolean getWifi6ApEnabled() {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null) {
            return wifi6Ap.getWifi6ApEnabled();
        }
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public List<IGlyWifiApClient> getWifiApClients() {
        List<IWifiApClient> wifiApClients;
        ArrayList<IGlyWifiApClient> arrayList = new ArrayList<>();
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null && (wifiApClients = wifi6Ap.getWifiApClients()) != null && !wifiApClients.isEmpty()) {
            for (final IWifiApClient iWifiApClient : wifiApClients) {
                arrayList.add(new IGlyWifiApClient() { // from class: com.geely.os.wifiap.GlyWifi6ApImpl.4
                    @Override // com.geely.os.wifiap.IGlyWifiApClient
                    public String getIP() {
                        return iWifiApClient.getIP();
                    }

                    @Override // com.geely.os.wifiap.IGlyWifiApClient
                    public String getMac() {
                        return iWifiApClient.getMac();
                    }

                    @Override // com.geely.os.wifiap.IGlyWifiApClient
                    public String getName() {
                        return iWifiApClient.getName();
                    }
                });
            }
        }
        return arrayList;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public IGlyWifiAPHost getWifiAPHost() {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap == null || wifi6Ap.getWifiAPHost() == null) {
            return null;
        }
        return new IGlyWifiAPHost() { // from class: com.geely.os.wifiap.GlyWifi6ApImpl.5
            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public int getCurrentFrequencyMode() {
                return GlyWifi6ApImpl.this.mWifi6Ap.getWifiAPHost().getCurrentFrequencyMode();
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public int[] getSupportedWifiAPFrequency() {
                return GlyWifi6ApImpl.this.mWifi6Ap.getWifiAPHost().getSupportedWifiAPFrequency();
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public void setFrequencyMode(int mode) {
                GlyWifi6ApImpl.this.mWifi6Ap.getWifiAPHost().setFrequencyMode(mode);
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public boolean registerWifiAPFrequencyCallBack(IGlyWifiAPFrequencyChangeCallBack callBack) {
                GlyWifi6ApImpl.this.wifiAPFrequencyChangeCallBacks.add(callBack);
                return GlyWifi6ApImpl.this.mWifi6Ap.getWifiAPHost().registerWifiAPFrequencyCallBack(GlyWifi6ApImpl.this.wifiAPFrequencyChangeCallBack);
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public boolean unregisterWifiAPFrequencyCallBack(IGlyWifiAPFrequencyChangeCallBack callBack) {
                GlyWifi6ApImpl.this.wifiAPFrequencyChangeCallBacks.remove(callBack);
                return GlyWifi6ApImpl.this.mWifi6Ap.getWifiAPHost().unregisterWifiAPFrequencyCallBack(GlyWifi6ApImpl.this.wifiAPFrequencyChangeCallBack);
            }
        };
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public int isWifiAPSupported() {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null) {
            return wifi6Ap.isWifiAPSupported().ordinal();
        }
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public int isWifiSupported() {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null) {
            return wifi6Ap.isWifiSupported().ordinal();
        }
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public boolean setMaxConnections(int size) {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null) {
            return wifi6Ap.setMaxConnections(size);
        }
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public boolean setWifi6ApConfiguration(String ssid, String pwd, int frenquency, int channel) {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null) {
            return wifi6Ap.setWifi6ApConfiguration(ssid, pwd, frenquency, channel);
        }
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public boolean setWifi6ApEnabled(boolean enable) {
        Wifi6Ap wifi6Ap = this.mWifi6Ap;
        if (wifi6Ap != null) {
            return wifi6Ap.setWifi6ApEnabled(enable);
        }
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public boolean setWifiApClientCallback(IGlyWifiApClientCallback callback) {
        if (this.mWifi6Ap == null) {
            return false;
        }
        this.wifiApClientCallbacks.add(callback);
        return this.mWifi6Ap.setWifiApClientCallback(this.wifiApClientCallback);
    }

    @Override // com.geely.os.wifiap.IGlyWifi6Ap
    public boolean unsetWifiApClientCallback(IGlyWifiApClientCallback callback) {
        if (this.mWifi6Ap == null) {
            return false;
        }
        this.wifiApClientCallbacks.remove(callback);
        return this.mWifi6Ap.unsetWifiApClientCallback(this.wifiApClientCallback);
    }
}