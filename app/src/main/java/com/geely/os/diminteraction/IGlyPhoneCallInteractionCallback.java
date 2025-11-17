package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyPhoneCallInteractionCallback {
    void onAnswerAndEndCall(String number);

    void onAnswerAndHoldCall(String number);

    void onAnswerCall(String number);

    void onCallInfoUpdateRequired();

    void onEndCall(String number);

    void onRequestConnectedMobileDeviceInfo();

    void onSwitchCall();

    void onSwitchChannel(int voiceChannel);

    void onSwitchMicMode(int muteStatus);

    void onSwitchRingtoneMuteMode(int muteMode);

    void placeCall(String number);
}
