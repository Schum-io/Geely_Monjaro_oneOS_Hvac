package com.geely.os.bt;

/* loaded from: classes.dex */
public interface IGlyMultiBtPbapExtension {
    int getPhoneBookContactsCount(String address);

    int getSyncPhonebookStatus(String address);

    boolean registerMultiPbapListener(IGlyMultiPbapListener listener);

    boolean syncPhonebook(String address, int type);

    boolean unregisterMultiPbapListener(IGlyMultiPbapListener listener);
}
