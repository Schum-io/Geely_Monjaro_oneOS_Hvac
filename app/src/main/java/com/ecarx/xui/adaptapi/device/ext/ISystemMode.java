package com.ecarx.xui.adaptapi.device.ext;

public interface ISystemMode {
    void closeBootUpAnimation();
    int getSystemModeState(int state);
    boolean registerListener(int mode, ISystemModeListener listener);
    void setProvisionStatus(int currentStatus, DIMAnimationStateCallback callback);
    boolean unregisterListener(ISystemModeListener listener);
    boolean registerDIMAnimationStateCallback(DIMAnimationStateCallback callback);
    boolean unregisterDIMAnimationStateCallback(DIMAnimationStateCallback callback);
    void setDisplayWakeState(int zone, boolean state);

    interface ISystemModeListener {
        void onSystemModeStateChanged(int mode, int state);
    }

    interface DIMAnimationStateCallback {
        void onDIMAnimationStateResponse(int state);
    }
}