package com.ecarx.xui.adaptapi.device.ext;

import android.os.Bundle;

public interface IPbapExtension {
    String getDecryptContactName(String address, String encryptedContactName, Bundle extArg);
    int getPhoneBookContactsCount();
    int getSyncPhonebookStatus();
    boolean registerPbapListener(IPbapListener listener);
    boolean syncPhonebook(int type);
    boolean unregisterPbapListener(IPbapListener listener);

    interface IPbapListener {
        void onSyncPhonebookStatusChanged(int i, int i1);
    }
}