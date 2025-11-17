package com.ecarx.xui.adaptapi.trackball;

public interface ITrackBall {
    boolean getConnectState();
    int getTrackBallCursorAlpha();
    int getTrackBallCursorStyle();
    int getTrackBallMediaType();
    int getTrackBallSensitivity();
    int getTrackBallVideoType();
    void registerTrackBallCallback(ITrackBallListener callback);
    void setTrackBallCursorAlpha(int alpha);
    void setTrackBallCursorStyle(int style);
    void setTrackBallMediaType(int type);
    void setTrackBallSensitivity(int mode);
    void setTrackBallVideoType(int type);
    void unregisterTrackBallCallBack(ITrackBallListener callback);

    interface ITrackBallListener {
        void onTrackBallSensitivityChanged(int mode);
        void onTrackBallCursorAlphaChanged(int alpha);
        void onTrackBallCursorStyleChanged(int style);
        void onTrackBallMediaTypeChanged(int type);
        void onTrackBallVideoTypeChanged(int type);
        void onConnectStateChange(boolean isConnected);
    }
}