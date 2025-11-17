package com.geely.os.tbox;

/* loaded from: classes.dex */
public interface IGlyTBoxSettings {
    boolean isCarLocatorEnabled();

    int isCarLocatorSupported();

    boolean isKeylockEnabled();

    int isKeylockSupported();

    boolean isRVDCEnabled();

    void setCarLocatorCallback(IGlyCarLocatorCallback callback);

    void setCarLocatorEnable(boolean enable);

    void setKeylockCallback(IGlyKeyLockCallback callback);

    void setRVDCStatus(boolean enable);

    void unsetCarLocatorCallback(IGlyCarLocatorCallback callback);

    void unsetKeylockCallback(IGlyKeyLockCallback callback);
}
