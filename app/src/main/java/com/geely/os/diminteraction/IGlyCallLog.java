package com.geely.os.diminteraction;

import android.net.Uri;

/* loaded from: classes.dex */
public interface IGlyCallLog {
    Uri getAvatar();

    int getCallType();

    String getContactName();

    String getContactNumber();

    int getCount();

    long getTimestamp();
}
