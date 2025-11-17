package com.ecarx.xui.adaptapi.diminteraction;

import android.net.Uri;
import java.util.List;

public interface IContactsInteraction {
    interface ICallLog {
        Uri getAvatar();
        String getContactName();
        String getContactNumber();
        int getCallType();
        long getTimestamp();
        int getCount();
    }

    interface IContact {
        String getName();
        String getNumber();
        Uri getAvatar();
        int getType();
    }

    interface IContactsInteractionCallback {
        void onDoContactInteractionAction(int i, String s);
        void onSearchContacts(int i, String s);
    }

    void registerContactsInteractionCallback(IContactsInteractionCallback callback);
    void unregisterContactsInteractionCallback(IContactsInteractionCallback callback);
    void updateCallLogList(List<ICallLog> callLogs);
    void updateContacts(int type, List<IContact> contacts);
    void updateSearchContacts(int type, List<IContact> contacts, String keyword);
}