package com.ecarx.xui.adaptapi.device.ext;

import com.ecarx.xui.adaptapi.device.ext.common.BtDevice;
import java.util.List;

public interface IBtExtensionCallback {
    void onAdapterStateChanged(int i, int i1);
    void onDeviceFoundChanged(int i, BtDevice btDevice);
    void onDeviceBondStateChanged(BtDevice btDevice, int i, int i1);
    void onDeviceUuidsUpdated(BtDevice btDevice);
    void onDevicePowerUpdated(BtDevice btDevice, int i);
    void onPairedDevicesChanged(List<BtDevice> list);
    void onAvrcpPlayStateUpdated(BtDevice btDevice, int i);
    void onAvrcpPlayPosUpdated(BtDevice btDevice, int i);
}