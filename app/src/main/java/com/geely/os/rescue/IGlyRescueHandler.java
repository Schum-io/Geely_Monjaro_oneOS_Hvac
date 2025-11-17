package com.geely.os.rescue;

import android.content.Context;

/* loaded from: classes.dex */
public interface IGlyRescueHandler {
    public static final int CALL_TYPE_ECALL = 1;
    public static final int HEADSET_CLIENT = 16;

    void callRescue(String number);

    void callSOS();

    void initBluetooth();

    void initOnCall(Context context);

    boolean isConnectedBTPhone();

    boolean isSupportSOS();

    void startBtPanel();
}
