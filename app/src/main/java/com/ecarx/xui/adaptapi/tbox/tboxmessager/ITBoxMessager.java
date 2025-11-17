package com.ecarx.xui.adaptapi.tbox.tboxmessager;

import com.geely.os.tbox.IGlyNaviInfoFromTBox;

public interface ITBoxMessager {
    interface TBoxMessageCallback {
        void onTBoxMessageGet(Object o, int i);
    }

    int getTBoxMsgType();

    IGlyNaviInfoFromTBox getNaviInfo();

    void setTBoxMessageCallback(TBoxMessageCallback callback, int messageType);

    void unsetTBoxMessageCallback(TBoxMessageCallback callback);
}
