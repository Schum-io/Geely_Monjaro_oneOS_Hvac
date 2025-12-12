package com.geely.os.bt;

import android.content.Context;
import android.os.Bundle;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.device.Device;
import com.ecarx.xui.adaptapi.device.ext.IA2dpCallback;
import com.ecarx.xui.adaptapi.device.ext.IBtExtension;
import com.ecarx.xui.adaptapi.device.ext.IBtExtensionCallback;
import com.ecarx.xui.adaptapi.device.ext.IMultiBtPbapExtension;
import com.ecarx.xui.adaptapi.device.ext.IPbapExtension;
import com.ecarx.xui.adaptapi.device.ext.common.BtDevice;
import com.geely.os.car.GlyLog;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyBtExtensionImpl implements IGlyBtExtension {
    private IBtExtension mBtExtension;
    private final ArraySet<IGlyA2dpCallback> a2dpCallbacks = new ArraySet<>();
    private final ArraySet<IGlyMultiPbapListener> multiPbapListeners = new ArraySet<>();
    private final ArraySet<IGlyPbapListener> pbapListeners = new ArraySet<>();
    private final ArraySet<IGlyBtExtensionCallback> btExtensionCallbacks = new ArraySet<>();
    private IBtExtensionCallback btExtensionCallback = new AnonymousClass1();
    private IPbapExtension.IPbapListener pbapListener = new AnonymousClass2();
    private IA2dpCallback ia2dpCallback = new AnonymousClass3();
    private IMultiBtPbapExtension.IMultiPbapListener iMultiPbapListener = new AnonymousClass4();

    /* renamed from: com.geely.os.bt.GlyBtExtensionImpl$1, reason: invalid class name */
    class AnonymousClass1 implements IBtExtensionCallback {
        AnonymousClass1() {
        }

        public void onAdapterStateChanged(final int i, final int i1) {
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$MIwMPh0ZOMpnuXdaf8f4x8j98sU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onAdapterStateChanged(i, i1);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onAdapterStateChanged : " + i + "," + i1);
        }

        public void onDeviceFoundChanged(final int i, BtDevice btDevice) {
            final GlyBtDevice glyBtDevice = new GlyBtDevice();
            if (btDevice != null) {
                glyBtDevice.setAddress(btDevice.getAddress());
                glyBtDevice.setCategory(btDevice.getCategory());
                glyBtDevice.setBondState(btDevice.getBondState());
                glyBtDevice.setName(btDevice.getName());
                glyBtDevice.setConnectState(btDevice.getConnectState());
                glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
            }
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$JMVzx1-RGXzCtGNGwe1EvKdmRzo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onDeviceFoundChanged(i, glyBtDevice);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onDeviceFoundChanged : " + i + "," + glyBtDevice);
        }

        public void onDeviceBondStateChanged(BtDevice btDevice, final int i, final int i1) {
            final GlyBtDevice glyBtDevice = new GlyBtDevice();
            if (btDevice != null) {
                glyBtDevice.setAddress(btDevice.getAddress());
                glyBtDevice.setCategory(btDevice.getCategory());
                glyBtDevice.setBondState(btDevice.getBondState());
                glyBtDevice.setName(btDevice.getName());
                glyBtDevice.setConnectState(btDevice.getConnectState());
                glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
            }
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$Xl7pVIEyDwIeSbMT1QGYSntg1jc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onDeviceBondStateChanged(glyBtDevice, i, i1);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onDeviceBondStateChanged : " + glyBtDevice + "," + i + "," + i1);
        }

        public void onDeviceUuidsUpdated(BtDevice btDevice) {
            final GlyBtDevice glyBtDevice = new GlyBtDevice();
            if (btDevice != null) {
                glyBtDevice.setAddress(btDevice.getAddress());
                glyBtDevice.setCategory(btDevice.getCategory());
                glyBtDevice.setBondState(btDevice.getBondState());
                glyBtDevice.setName(btDevice.getName());
                glyBtDevice.setConnectState(btDevice.getConnectState());
                glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
            }
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$X99gn3FBcWG_O3L72KkamTUoHdY
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onDeviceUuidsUpdated(glyBtDevice);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onDeviceUuidsUpdated : " + glyBtDevice);
        }

        public void onDevicePowerUpdated(BtDevice btDevice, final int i) {
            final GlyBtDevice glyBtDevice = new GlyBtDevice();
            if (btDevice != null) {
                glyBtDevice.setAddress(btDevice.getAddress());
                glyBtDevice.setCategory(btDevice.getCategory());
                glyBtDevice.setBondState(btDevice.getBondState());
                glyBtDevice.setName(btDevice.getName());
                glyBtDevice.setConnectState(btDevice.getConnectState());
                glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
            }
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$6hsxJNs4zaOv0c3c0wcQNIs8uG4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onDevicePowerUpdated(glyBtDevice, i);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onDevicePowerUpdated : " + glyBtDevice + "," + i);
        }

        public void onPairedDevicesChanged(List<BtDevice> list) {
            final ArrayList arrayList = new ArrayList();
            if (list != null && list.size() > 0) {
                for (BtDevice btDevice : list) {
                    GlyBtDevice glyBtDevice = new GlyBtDevice();
                    glyBtDevice.setAddress(btDevice.getAddress());
                    glyBtDevice.setCategory(btDevice.getCategory());
                    glyBtDevice.setBondState(btDevice.getBondState());
                    glyBtDevice.setName(btDevice.getName());
                    glyBtDevice.setConnectState(btDevice.getConnectState());
                    glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
                    arrayList.add(glyBtDevice);
                }
            }
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$HONg4A7JNCzCrsNc_6n54yzCibk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onPairedDevicesChanged(arrayList);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onPairedDevicesChanged : " + arrayList);
        }

        public void onAvrcpPlayStateUpdated(BtDevice btDevice, final int i) {
            final GlyBtDevice glyBtDevice = new GlyBtDevice();
            if (btDevice != null) {
                glyBtDevice.setAddress(btDevice.getAddress());
                glyBtDevice.setCategory(btDevice.getCategory());
                glyBtDevice.setBondState(btDevice.getBondState());
                glyBtDevice.setName(btDevice.getName());
                glyBtDevice.setConnectState(btDevice.getConnectState());
                glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
            }
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$Rg9g4hbyYY6-OIluAD78k8XuRvc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onAvrcpPlayStateUpdated(glyBtDevice, i);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onAvrcpPlayStateUpdated : " + glyBtDevice + "," + i);
        }

        public void onAvrcpPlayPosUpdated(BtDevice btDevice, final int i) {
            final GlyBtDevice glyBtDevice = new GlyBtDevice();
            if (btDevice != null) {
                glyBtDevice.setAddress(btDevice.getAddress());
                glyBtDevice.setCategory(btDevice.getCategory());
                glyBtDevice.setBondState(btDevice.getBondState());
                glyBtDevice.setName(btDevice.getName());
                glyBtDevice.setConnectState(btDevice.getConnectState());
                glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
            }
            GlyBtExtensionImpl.this.btExtensionCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$1$tIbsyMFoRLzy-Clus1KDivVybbQ
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyBtExtensionCallback) obj).onAvrcpPlayPosUpdated(glyBtDevice, i);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onAvrcpPlayPosUpdated : " + glyBtDevice + "," + i);
        }
    }

    /* renamed from: com.geely.os.bt.GlyBtExtensionImpl$2, reason: invalid class name */
    class AnonymousClass2 implements IPbapExtension.IPbapListener {
        AnonymousClass2() {
        }

        public void onSyncPhonebookStatusChanged(final int i, final int i1) {
            GlyBtExtensionImpl.this.pbapListeners.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$2$sDwHh9LCdmnBtjOWfb_NVGNQd3g
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyPbapListener) obj).onSyncPhonebookStatusChanged(i, i1);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onSyncPhonebookStatusChanged : " + i + "," + i1);
        }
    }

    /* renamed from: com.geely.os.bt.GlyBtExtensionImpl$3, reason: invalid class name */
    class AnonymousClass3 implements IA2dpCallback {
        AnonymousClass3() {
        }

        public void onA2dpServiceReady() {
            GlyBtExtensionImpl.this.a2dpCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyA2dpCallback) obj).onA2dpServiceReady();
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onA2dpServiceReady : ");
        }

        public void onA2dpStateChanged(final String s, final int i, final int i1) {
            GlyBtExtensionImpl.this.a2dpCallbacks.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$3$HfF6L9VFO5AikF-KAkLHaNeMT1o
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyA2dpCallback) obj).onA2dpStateChanged(s, i, i1);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onA2dpStateChanged : " + s + "," + i + "," + i1);
        }
    }

    /* renamed from: com.geely.os.bt.GlyBtExtensionImpl$4, reason: invalid class name */
    class AnonymousClass4 implements IMultiBtPbapExtension.IMultiPbapListener {
        AnonymousClass4() {
        }

        public void onSyncPhonebookStatusChanged(final String s, final int i, final int i1) {
            GlyBtExtensionImpl.this.multiPbapListeners.forEach(new Consumer() { // from class: com.geely.os.bt.-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyMultiPbapListener) obj).onSyncPhonebookStatusChanged(s, i, i1);
                }
            });
            GlyLog.i("OneVehicleSDK_IGlyBt", "onSyncPhonebookStatusChanged : " + s + "," + i + "," + i1);
        }
    }

    public static IGlyBtExtension create(Context context) {
        if (context != null) {
            return new GlyBtExtensionImpl(context);
        }
        return null;
    }

    private GlyBtExtensionImpl(Context context) {
        Device deviceCreate = Device.create(context);
        if (deviceCreate != null) {
            this.mBtExtension = deviceCreate.getBtExtension();
        }
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean cancelBtDiscovery() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "cancelBtDiscovery ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.cancelBtDiscovery();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean getA2dpAutoRejectConnStatus() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getA2dpAutoRejectConnStatus : ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.getA2dpAutoRejectConnStatus();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public IGlyA2dpExtension getA2dpExtension() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getA2dpExtension");
        return new IGlyA2dpExtension() { // from class: com.geely.os.bt.GlyBtExtensionImpl.5
            @Override // com.geely.os.bt.IGlyA2dpExtension
            public String getA2dpConnectedAddress() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getA2dpConnectedAddress : ");
                return (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) ? "" : GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().getA2dpConnectedAddress();
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public int getA2dpConnectionState() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getA2dpConnectionState : ");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return 0;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().getA2dpConnectionState();
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public int getA2dpThresholdVolume(String address) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getA2dpThresholdVolume address: " + address);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return 0;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().getA2dpThresholdVolume(address);
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public boolean isA2dpConnected() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "isA2dpConnected: ");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return false;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().isA2dpConnected();
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public boolean isA2dpServiceReady() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "isA2dpServiceReady: ");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return false;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().isA2dpServiceReady();
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public void muteA2dpAudio(boolean mute, String address) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "muteA2dpAudio mute: " + mute + ",address :" + address);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return;
                }
                GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().muteA2dpAudio(mute, address);
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public void pauseA2dpRender() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "pauseA2dpRender ");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return;
                }
                GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().pauseA2dpRender();
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public boolean registerA2dpCallback(IGlyA2dpCallback cb) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "registerA2dpCallback IGlyA2dpCallback：" + cb);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return false;
                }
                GlyBtExtensionImpl.this.a2dpCallbacks.add(cb);
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().registerA2dpCallback(GlyBtExtensionImpl.this.ia2dpCallback);
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public boolean reqA2dpConnect(String address) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "reqA2dpConnect address: ");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return false;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().reqA2dpConnect(address);
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public boolean reqA2dpDisconnect(String address) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "reqA2dpDisconnect address: " + address);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return false;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().reqA2dpDisconnect(address);
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public boolean setA2dpLocalVolume(int vol) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "setA2dpLocalVolume vol: " + vol);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return false;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().setA2dpLocalVolume(vol);
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public void startA2dpRender() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "startA2dpRender");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return;
                }
                GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().startA2dpRender();
            }

            @Override // com.geely.os.bt.IGlyA2dpExtension
            public boolean unregisterA2dpCallback(IGlyA2dpCallback cb) {
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension() == null) {
                    return false;
                }
                GlyBtExtensionImpl.this.a2dpCallbacks.remove(cb);
                return GlyBtExtensionImpl.this.mBtExtension.getA2dpExtension().unregisterA2dpCallback(GlyBtExtensionImpl.this.ia2dpCallback);
            }
        };
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public int getBtState() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getBtState: ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.getBtState();
        }
        return 0;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public String getConnectedPhoneNumber() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getConnectedPhoneNumber: ");
        IBtExtension iBtExtension = this.mBtExtension;
        return iBtExtension != null ? iBtExtension.getConnectedPhoneNumber() : "";
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public int getHeadsetPower(GlyBtDevice device) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getHeadsetPower GlyBtDevice: " + device);
        if (this.mBtExtension == null || device == null) {
            return 0;
        }
        BtDevice btDevice = new BtDevice();
        btDevice.setAddress(device.getAddress());
        btDevice.setBondState(device.getBondState());
        btDevice.setCategory(device.getCategory());
        btDevice.setName(device.getName());
        btDevice.setConnectState(device.getConnectState());
        btDevice.setSupportProfile(device.getSupportProfile());
        return this.mBtExtension.getHeadsetPower(btDevice);
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean getHfpAutoRejectConnStatus() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getHfpAutoRejectConnStatus ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.getHfpAutoRejectConnStatus();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public IGlyMultiBtPbapExtension getMultiBtPbapExtension() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getMultiBtPbapExtension ");
        return new IGlyMultiBtPbapExtension() { // from class: com.geely.os.bt.GlyBtExtensionImpl.6
            @Override // com.geely.os.bt.IGlyMultiBtPbapExtension
            public int getPhoneBookContactsCount(String address) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getPhoneBookContactsCount address：" + address);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension() == null) {
                    return Integer.MIN_VALUE;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension().getPhoneBookContactsCount(address);
            }

            @Override // com.geely.os.bt.IGlyMultiBtPbapExtension
            public int getSyncPhonebookStatus(String address) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getSyncPhonebookStatus address：" + address);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension() == null) {
                    return 0;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension().getSyncPhonebookStatus(address);
            }

            @Override // com.geely.os.bt.IGlyMultiBtPbapExtension
            public boolean registerMultiPbapListener(IGlyMultiPbapListener listener) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "registerMultiPbapListener IGlyMultiPbapListener：" + listener);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension() == null) {
                    return false;
                }
                GlyBtExtensionImpl.this.multiPbapListeners.add(listener);
                return GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension().registerMultiPbapListener(GlyBtExtensionImpl.this.iMultiPbapListener);
            }

            @Override // com.geely.os.bt.IGlyMultiBtPbapExtension
            public boolean syncPhonebook(String address, int type) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "syncPhonebook address：" + address + ",type:" + type);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension() == null) {
                    return false;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension().syncPhonebook(address, type);
            }

            @Override // com.geely.os.bt.IGlyMultiBtPbapExtension
            public boolean unregisterMultiPbapListener(IGlyMultiPbapListener listener) {
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension() == null) {
                    return false;
                }
                GlyBtExtensionImpl.this.multiPbapListeners.remove(listener);
                return GlyBtExtensionImpl.this.mBtExtension.getMultiBtPbapExtension().unregisterMultiPbapListener(GlyBtExtensionImpl.this.iMultiPbapListener);
            }
        };
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public IGlyPbapExtension getPbapExtension() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getPbapExtension ");
        return new IGlyPbapExtension() { // from class: com.geely.os.bt.GlyBtExtensionImpl.7
            @Override // com.geely.os.bt.IGlyPbapExtension
            public String getDecryptContactName(String address, String encryptedContactName, Bundle extArg) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getDecryptContactName :" + address + ",encryptedContactName" + encryptedContactName + ",extArg :" + extArg);
                return (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getPbapExtension() == null) ? "" : GlyBtExtensionImpl.this.mBtExtension.getPbapExtension().getDecryptContactName(address, encryptedContactName, extArg);
            }

            @Override // com.geely.os.bt.IGlyPbapExtension
            public int getPhoneBookContactsCount() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getPhoneBookContactsCount :");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getPbapExtension() == null) {
                    return Integer.MIN_VALUE;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getPbapExtension().getPhoneBookContactsCount();
            }

            @Override // com.geely.os.bt.IGlyPbapExtension
            public int getSyncPhonebookStatus() {
                GlyLog.i("OneVehicleSDK_IGlyBt", "getSyncPhonebookStatus :");
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getPbapExtension() == null) {
                    return Integer.MIN_VALUE;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getPbapExtension().getSyncPhonebookStatus();
            }

            @Override // com.geely.os.bt.IGlyPbapExtension
            public boolean registerPbapListener(IGlyPbapListener listener) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "registerPbapListener IGlyPbapListener：" + listener);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getPbapExtension() == null) {
                    return false;
                }
                GlyBtExtensionImpl.this.pbapListeners.add(listener);
                return GlyBtExtensionImpl.this.mBtExtension.getPbapExtension().registerPbapListener(GlyBtExtensionImpl.this.pbapListener);
            }

            @Override // com.geely.os.bt.IGlyPbapExtension
            public boolean syncPhonebook(int type) {
                GlyLog.i("OneVehicleSDK_IGlyBt", "syncPhonebook  type:" + type);
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getPbapExtension() == null) {
                    return false;
                }
                return GlyBtExtensionImpl.this.mBtExtension.getPbapExtension().syncPhonebook(type);
            }

            @Override // com.geely.os.bt.IGlyPbapExtension
            public boolean unregisterPbapListener(IGlyPbapListener listener) {
                if (GlyBtExtensionImpl.this.mBtExtension == null || GlyBtExtensionImpl.this.mBtExtension.getPbapExtension() == null) {
                    return false;
                }
                GlyBtExtensionImpl.this.pbapListeners.remove(listener);
                return GlyBtExtensionImpl.this.mBtExtension.getPbapExtension().unregisterPbapListener(GlyBtExtensionImpl.this.pbapListener);
            }
        };
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public String getPSDBluetoothMacAddress() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "getPSDBluetoothMacAddress  ");
        IBtExtension iBtExtension = this.mBtExtension;
        return iBtExtension != null ? iBtExtension.getPSDBluetoothMacAddress() : "";
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean isBLEScanEnable() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "isBLEScanEnable ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.isBLEScanEnable();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean isBtDiscovering() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "isBtDiscovering ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.isBtDiscovering();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean isBtEnabled() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "isBtEnabled ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.isBtEnabled();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean registerBtCallback(IGlyBtExtensionCallback cb) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "registerBtCallback IGlyBtExtensionCallback：" + cb);
        if (this.mBtExtension == null) {
            return false;
        }
        this.btExtensionCallbacks.add(cb);
        return this.mBtExtension.registerBtCallback(this.btExtensionCallback);
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean reqBtPair(String address) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "reqBtPair address:" + address);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.reqBtPair(address);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public List<GlyBtDevice> reqBtPairedDevices() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "reqBtPairedDevices ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension == null || iBtExtension.reqBtPairedDevices() == null || this.mBtExtension.reqBtPairedDevices().size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (BtDevice btDevice : this.mBtExtension.reqBtPairedDevices()) {
            GlyBtDevice glyBtDevice = new GlyBtDevice();
            glyBtDevice.setAddress(btDevice.getAddress());
            glyBtDevice.setCategory(btDevice.getCategory());
            glyBtDevice.setBondState(btDevice.getBondState());
            glyBtDevice.setName(btDevice.getName());
            glyBtDevice.setConnectState(btDevice.getConnectState());
            glyBtDevice.setSupportProfile(btDevice.getSupportProfile());
            arrayList.add(glyBtDevice);
        }
        return arrayList;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean reqBtUnpair(String address) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "reqBtUnpair address:" + address);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.reqBtUnpair(address);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean setA2dpAutoRejectConnStatus(boolean bReject) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "setA2dpAutoRejectConnStatus bReject:" + bReject);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.setA2dpAutoRejectConnStatus(bReject);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean setBLEScanEnable(boolean isEnable) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "setBLEScanEnable isEnable:" + isEnable);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.setBLEScanEnable(isEnable);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean setBluetoothAutoConnect(String address, boolean enabled) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "setBluetoothAutoConnect address:" + address + ",enabled:" + enabled);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.setBluetoothAutoConnect(address, enabled);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean setBluetoothAutoConnect(String address, int profile, boolean enabled) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "setBluetoothAutoConnect address:" + address + ",profile:" + profile + ",enabled:" + enabled);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.setBluetoothAutoConnect(address, profile, enabled);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean setBtEnable(boolean enable) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "setBtEnable enable:" + enable);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.setBtEnable(enable);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean setHfpAutoRejectConnStatus(boolean bReject) {
        GlyLog.i("OneVehicleSDK_IGlyBt", "setHfpAutoRejectConnStatus bReject:" + bReject);
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.setHfpAutoRejectConnStatus(bReject);
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean startBtDiscovery() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "startBtDiscovery ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.startBtDiscovery();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean startDiscoveryOnlyClassic() {
        GlyLog.i("OneVehicleSDK_IGlyBt", "startDiscoveryOnlyClassic ");
        IBtExtension iBtExtension = this.mBtExtension;
        if (iBtExtension != null) {
            return iBtExtension.startDiscoveryOnlyClassic();
        }
        return false;
    }

    @Override // com.geely.os.bt.IGlyBtExtension
    public boolean unregisterBtCallback(IGlyBtExtensionCallback cb) {
        if (this.mBtExtension == null) {
            return false;
        }
        this.btExtensionCallbacks.remove(cb);
        return this.mBtExtension.unregisterBtCallback(this.btExtensionCallback);
    }
}
