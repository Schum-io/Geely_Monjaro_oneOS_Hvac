package com.geely.os.system;

/* loaded from: classes.dex */
public interface IGlySystemMode {
    void closeBootUpAnimation();

    int getSystemModeState(int state);

    boolean registerDIMAnimationStateCallback(IGlyDIMAnimationStateCallback callback);

    boolean registerListener(int mode, IGlySystemModeListener listener);

    void setDisplayWakeState(int zone, boolean state);

    void setProvisionStatus(int currentStatus);

    void setProvisionStatus(int currentStatus, IGlyDIMAnimationStateCallback callback);

    boolean unregisterDIMAnimationStateCallback(IGlyDIMAnimationStateCallback callback);

    boolean unregisterListener(IGlySystemModeListener listener);
}
