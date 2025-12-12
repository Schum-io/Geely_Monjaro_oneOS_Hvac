package com.geely.os.trackball;

/* loaded from: classes.dex */
public interface IGlyTrackBallListener {
    void onConnectStateChange(boolean isConnected);

    void onTrackBallCursorAlphaChanged(int alpha);

    void onTrackBallCursorStyleChanged(int style);

    void onTrackBallMediaTypeChanged(int type);

    void onTrackBallSensitivityChanged(int mode);

    void onTrackBallVideoTypeChanged(int type);
}
