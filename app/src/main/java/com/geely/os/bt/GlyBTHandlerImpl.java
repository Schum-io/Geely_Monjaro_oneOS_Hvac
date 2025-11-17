package com.geely.os.bt;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import android.bluetooth.BluetoothHeadsetClient;
import android.bluetooth.BluetoothManager;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Deprecated
/* loaded from: classes.dex */
public class GlyBTHandlerImpl implements IGlyBTHandler {
    private BluetoothDevice device;
    private List<BluetoothDevice> devicesList;
    private BluetoothGattServer mBluetoothGattService;
    private BluetoothAdapter mBtAdapter;
    private final Context mContext;
    private BluetoothHeadsetClient mHeadsetClient;
    private final Map<Integer, BluetoothProfile> mProfileEnumMap;
    private final String TAG = "GlyBTHandlerImpl";
    private final Set<IGlyBTCallback> mCallbackSet = new HashSet();
    private ArraySet<IBtFirstDeviceHfpStateListener> stateListeners = new ArraySet<>();
    private final BroadcastReceiver mBTReceiver = new AnonymousClass1();
    private final BluetoothProfile.ServiceListener mBtProfileServiceListener = new BluetoothProfile.ServiceListener() { // from class: com.geely.os.bt.GlyBTHandlerImpl.2
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int profile, BluetoothProfile proxy) {
            Log.d("GlyBTHandlerImpl", "onServiceConnected: profile = " + profile);
            if (GlyBTHandlerImpl.this.mProfileEnumMap.containsKey(Integer.valueOf(profile))) {
                GlyBTHandlerImpl.this.mProfileEnumMap.put(Integer.valueOf(profile), proxy);
            }
            if (profile == 16) {
                GlyBTHandlerImpl.this.mHeadsetClient = (BluetoothHeadsetClient) proxy;
                try {
                    GlyBTHandlerImpl glyBTHandlerImpl = GlyBTHandlerImpl.this;
                    glyBTHandlerImpl.devicesList = glyBTHandlerImpl.mHeadsetClient.getConnectedDevices();
                    Log.d("GlyBTHandlerImpl", "hfp list size:" + GlyBTHandlerImpl.this.devicesList.size() + "");
                    int connectionState = 0;
                    if (GlyBTHandlerImpl.this.devicesList.size() > 0) {
                        Log.d("GlyBTHandlerImpl", "get getConnectedDevices size is not 0");
                        GlyBTHandlerImpl glyBTHandlerImpl2 = GlyBTHandlerImpl.this;
                        glyBTHandlerImpl2.device = (BluetoothDevice) glyBTHandlerImpl2.devicesList.get(0);
                        connectionState = GlyBTHandlerImpl.this.mHeadsetClient.getConnectionState(GlyBTHandlerImpl.this.device);
                    } else {
                        Log.d("GlyBTHandlerImpl", "get getConnectedDevices size is 0");
                        GlyBTHandlerImpl.this.device = null;
                    }
                    GlyBTHandlerImpl glyBTHandlerImpl3 = GlyBTHandlerImpl.this;
                    glyBTHandlerImpl3.handleOnHfpStateChange(connectionState, glyBTHandlerImpl3.device);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int profile) {
            Log.d("GlyBTHandlerImpl", "onServiceDisconnected: profile = " + profile);
            if (GlyBTHandlerImpl.this.mProfileEnumMap.containsKey(Integer.valueOf(profile))) {
                GlyBTHandlerImpl.this.mProfileEnumMap.put(Integer.valueOf(profile), null);
            }
            if (profile == 16) {
                GlyBTHandlerImpl.this.device = null;
                GlyBTHandlerImpl.this.devicesList = null;
                GlyBTHandlerImpl.this.mHeadsetClient = null;
            }
        }
    };

    @Override // com.geely.os.bt.IGlyBTHandler
    public int getMaxA2DPDeviceNum() {
        return 1;
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public int getMaxHFPDeviceNum() {
        return 2;
    }

    /* renamed from: com.geely.os.bt.GlyBTHandlerImpl$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            String action = intent.getAction();
            Log.d("GlyBTHandlerImpl", "GlyBTHandlerImpl onReceive : " + action);
            if (action == null) return;
            switch (action) {
                case "android.bluetooth.adapter.action.DISCOVERY_FINISHED":
                    GlyBTHandlerImpl.this.mCallbackSet.forEach(IGlyBTCallback::onScanFinished);
                    break;
                case "android.bluetooth.adapter.action.STATE_CHANGED":
                    final int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10);
                    GlyBTHandlerImpl.this.mCallbackSet.forEach(callback -> callback.onBTStateChanged(intExtra));
                    break;
                case "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED":
                    onBTProfileConnectStateChanged(intent, 17);
                    break;
                case "android.bluetooth.adapter.action.DISCOVERY_STARTED":
                    GlyBTHandlerImpl.this.mCallbackSet.forEach(IGlyBTCallback::onScanStart);
                    break;
                case "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED":
                    onBTProfileConnectStateChanged(intent, 11);
                    break;
                case "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED":
                    onBTProfileConnectStateChanged(intent, 16);
                    if (GlyBTHandlerImpl.this.mBtAdapter != null) {
                        GlyBTHandlerImpl.this.mBtAdapter.getProfileProxy(GlyBTHandlerImpl.this.mContext, GlyBTHandlerImpl.this.mBtProfileServiceListener, 16);
                        break;
                    }
                    break;
                case "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED":
                    onBTProfileConnectStateChanged(intent, 18);
                    break;
                case "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED":
                    final int intExtra2 = intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", 0);
                    final BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    if (bluetoothDevice != null && !TextUtils.isEmpty(bluetoothDevice.getName())) {
                        GlyBTHandlerImpl.this.mCallbackSet.forEach(callback -> callback.onBTConnectStatusChanged(GlyBTHandlerImpl.this.createBlueDevice(bluetoothDevice), intExtra2));
                        break;
                    }
                    break;
                case "android.bluetooth.device.action.FOUND":
                    final BluetoothDevice bluetoothDevice2 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    if (bluetoothDevice2 != null && !TextUtils.isEmpty(bluetoothDevice2.getName())) {
                        GlyBTHandlerImpl.this.mCallbackSet.forEach(callback -> callback.onBTDeviceFound(GlyBTHandlerImpl.this.createBlueDevice(bluetoothDevice2)));
                        break;
                    }
                    break;
                case "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED":
                    onBTProfileConnectStateChanged(intent, 2);
                    break;
                case "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED":
                    GlyBTHandlerImpl.this.mCallbackSet.forEach(IGlyBTCallback::onBTNameChanged);
                    break;
                case "android.bluetooth.device.action.BOND_STATE_CHANGED":
                    final int intExtra3 = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", 10);
                    final BluetoothDevice bluetoothDevice3 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                    if (bluetoothDevice3 != null && !TextUtils.isEmpty(bluetoothDevice3.getName())) {
                        GlyBTHandlerImpl.this.mCallbackSet.forEach(callback -> callback.onBTBondStatusChanged(GlyBTHandlerImpl.this.createBlueDevice(bluetoothDevice3), intExtra3));
                        break;
                    }
                    break;
            }
        }

        private void onBTProfileConnectStateChanged(Intent intent, final int profile) {
            final int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 3);
            final BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if (bluetoothDevice == null || TextUtils.isEmpty(bluetoothDevice.getName())) {
                return;
            }
            GlyBTHandlerImpl.this.mCallbackSet.forEach(callback -> callback.onProfileConnectStatusChanged(GlyBTHandlerImpl.this.createBlueDevice(bluetoothDevice), intExtra, profile));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnHfpStateChange(int hfpState, BluetoothDevice device) {
        ArraySet<IBtFirstDeviceHfpStateListener> arraySet;
        Log.d("GlyBTHandlerImpl", "handleOnHfpStateChange hfpState  = " + hfpState + ", device = " + device);
        if (this.stateListeners != null) {
            synchronized (this) {
                arraySet = new ArraySet<>(this.stateListeners);
            }
            if (arraySet.isEmpty()) {
                return;
            }
            Iterator<IBtFirstDeviceHfpStateListener> it = arraySet.iterator();
            while (it.hasNext()) {
                it.next().onBtDeviceHfpStateChange(hfpState, device);
            }
        }
    }

    public GlyBTHandlerImpl(Context context) {
        this.mContext = context;
        HashMap<Integer, BluetoothProfile> map = new HashMap<>(3);
        this.mProfileEnumMap = map;
        map.put(2, null);
        map.put(11, null);
        map.put(16, null);
        map.put(17, null);
        map.put(18, null);
        BluetoothManager bluetoothManager = (BluetoothManager) context.getSystemService("bluetooth");
        if (bluetoothManager != null) {
            this.mBluetoothGattService = bluetoothManager.openGattServer(context, new BluetoothGattServerCallback() { // from class: com.geely.os.bt.GlyBTHandlerImpl.3
                @Override // android.bluetooth.BluetoothGattServerCallback
                public void onConnectionStateChange(BluetoothDevice device, int status, int newState) {
                    Log.d("GlyBTHandlerImpl", "onConnectionStateChange: device = " + device.getName() + ", status = " + status + ", newState = " + newState);
                    if (newState == 2) {
                        GlyBTHandlerImpl.this.mBluetoothGattService.connect(device, false);
                    }
                    super.onConnectionStateChange(device, status, newState);
                }
            });
        }
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void init() {
        Log.d("GlyBTHandlerImpl", "init");
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        this.mBtAdapter = defaultAdapter;
        if (defaultAdapter == null) {
            Log.i("GlyBTHandlerImpl", "getDefaultAdapter is null");
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.LOCAL_NAME_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        intentFilter.addAction("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED");
        this.mContext.registerReceiver(this.mBTReceiver, intentFilter);
        Iterator<Integer> it = this.mProfileEnumMap.keySet().iterator();
        while (it.hasNext()) {
            this.mBtAdapter.getProfileProxy(this.mContext, this.mBtProfileServiceListener, it.next().intValue());
        }
    }

    public static IGlyBTHandler create(Context context) {
        if (context != null) {
            return new GlyBTHandlerImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void release() {
        Log.d("GlyBTHandlerImpl", "release");
        if (this.mBtAdapter != null) {
            this.mContext.unregisterReceiver(this.mBTReceiver);
            if (this.mBtAdapter.isDiscovering()) {
                this.mBtAdapter.cancelDiscovery();
            }
            for (Map.Entry<Integer, BluetoothProfile> entry : this.mProfileEnumMap.entrySet()) {
                if (entry.getValue() != null) {
                    this.mBtAdapter.closeProfileProxy(entry.getKey().intValue(), entry.getValue());
                }
            }
        }
        this.mCallbackSet.clear();
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public boolean isBTFuncSupported() {
        return this.mBtAdapter != null;
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public boolean isBlueToothOpen() {
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        return bluetoothAdapter != null && bluetoothAdapter.isEnabled();
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void setBTDiscoverable(boolean discoverable) {
        Log.d("GlyBTHandlerImpl", "setBTDiscoverable : discoverable = " + discoverable);
        if (this.mBtAdapter != null) {
            try {
                if (discoverable) {
                    setDiscoverableTimeout(GlyBtDef.BT_STATE_OFF);
                    setScanMode(23);
                } else {
                    setDiscoverableTimeout(1);
                    setScanMode(21);
                }
            } catch (Exception e) {
                Log.e("GlyBTHandlerImpl", "setBTDiscoverable error", e);
            }
        }
    }

    private void setScanMode(int mode) {
        try {
            Method method = BluetoothAdapter.class.getMethod("setScanMode", Integer.TYPE);
            method.setAccessible(true);
            method.invoke(this.mBtAdapter, Integer.valueOf(mode));
        } catch (Exception e) {
            Log.e("GlyBTHandlerImpl", "setScanMode error", e);
        }
    }

    private void setDiscoverableTimeout(int timeout) {
        try {
            Method method = BluetoothAdapter.class.getMethod("setDiscoverableTimeout", Integer.TYPE);
            method.setAccessible(true);
            method.invoke(this.mBtAdapter, Integer.valueOf(timeout));
        } catch (Exception e) {
            Log.e("GlyBTHandlerImpl", "setDiscoverableTimeout error", e);
        }
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public boolean getBTDiscoverable() {
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        return bluetoothAdapter != null && bluetoothAdapter.getScanMode() == 23;
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public List<GlyBluetoothDevice> getBondedDevices() {
        Set<BluetoothDevice> bondedDevices;
        ArrayList arrayList = new ArrayList();
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        if (bluetoothAdapter != null && (bondedDevices = bluetoothAdapter.getBondedDevices()) != null && bondedDevices.size() > 0) {
            Iterator<BluetoothDevice> it = bondedDevices.iterator();
            while (it.hasNext()) {
                GlyBluetoothDevice glyBluetoothDeviceCreateBlueDevice = createBlueDevice(it.next());
                if (glyBluetoothDeviceCreateBlueDevice.isValidDevice()) {
                    arrayList.add(glyBluetoothDeviceCreateBlueDevice);
                }
            }
        }
        return arrayList;
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public String getBTName() {
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        return bluetoothAdapter == null ? "" : bluetoothAdapter.getName();
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void setBTName(String btName) {
        Log.d("GlyBTHandlerImpl", "setBTName : " + btName);
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        if (bluetoothAdapter != null) {
            bluetoothAdapter.setName(btName);
        }
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void setBTOnOff(boolean onOff) {
        Log.d("GlyBTHandlerImpl", "setBTOnOff : " + onOff);
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        if (bluetoothAdapter != null) {
            if (onOff && !bluetoothAdapter.isEnabled()) {
                this.mBtAdapter.enable();
            } else {
                if (onOff || !this.mBtAdapter.isEnabled()) {
                    return;
                }
                this.mBtAdapter.disable();
            }
        }
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void startScan() {
        Log.d("GlyBTHandlerImpl", "startScan");
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        if (bluetoothAdapter == null || bluetoothAdapter.isDiscovering()) {
            return;
        }
        this.mBtAdapter.startDiscovery();
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void stopScan() {
        Log.d("GlyBTHandlerImpl", "stopScan");
        BluetoothAdapter bluetoothAdapter = this.mBtAdapter;
        if (bluetoothAdapter == null || !bluetoothAdapter.isDiscovering()) {
            return;
        }
        this.mBtAdapter.cancelDiscovery();
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void registerBTCallback(IGlyBTCallback callback) {
        if (callback != null) {
            this.mCallbackSet.add(callback);
        }
    }

    @Override // com.geely.os.bt.IGlyBTHandler
    public void unregisterBTCallback(IGlyBTCallback callback) {
        this.mCallbackSet.remove(callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GlyBluetoothDevice createBlueDevice(BluetoothDevice device) {
        GlyBluetoothDevice glyBluetoothDevice = new GlyBluetoothDevice(device);
        glyBluetoothDevice.setBluetoothGattService(this.mBluetoothGattService);
        HashMap map = new HashMap();
        if (glyBluetoothDevice.isPhoneDevice()) {
            map.put(16, this.mProfileEnumMap.get(16));
            map.put(17, this.mProfileEnumMap.get(17));
            map.put(18, this.mProfileEnumMap.get(18));
            map.put(11, this.mProfileEnumMap.get(11));
        } else {
            map.put(2, this.mProfileEnumMap.get(11));
        }
        glyBluetoothDevice.setProfileEnumMap(map);
        return glyBluetoothDevice;
    }

    public List<BluetoothDevice> getConnectedDevice() {
        Log.d("GlyBTHandlerImpl", "devicesList = " + this.devicesList);
        return this.devicesList;
    }

    public BluetoothDevice getFirstConnectedDevice() {
        Log.d("GlyBTHandlerImpl", "device = " + this.device);
        return this.device;
    }

    public int getFirstDeviceHfpState() {
        BluetoothDevice bluetoothDevice;
        BluetoothHeadsetClient bluetoothHeadsetClient = this.mHeadsetClient;
        if (bluetoothHeadsetClient == null || (bluetoothDevice = this.device) == null) {
            return 0;
        }
        int connectionState = bluetoothHeadsetClient.getConnectionState(bluetoothDevice);
        Log.d("GlyBTHandlerImpl", "hfpState = " + connectionState);
        return connectionState;
    }

    public void registerBtFirstDeviceHfpStateListener(IBtFirstDeviceHfpStateListener btFirstDeviceHfpStateListener) {
        this.stateListeners.add(btFirstDeviceHfpStateListener);
    }

    public void unregisterBtFirstDeviceHfpStateListener(IBtFirstDeviceHfpStateListener btFirstDeviceHfpStateListener) {
        this.stateListeners.remove(btFirstDeviceHfpStateListener);
    }
}
