package com.geely.os.bt;

import android.bluetooth.BluetoothA2dp;
import android.bluetooth.BluetoothA2dpSink;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothHeadsetClient;
import android.bluetooth.BluetoothMapClient;
import android.bluetooth.BluetoothPbapClient;
import android.bluetooth.BluetoothProfile;
import com.geely.os.car.GlyLog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Deprecated
/* loaded from: classes.dex */
public class GlyBluetoothDevice implements Comparable<GlyBluetoothDevice> {
    public static final int A2DP = 2;
    public static final int A2DP_SINK = 11;
    public static final int HEADSET_CLIENT = 16;
    public static final int MAP_CLIENT = 18;
    public static final int PBAP_CLIENT = 17;
    private static final int PRIORITY_OFF = 0;
    private static final int PRIORITY_ON = 100;
    private BluetoothGattServer mBluetoothGattService;
    private final BluetoothDevice mDevice;
    private final Map<Integer, BluetoothProfile> mProfileEnumMap = new HashMap();

    @Retention(RetentionPolicy.SOURCE)
    public @interface GlyBluetoothPriority {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface GlyBluetoothProfile {
    }

    public GlyBluetoothDevice(BluetoothDevice device) {
        this.mDevice = device;
    }

    public void setBluetoothGattService(BluetoothGattServer service) {
        this.mBluetoothGattService = service;
    }

    public void setProfileEnumMap(Map<Integer, BluetoothProfile> profileMap) {
        this.mProfileEnumMap.clear();
        if (profileMap == null || profileMap.size() <= 0) {
            return;
        }
        this.mProfileEnumMap.putAll(profileMap);
    }

    public BluetoothDevice getBTDevice() {
        return this.mDevice;
    }

    public String getName() {
        return this.mDevice.getName();
    }

    public String getAddress() {
        return this.mDevice.getAddress();
    }

    public int getBondState() {
        return this.mDevice.getBondState();
    }

    public boolean isConnected() {
        try {
            return ((Boolean) BluetoothDevice.class.getDeclaredMethod("isConnected", new Class[0]).invoke(this.mDevice, new Object[0])).booleanValue();
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlyBluetoothDevice", "isConnected error : " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }

    public int getConnectState() {
        Iterator<Integer> it = this.mProfileEnumMap.keySet().iterator();
        int iMax = 0;
        while (it.hasNext()) {
            iMax = Math.max(iMax, getProfileConnectStatus(it.next().intValue()));
        }
        return iMax;
    }

    public int getDeviceClass() {
        BluetoothClass bluetoothClass = this.mDevice.getBluetoothClass();
        if (bluetoothClass == null) {
            return 1024;
        }
        return bluetoothClass.getDeviceClass();
    }

    public int getMajorClass() {
        BluetoothClass bluetoothClass = this.mDevice.getBluetoothClass();
        if (bluetoothClass == null) {
            return 7936;
        }
        return bluetoothClass.getMajorDeviceClass();
    }

    public boolean isValidDevice() {
        return getDeviceClass() == 1040 || getDeviceClass() == 1048 || getMajorClass() == 512;
    }

    public boolean isPhoneDevice() {
        return getMajorClass() == 512;
    }

    public boolean bond() {
        GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "bond: " + getName());
        try {
            return ((Boolean) BluetoothDevice.class.getMethod("createBond", new Class[0]).invoke(this.mDevice, new Object[0])).booleanValue();
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlyBluetoothDevice", e.getMessage());
            return false;
        }
    }

    public void unBond() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "unBond: " + getName());
        try {
            BluetoothDevice.class.getMethod("removeBond", new Class[0]).invoke(this.mDevice, new Object[0]);
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlyBluetoothDevice", e.getMessage());
        }
    }

    public int getProfileConnectStatus(int profile) {
        if (!this.mProfileEnumMap.containsKey(Integer.valueOf(profile)) || this.mProfileEnumMap.get(Integer.valueOf(profile)) == null) {
            return 0;
        }
        return this.mProfileEnumMap.get(Integer.valueOf(profile)).getConnectionState(this.mDevice);
    }

    public boolean isProfileConnected(int profile) {
        return getProfileConnectStatus(profile) == 2;
    }

