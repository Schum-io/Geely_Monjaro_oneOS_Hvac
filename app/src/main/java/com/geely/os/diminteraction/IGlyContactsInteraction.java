package com.geely.os.diminteraction;

import java.util.List;

/* loaded from: classes.dex */
public interface IGlyContactsInteraction {
    void registerContactsInteractionCallback(IGlyContactsInteractionCallback callback);

    void unregisterContactsInteractionCallback(IGlyContactsInteractionCallback callback);

    void updateCallLogList(List<IGlyCallLog> callLogs);

    void updateContacts(int type, List<IGlyContact> contacts);

    void updateSearchContacts(int type, List<IGlyContact> contacts, String keyword);
}
