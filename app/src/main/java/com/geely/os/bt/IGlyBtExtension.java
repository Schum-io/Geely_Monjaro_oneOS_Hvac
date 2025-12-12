package com.geely.os.bt;

import java.util.List;

/* loaded from: classes.dex */
public interface IGlyBtExtension {
    boolean cancelBtDiscovery();

    boolean getA2dpAutoRejectConnStatus();

    IGlyA2dpExtension getA2dpExtension();

    int getBtState();

    String getConnectedPhoneNumber();

    int getHeadsetPower(GlyBtDevice device);

    boolean getHfpAutoRejectConnStatus();

    IGlyMultiBtPbapExtension getMultiBtPbapExtension();

    String getPSDBluetoothMacAddress();

    IGlyPbapExtension getPbapExtension();

    boolean isBLEScanEnable();

    boolean isBtDiscovering();

    boolean isBtEnabled();

    boolean registerBtCallback(IGlyBtExtensionCallback cb);

    boolean reqBtPair(String address);

    List<GlyBtDevice> reqBtPairedDevices();

    boolean reqBtUnpair(String address);

    boolean setA2dpAutoRejectConnStatus(boolean bReject);

    boolean setBLEScanEnable(boolean isEnable);

    boolean setBluetoothAutoConnect(String address, int profile, boolean enabled);

    boolean setBluetoothAutoConnect(String address, boolean enabled);

    boolean setBtEnable(boolean enable);

    boolean setHfpAutoRejectConnStatus(boolean bReject);

    boolean startBtDiscovery();

    boolean startDiscoveryOnlyClassic();

    boolean unregisterBtCallback(IGlyBtExtensionCallback cb);
}
