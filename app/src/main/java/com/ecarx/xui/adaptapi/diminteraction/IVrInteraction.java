package com.ecarx.xui.adaptapi.diminteraction;

public interface IVrInteraction {
    interface IVrInteractionCallback {
        void onVrInfoUpdateReqired();
        void onDoInteractionAction(int i, int i1, Object o);
    }

    void notifyVoiceToTextCompleted(String text);
    void notifyVrSearchStates(int state);
    void notifyVrStatusChanged(int vrStatusBefore, int vrStatusCurrent);
    void notifyVrTTSText(String ttsText);
    void registerVrCallback(IVrInteractionCallback callback);
    void unRegisterVrCallback(IVrInteractionCallback callback);
}