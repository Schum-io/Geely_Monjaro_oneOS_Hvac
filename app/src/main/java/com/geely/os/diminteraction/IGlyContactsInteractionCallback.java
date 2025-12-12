package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyContactsInteractionCallback {
    void onDoContactInteractionAction(int action, String contactNumber);

    void onSearchContacts(int type, String keyword);
}
