package com.ecarx.xui.adaptapi.device;

import android.content.Context;
import com.ecarx.xui.adaptapi.device.ext.IBtExtension;
import com.ecarx.xui.adaptapi.device.ext.ISystemMode;

public class Device {
    public static Device create(Context context) {
        return null;
    }

    public String getVin() {
        return "";
    }

    public int getOperatorCode() {
        return 0;
    }

    public String getIhuId() {
        return "";
    }

    public String getVehicleType() {
        return "";
    }

    public String getOperatorName() {
        return "";
    }

    public String getMpuSoftwareVersion() {
        return "";
    }

    public String getSerialNo() {
        return "";
    }

    public String getVehicleTypeConfig() {
        return "";
    }

    public IBtExtension getBtExtension() {
        return null;
    }

    public ISystemMode getSystemMode() {
        return null;
    }
}