package com.geely.os.audio;

/* loaded from: classes.dex */
public interface IGlyFaderBalanceStateListener {
    void onBalanceChanged(int balanceLevel);

    void onFaderBalanceStateChanger(int supportStatus);

    void onFaderChanged(int faderLevel);
}
