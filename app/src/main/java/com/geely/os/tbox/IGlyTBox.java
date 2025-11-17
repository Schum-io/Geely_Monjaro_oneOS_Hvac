package com.geely.os.tbox;

import android.telephony.CellInfo;
import android.telephony.SignalStrength;

/* loaded from: classes.dex */
public interface IGlyTBox {
    CellInfo getCellInfo();

    String getHardwareVersion();

    String getICCID();

    String getIMEI();

    String getIMSI();

    String getLineNumber();

    String getMSISDN();

    String getNetworkOperator();

    String getNetworkOperatorName();

    String getNetworkType();

    SignalStrength getSignalStrength();

    String getSoftwareVersion();

    int getSoftwareVersionCode();

    String getTBoxID();

    IGlyBoxMessage getTBoxMessage();

    IGlyTBoxSettings getTBoxSettings();

    String getTBoxSupplierCode();

    boolean isSubscribed();

    boolean setGIDProfIDLnk(String gidInfo, int profId);

    boolean setTBoxReset();
}