    public void setProfileConnectPolicy(int profile, boolean auto) {
        if (this.mProfileEnumMap.containsKey(Integer.valueOf(profile))) {
            BluetoothProfile bluetoothProfile = this.mProfileEnumMap.get(Integer.valueOf(profile));
            int i = auto ? 100 : 0;
            if (bluetoothProfile instanceof BluetoothA2dp) {
                GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothA2dp setProfileConnectPolicy : device = " + getName() + ", auto = " + auto + ", ret = " + setPriority(bluetoothProfile, this.mDevice, i));
                return;
            }
            if (bluetoothProfile instanceof BluetoothA2dpSink) {
                GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothA2dpSink setProfileConnectPolicy : device = " + getName() + ", auto = " + auto + ", ret = " + setPriority(bluetoothProfile, this.mDevice, i));
            } else if (bluetoothProfile instanceof BluetoothHeadsetClient) {
                GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothHeadsetClient setProfileConnectPolicy : device = " + getName() + ", auto = " + auto + ", ret = " + setPriority(bluetoothProfile, this.mDevice, i));
            } else if (bluetoothProfile instanceof BluetoothPbapClient) {
                GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothPbapClient setProfileConnectPolicy : device = " + getName() + ", auto = " + auto + ", ret = " + setPriority(bluetoothProfile, this.mDevice, i));
            }
        }
    }

