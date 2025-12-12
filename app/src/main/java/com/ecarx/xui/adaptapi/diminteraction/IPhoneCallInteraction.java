package com.ecarx.xui.adaptapi.diminteraction;

import android.graphics.Bitmap;

public interface IPhoneCallInteraction {
    interface ICallInfo {
        Bitmap getAvatar();
        int getActiveCallId();
        boolean isMicOnVehicleMuted();
        boolean isRingtoneMuted();
        boolean isHandFree();
        int getCallId();
        String getContactName();
        String getContactNumber();
        int getCallStatus();
        long getCallDuration();
        int getCallCount();
        String getCompany();
        String getTitle();
    }

    interface IPhoneCallInteractionCallback {
        void onAnswerCall(String s);
        void onAnswerAndHoldCall(String s);
        void onAnswerAndEndCall(String s);
        void onEndCall(String s);
        void onCallInfoUpdateRequired();
        void onRequestConnectedMobileDeviceInfo();
        void onSwitchCall();
        void onSwitchMicMode(int i);
        void onSwitchChannel(int i);
        void placeCall(String s);
        void onSwitchRingtoneMuteMode(int i);
    }

    void registerPhoneCallback(IPhoneCallInteractionCallback callback);
    void unRegisterPhoneCallback(IPhoneCallInteractionCallback callback);
    void updateCallInfo(ICallInfo callInfo);
    void updateConnectedMobileDeviceState(String deviceName, int batteryLevel, int signalLevel);
    void updateSecondCallInfo(ICallInfo callInfo);
    void writeCallLog2DBCompleted();
    void writeContact2DBCompleted();
}