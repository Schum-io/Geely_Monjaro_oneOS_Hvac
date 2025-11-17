package com.ecarx.xui.adaptapi.tbox;

import android.content.Context;
import android.telephony.CellInfo;
import android.telephony.SignalStrength;
import com.ecarx.xui.adaptapi.tbox.tboxmessager.ITBoxMessager;

public class TBox {
    public static TBox create(Context context) {
        return null;
    }

    public ITBoxSettings getTBoxSettings() {
        return null;
    }

    public CellInfo getCellInfo() {
        return null;
    }

    public String getHardwareVersion() {
        return "";
    }

    public String getICCID() {
        return "";
    }

    public String getIMEI() {
        return "";
    }

    public String getIMSI() {
        return "";
    }

    public String getLineNumber() {
        return "";
    }

    public String getMSISDN() {
        return "";
    }

    public String getNetworkOperator() {
        return "";
    }

    public String getNetworkOperatorName() {
        return "";
    }

    public String getNetworkType() {
        return "";
    }

    public SignalStrength getSignalStrength() {
        return null;
    }

    public String getSoftwareVersion() {
        return "";
    }

    public int getSoftwareVersionCode() {
        return 0;
    }

    public String getTBoxID() {
        return "";
    }

    public ITBoxMessager getTBoxMessager() {
        return null;
    }

    public String getTBoxSupplierCode() {
        return "";
    }

    public boolean isSubscribed() {
        return false;
    }

    public boolean setTBoxReset() {
        return false;
    }
}
