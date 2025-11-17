package com.geely.os.bt;

import android.content.Context;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public interface IGlyBTHandler {
    public static final int SCAN_DURATION = 30000;

    public interface IGlyBTCallback {
        void onBTBondStatusChanged(GlyBluetoothDevice bluetoothDevice, int bondState);

        void onBTConnectStatusChanged(GlyBluetoothDevice bluetoothDevice, int connectState);

        void onBTDeviceFound(GlyBluetoothDevice bluetoothDevice);

        void onBTNameChanged();

        void onBTStateChanged(int state);

        void onProfileConnectStatusChanged(GlyBluetoothDevice bluetoothDevice, int connectStatus, int profile);

        void onScanFinished();

        void onScanStart();
    }

    boolean getBTDiscoverable();

    String getBTName();

    List<GlyBluetoothDevice> getBondedDevices();

    int getMaxA2DPDeviceNum();

    int getMaxHFPDeviceNum();

    void init();

    boolean isBTFuncSupported();

    boolean isBlueToothOpen();

    void registerBTCallback(IGlyBTCallback callback);

    void release();

    void setBTDiscoverable(boolean discoverable);

    void setBTName(String btName);

    void setBTOnOff(boolean onOff);

    void startScan();

    void stopScan();

    void unregisterBTCallback(IGlyBTCallback callback);

    static IGlyBTHandler create(Context context) {
        return GlyBTHandlerImpl.create(context);
    }
}
