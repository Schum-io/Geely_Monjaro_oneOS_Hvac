package com.ecarx.xui.adaptapi.device.ext;

import com.ecarx.xui.adaptapi.device.ext.common.BtDevice;
import java.util.List;

public interface IBtExtension {
    boolean cancelBtDiscovery();
    boolean getA2dpAutoRejectConnStatus();
    IA2dpExtension getA2dpExtension();
    int getBtState();
    String getConnectedPhoneNumber();
    int getHeadsetPower(BtDevice device);
    boolean getHfpAutoRejectConnStatus();
    IMultiBtPbapExtension getMultiBtPbapExtension();
    IPbapExtension getPbapExtension();
    String getPSDBluetoothMacAddress();
    boolean isBLEScanEnable();
    boolean isBtDiscovering();
    boolean isBtEnabled();
    boolean registerBtCallback(IBtExtensionCallback cb);
    boolean reqBtPair(String address);
    List<BtDevice> reqBtPairedDevices();
    boolean reqBtUnpair(String address);
    boolean setA2dpAutoRejectConnStatus(boolean bReject);
    boolean setBLEScanEnable(boolean isEnable);
    boolean setBluetoothAutoConnect(String address, boolean enabled);
    boolean setBluetoothAutoConnect(String address, int profile, boolean enabled);
    boolean setBtEnable(boolean enable);
    boolean setHfpAutoRejectConnStatus(boolean bReject);
    boolean startBtDiscovery();
    boolean startDiscoveryOnlyClassic();
    boolean unregisterBtCallback(IBtExtensionCallback cb);
}