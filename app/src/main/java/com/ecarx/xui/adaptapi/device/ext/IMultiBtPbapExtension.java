package com.ecarx.xui.adaptapi.device.ext;

public interface IMultiBtPbapExtension {
    int getPhoneBookContactsCount(String address);
    int getSyncPhonebookStatus(String address);
    boolean registerMultiPbapListener(IMultiPbapListener listener);
    boolean syncPhonebook(String address, int type);
    boolean unregisterMultiPbapListener(IMultiPbapListener listener);

    interface IMultiPbapListener {
        void onSyncPhonebookStatusChanged(String s, int i, int i1);
    }
}