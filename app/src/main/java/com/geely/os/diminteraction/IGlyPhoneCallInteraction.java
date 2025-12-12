package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyPhoneCallInteraction {
    void registerPhoneCallback(IGlyPhoneCallInteractionCallback callback);

    void unRegisterPhoneCallback(IGlyPhoneCallInteractionCallback callback);

    void updateCallInfo(IGlyCallInfo callInfo);

    void updateConnectedMobileDeviceState(String deviceName, int batteryLevel, int signalLevel);

    void updateSecondCallInfo(IGlyCallInfo callInfo);

    void writeCallLog2DBCompleted();

    void writeContact2DBCompleted();
}
