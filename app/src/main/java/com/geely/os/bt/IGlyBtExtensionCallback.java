package com.geely.os.bt;

import java.util.List;

/* loaded from: classes.dex */
public interface IGlyBtExtensionCallback {
    void onAdapterStateChanged(int prevState, int newState);

    void onAvrcpPlayPosUpdated(GlyBtDevice device, int playPos);

    void onAvrcpPlayStateUpdated(GlyBtDevice device, int playState);

    void onDeviceBondStateChanged(GlyBtDevice device, int prevState, int newState);

    void onDeviceFoundChanged(int scanState, GlyBtDevice device);

    void onDevicePowerUpdated(GlyBtDevice device, int value);

    void onDeviceUuidsUpdated(GlyBtDevice device);

    void onPairedDevicesChanged(List<GlyBtDevice> allPairedDevice);
}
