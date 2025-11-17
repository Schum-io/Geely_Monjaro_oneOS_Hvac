package com.geely.os.bt;

import android.os.Bundle;

/* loaded from: classes.dex */
public interface IGlyPbapExtension {
    String getDecryptContactName(String address, String encryptedContactName, Bundle extArg);

    int getPhoneBookContactsCount();

    int getSyncPhonebookStatus();

    boolean registerPbapListener(IGlyPbapListener listener);

    boolean syncPhonebook(int type);

    boolean unregisterPbapListener(IGlyPbapListener listener);
}
