package com.ecarx.xui.adaptapi.wifiap;

import java.util.List;

public interface IWifiApClientCallback {
    void onWifiApClientChanged(List<IWifiApClient> list);
}