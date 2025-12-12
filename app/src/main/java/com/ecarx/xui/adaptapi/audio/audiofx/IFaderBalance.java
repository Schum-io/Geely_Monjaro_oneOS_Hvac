package com.ecarx.xui.adaptapi.audio.audiofx;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface IFaderBalance {
    short[] getFaderLevelRange();
    void setFaderLevel(short level);
    short[] getBalanceLevelRange();
    short getBalanceLevel();
    short getFaderLevel();
    void setBalanceLevel(short level);
    FunctionStatus isFaderSupported();
    FunctionStatus isBalanceSupported();
    boolean registerFaderBalanceStateListener(IFaderBalanceStateListener listener);
    boolean unregisterFaderBalanceStateListener(IFaderBalanceStateListener listener);

    interface IFaderBalanceStateListener {
        void onFaderBalanceStateChanger(FunctionStatus functionStatus);
        void onFaderChanged(int i);
        void onBalanceChanged(int i);
    }
}