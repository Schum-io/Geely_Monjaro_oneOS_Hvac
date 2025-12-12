package com.geely.os.trackball;

/* loaded from: classes.dex */
public interface IGlyTrackBall {
    boolean getConnectState();

    int getTrackBallCursorAlpha();

    int getTrackBallCursorStyle();

    int getTrackBallMediaType();

    int getTrackBallSensitivity();

    int getTrackBallVideoType();

    void registerTrackBallCallback(IGlyTrackBallListener callback);

    void setTrackBallCursorAlpha(int alpha);

    void setTrackBallCursorStyle(int style);

    void setTrackBallMediaType(int type);

    void setTrackBallSensitivity(int mode);

    void setTrackBallVideoType(int type);

    void unregisterTrackBallCallBack(IGlyTrackBallListener callback);
}
