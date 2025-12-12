package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyVrInteraction {
    void notifyVoiceToTextCompleted(String text);

    void notifyVrSearchStates(int state);

    void notifyVrStatusChanged(int vrStatusBefore, int vrStatusCurrent);

    void notifyVrTTSText(String ttsText);

    void registerVrCallback(IGlyVrInteractionCallback callback);

    void unRegisterVrCallback(IGlyVrInteractionCallback callback);
}
