package com.geely.os.wifiap;

import android.content.Context;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.binder.IConnectable;
import com.ecarx.xui.adaptapi.wifiap.IWifiAPHost;
import com.ecarx.xui.adaptapi.wifiap.IWifiApClient;
import com.ecarx.xui.adaptapi.wifiap.IWifiApClientCallback;
import com.ecarx.xui.adaptapi.wifiap.WifiAp;
import com.geely.os.car.GlySupportStatus;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GlyWifiApImpl implements IGlyWifiAp {
    private IConnectable mConnectable;
    private WifiAp mWifiAp;
    private final ArraySet<IGlyWifiApConnectWatcher> connectWatchers = new ArraySet<>();
    private final ArraySet<IGlyWifiAPFrequencyChangeCallBack> wifiAPFrequencyChangeCallBacks = new ArraySet<>();
    private final ArraySet<IGlyWifiApClientCallback> wifiApClientCallbacks = new ArraySet<>();
    private IConnectable.IConnectWatcher connectWatcher = new AnonymousClass1();
    private IWifiAPHost.IWifiAPFrequencyChangeCallBack wifiAPFrequencyChangeCallBack = new AnonymousClass2();
    private IWifiApClientCallback wifiApClientCallback = new AnonymousClass3();

    /* renamed from: com.geely.os.wifiap.GlyWifiApImpl$1, reason: invalid class name */
    class AnonymousClass1 implements IConnectable.IConnectWatcher {
        AnonymousClass1() {
        }

        public void onConnected() {
            GlyWifiApImpl.this.connectWatchers.forEach(new Consumer<IGlyWifiApConnectWatcher>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifiApImpl$1$j5BIYtkkQzsO_9speVTvtcYBj7s
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiApConnectWatcher obj) {
                    obj.onConnected();
                }
            });
        }

        public void onDisConnected() {
            GlyWifiApImpl.this.connectWatchers.forEach(new Consumer<IGlyWifiApConnectWatcher>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifiApImpl$1$7cVp5cJbUf12U_Cnm76ZazBOU58
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiApConnectWatcher obj) {
                    obj.onConnected();
                }
            });
        }
    }

    /* renamed from: com.geely.os.wifiap.GlyWifiApImpl$2, reason: invalid class name */
    class AnonymousClass2 implements IWifiAPHost.IWifiAPFrequencyChangeCallBack {
        AnonymousClass2() {
        }

        public void onWifiAPFrequencyChange(final int i) {
            GlyWifiApImpl.this.wifiAPFrequencyChangeCallBacks.forEach(new Consumer<IGlyWifiAPFrequencyChangeCallBack>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifiApImpl$2$0y7TBMbpxvpb-_hzyemdM2cT090
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiAPFrequencyChangeCallBack obj) {
                    obj.onWifiAPFrequencyChange(i);
                }
            });
        }
    }

    /* renamed from: com.geely.os.wifiap.GlyWifiApImpl$3, reason: invalid class name */
    class AnonymousClass3 implements IWifiApClientCallback {
        AnonymousClass3() {
        }

        public void onWifiApClientChanged(List<IWifiApClient> list) {
            final ArrayList<IGlyWifiApClient> arrayList = new ArrayList<>();
            if (list != null && list.size() > 0) {
                for (final IWifiApClient iWifiApClient : list) {
                    arrayList.add(new IGlyWifiApClient() { // from class: com.geely.os.wifiap.GlyWifiApImpl.3.1
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
            GlyWifiApImpl.this.wifiApClientCallbacks.forEach(new Consumer<IGlyWifiApClientCallback>() { // from class: com.geely.os.wifiap.-$$Lambda$GlyWifiApImpl$3$AnNk7L7Udj0xG3j_rH_hb_O6HSE
                @Override // java.util.function.Consumer
                public final void accept(IGlyWifiApClientCallback obj) {
                    obj.onWifiApClientChanged(arrayList);
                }
            });
        }
    }

    private GlyWifiApImpl(Context context) {
        IConnectable iConnectableCreate = WifiAp.create(context);
        this.mWifiAp = (WifiAp) iConnectableCreate;
        if (iConnectableCreate != null && this.mConnectable == null && (iConnectableCreate instanceof IConnectable)) {
            this.mConnectable = iConnectableCreate;
        }
    }

    public static IGlyWifiAp create(Context context) {
        if (context != null) {
            return new GlyWifiApImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public void connect() {
        IConnectable iConnectable = this.mConnectable;
        if (iConnectable != null) {
            iConnectable.connect();
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public void disconnect() {
        IConnectable iConnectable = this.mConnectable;
        if (iConnectable != null) {
            iConnectable.disconnect();
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public void registerConnectWatcher(IGlyWifiApConnectWatcher watcher) {
        if (this.mConnectable != null) {
            this.connectWatchers.add(watcher);
            this.mConnectable.registerConnectWatcher(this.connectWatcher);
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public void unregisterConnectWatcher(IGlyWifiApConnectWatcher watcher) {
        IConnectable iConnectable = this.mConnectable;
        if (iConnectable != null) {
            iConnectable.unregisterConnectWatcher();
            this.connectWatchers.remove(watcher);
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public int getMaxConnections() {
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp != null) {
            return wifiAp.getMaxConnections();
        }
        return 0;
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public List<IGlyWifiApClient> getWifiApClients() {
        List<IWifiApClient> wifiApClients;
        ArrayList<IGlyWifiApClient> arrayList = new ArrayList<>();
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp != null && (wifiApClients = wifiAp.getWifiApClients()) != null && !wifiApClients.isEmpty()) {
            for (final IWifiApClient iWifiApClient : wifiApClients) {
                arrayList.add(new IGlyWifiApClient() { // from class: com.geely.os.wifiap.GlyWifiApImpl.4
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

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public IGlyWifiAPHost getWifiAPHost() {
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp == null || wifiAp.getWifiAPHost() == null) {
            return null;
        }
        return new IGlyWifiAPHost() { // from class: com.geely.os.wifiap.GlyWifiApImpl.5
            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public int getCurrentFrequencyMode() {
                return GlyWifiApImpl.this.mWifiAp.getWifiAPHost().getCurrentFrequencyMode();
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public int[] getSupportedWifiAPFrequency() {
                return GlyWifiApImpl.this.mWifiAp.getWifiAPHost().getSupportedWifiAPFrequency();
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public void setFrequencyMode(int mode) {
                GlyWifiApImpl.this.mWifiAp.getWifiAPHost().setFrequencyMode(mode);
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public boolean registerWifiAPFrequencyCallBack(IGlyWifiAPFrequencyChangeCallBack callBack) {
                GlyWifiApImpl.this.wifiAPFrequencyChangeCallBacks.add(callBack);
                return GlyWifiApImpl.this.mWifiAp.getWifiAPHost().registerWifiAPFrequencyCallBack(GlyWifiApImpl.this.wifiAPFrequencyChangeCallBack);
            }

            @Override // com.geely.os.wifiap.IGlyWifiAPHost
            public boolean unregisterWifiAPFrequencyCallBack(IGlyWifiAPFrequencyChangeCallBack callBack) {
                GlyWifiApImpl.this.wifiAPFrequencyChangeCallBacks.remove(callBack);
                return GlyWifiApImpl.this.mWifiAp.getWifiAPHost().unregisterWifiAPFrequencyCallBack(GlyWifiApImpl.this.wifiAPFrequencyChangeCallBack);
            }
        };
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public int isWifiAPSupported() {
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp != null && wifiAp.isWifiAPSupported() != null) {
            return this.mWifiAp.isWifiAPSupported().ordinal();
        }
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public int isWifi5GModeSupported() {
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public int isWifiSupported() {
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp != null && wifiAp.isWifiSupported() != null) {
            return this.mWifiAp.isWifiSupported().ordinal();
        }
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public boolean query5GMode() {
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp != null) {
            return wifiAp.query5GMode();
        }
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public void set5GMode(boolean enable) {
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp != null) {
            wifiAp.set5GMode(enable);
        }
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public boolean setMaxConnections(int size) {
        WifiAp wifiAp = this.mWifiAp;
        if (wifiAp != null) {
            return wifiAp.setMaxConnections(size);
        }
        return false;
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public boolean setWifiApClientCallback(IGlyWifiApClientCallback callback) {
        if (this.mWifiAp == null) {
            return false;
        }
        this.wifiApClientCallbacks.add(callback);
        return this.mWifiAp.setWifiApClientCallback(this.wifiApClientCallback);
    }

    @Override // com.geely.os.wifiap.IGlyWifiAp
    public boolean unsetWifiApClientCallback(IGlyWifiApClientCallback callback) {
        if (this.mWifiAp == null) {
            return false;
        }
        this.wifiApClientCallbacks.remove(callback);
        return this.mWifiAp.unsetWifiApClientCallback(this.wifiApClientCallback);
    }
}
