package com.ecarx.xui.adaptapi.wifiap;

public interface IWifiAPHost {

    int getCurrentFrequencyMode();

    int[] getSupportedWifiAPFrequency();

    void setFrequencyMode(int mode);

    boolean registerWifiAPFrequencyCallBack(IWifiAPFrequencyChangeCallBack callBack);

    boolean unregisterWifiAPFrequencyCallBack(IWifiAPFrequencyChangeCallBack callBack);

    interface IWifiAPFrequencyChangeCallBack {
        void onWifiAPFrequencyChange(int i);
    }
}