package com.geely.os.bt;

import android.bluetooth.BluetoothDevice;

/* loaded from: classes.dex */
public interface IBtFirstDeviceHfpStateListener {
    void onBtDeviceHfpStateChange(int hfpState, BluetoothDevice device);
}
