package com.ecarx.xui.adaptapi.tbox;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface ITBoxSettings {
    interface ICarLocatorCallback {
        void onCarLocatorEnabled(boolean b);
    }

    interface IKeylockCallback {
        void onKeylockEnabled(boolean b);
    }

    boolean isCarLocatorEnabled();
    FunctionStatus isCarLocatorSupported();
    boolean isKeylockEnabled();
    FunctionStatus isKeylockSupported();
    void setCarLocatorCallback(ICarLocatorCallback callback);
    void unsetCarLocatorCallback(ICarLocatorCallback callback);
    void setCarLocatorEnable(boolean enable);
    void setKeylockCallback(IKeylockCallback callback);
    void unsetKeylockCallback(IKeylockCallback callback);
}
