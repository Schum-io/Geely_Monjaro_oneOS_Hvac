package com.geely.os.wifiap;

/* loaded from: classes.dex */
public interface IGlyWifiAPHost {
    public static final int WIFIAP_FREQUENCY_2 = 1;
    public static final int WIFIAP_FREQUENCY_5 = 2;

    int getCurrentFrequencyMode();

    int[] getSupportedWifiAPFrequency();

    boolean registerWifiAPFrequencyCallBack(IGlyWifiAPFrequencyChangeCallBack callBack);

    void setFrequencyMode(int mode);

    boolean unregisterWifiAPFrequencyCallBack(IGlyWifiAPFrequencyChangeCallBack callBack);
}
