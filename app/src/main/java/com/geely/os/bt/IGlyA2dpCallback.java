package com.geely.os.bt;

/* loaded from: classes.dex */
public interface IGlyA2dpCallback {
    void onA2dpServiceReady();

    void onA2dpStateChanged(String address, int prevState, int newState);
}
