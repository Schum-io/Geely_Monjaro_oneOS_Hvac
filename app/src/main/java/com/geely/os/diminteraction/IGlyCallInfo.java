package com.geely.os.diminteraction;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public interface IGlyCallInfo {
    int getActiveCallId();

    Bitmap getAvatar();

    int getCallCount();

    long getCallDuration();

    int getCallId();

    int getCallStatus();

    String getCompany();

    String getContactName();

    String getContactNumber();

    String getTitle();

    boolean isHandFree();

    boolean isMicOnVehicleMuted();

    boolean isRingtoneMuted();
}