    public boolean getProfileConnectPolicy(int profile) {
        if (!this.mProfileEnumMap.containsKey(Integer.valueOf(profile))) {
            return true;
        }
        BluetoothProfile bluetoothProfile = this.mProfileEnumMap.get(Integer.valueOf(profile));
        if (bluetoothProfile instanceof BluetoothA2dp) {
            int priority = getPriority(bluetoothProfile, this.mDevice);
            GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothA2dp getProfileConnectPolicy: " + priority + ", device = " + getName());
            return priority == 100;
        }
        if (bluetoothProfile instanceof BluetoothA2dpSink) {
            int priority2 = getPriority(bluetoothProfile, this.mDevice);
            GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothA2dpSink getProfileConnectPolicy: " + priority2 + ", device = " + getName());
            return priority2 == 100;
        }
        if (bluetoothProfile instanceof BluetoothHeadsetClient) {
            int priority3 = getPriority(bluetoothProfile, this.mDevice);
            GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothHeadsetClient getProfileConnectPolicy: " + priority3 + ", device = " + getName());
            return priority3 == 100;
        }
        if (!(bluetoothProfile instanceof BluetoothPbapClient)) {
            return true;
        }
        int priority4 = getPriority(bluetoothProfile, this.mDevice);
        GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "BluetoothPbapClient getProfileConnectPolicy: " + priority4 + ", device = " + getName());
        return priority4 == 100;
    }

    public boolean connect() {
        while (true) {
            boolean z = true;
            for (Map.Entry<Integer, BluetoothProfile> entry : this.mProfileEnumMap.entrySet()) {
                if (getProfileConnectPolicy(entry.getKey().intValue()) && !isProfileConnected(entry.getKey().intValue())) {
                    if (entry.getValue() instanceof BluetoothA2dp) {
                        if (z && connect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else if (entry.getValue() instanceof BluetoothA2dpSink) {
                        if (z && connect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else if (entry.getValue() instanceof BluetoothHeadsetClient) {
                        if (z && connect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else if (entry.getValue() instanceof BluetoothPbapClient) {
                        if (z && connect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else {
                        continue;
                    }
                }
            }
            GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "connect: " + getName() + ", ret = " + z);
            return z;
        }
    }

    public boolean connectInProfile(int profile) {
        GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "connectInProfile: " + getName() + ", " + profile);
        if (this.mProfileEnumMap.containsKey(Integer.valueOf(profile))) {
            BluetoothProfile bluetoothProfile = this.mProfileEnumMap.get(Integer.valueOf(profile));
            if (bluetoothProfile instanceof BluetoothA2dp) {
                return connect(bluetoothProfile, this.mDevice);
            }
            if (bluetoothProfile instanceof BluetoothA2dpSink) {
                return connect(bluetoothProfile, this.mDevice);
            }
            if (bluetoothProfile instanceof BluetoothHeadsetClient) {
                return connect(bluetoothProfile, this.mDevice);
            }
            if (bluetoothProfile instanceof BluetoothPbapClient) {
                return connect(bluetoothProfile, this.mDevice);
            }
        }
        return false;
    }

    public boolean disconnect() {
        while (true) {
            boolean z = true;
            for (Map.Entry<Integer, BluetoothProfile> entry : this.mProfileEnumMap.entrySet()) {
                if (isProfileConnected(entry.getKey().intValue())) {
                    if (entry.getValue() instanceof BluetoothA2dp) {
                        if (z && disconnect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else if (entry.getValue() instanceof BluetoothA2dpSink) {
                        if (z && disconnect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else if (entry.getValue() instanceof BluetoothHeadsetClient) {
                        if (z && disconnect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else if (entry.getValue() instanceof BluetoothPbapClient) {
                        if (z && disconnect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else if (entry.getValue() instanceof BluetoothMapClient) {
                        if (z && disconnect(entry.getValue(), this.mDevice)) {
                            break;
                        }
                        z = false;
                    } else {
                        continue;
                    }
                }
            }
            disconnectGatt();
            GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "disconnect : " + this.mDevice.getName() + ", ret = " + z);
            return z;
        }
    }

    private void disconnectGatt() {
        GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "disconnectGatt: " + getName());
        BluetoothGattServer bluetoothGattServer = this.mBluetoothGattService;
        if (bluetoothGattServer != null) {
            bluetoothGattServer.cancelConnection(this.mDevice);
        }
    }

    public boolean disconnectInProfile(int profile) {
        GlyLog.d("OneVehicleSDK_GlyBluetoothDevice", "disconnectInProfile: profile " + profile + ", device = " + this.mDevice.getName());
        if (this.mProfileEnumMap.containsKey(Integer.valueOf(profile))) {
            BluetoothProfile bluetoothProfile = this.mProfileEnumMap.get(Integer.valueOf(profile));
            if (bluetoothProfile instanceof BluetoothA2dp) {
                return disconnect(bluetoothProfile, this.mDevice);
            }
            if (bluetoothProfile instanceof BluetoothA2dpSink) {
                return disconnect(bluetoothProfile, this.mDevice);
            }
            if (bluetoothProfile instanceof BluetoothHeadsetClient) {
                return disconnect(bluetoothProfile, this.mDevice);
            }
            if (bluetoothProfile instanceof BluetoothPbapClient) {
                return disconnect(bluetoothProfile, this.mDevice);
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(GlyBluetoothDevice device) {
        if (isConnected() && !device.isConnected()) {
            return 1;
        }
        if (isConnected() || !device.isConnected()) {
            return getBondState() - device.getBondState();
        }
        return -1;
    }

    private boolean connect(BluetoothProfile profile, BluetoothDevice device) {
        try {
            return ((Boolean) profile.getClass().getMethod("connect", BluetoothDevice.class).invoke(profile, device)).booleanValue();
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlyBluetoothDevice", "connect error: " + e.getMessage());
            return false;
        }
    }

    private boolean disconnect(BluetoothProfile profile, BluetoothDevice device) {
        try {
            return ((Boolean) profile.getClass().getMethod("disconnect", BluetoothDevice.class).invoke(profile, device)).booleanValue();
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlyBluetoothDevice", "disconnect error: " + e.getMessage());
            return false;
        }
    }

    private boolean setPriority(BluetoothProfile profile, BluetoothDevice device, int priority) {
         try {
            return ((Boolean) profile.getClass().getMethod("setPriority", BluetoothDevice.class, Integer.TYPE).invoke(profile, device, priority)).booleanValue();
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlyBluetoothDevice", "setPriority error: " + e.getMessage());
            return false;
        }
    }

    private int getPriority(BluetoothProfile profile, BluetoothDevice device) {
        try {
            return ((Integer) profile.getClass().getMethod("getPriority", BluetoothDevice.class).invoke(profile, device)).intValue();
        } catch (Exception e) {
            GlyLog.e("OneVehicleSDK_GlyBluetoothDevice", "getPriority error: " + e.getMessage());
            return -1;
        }
    }
}