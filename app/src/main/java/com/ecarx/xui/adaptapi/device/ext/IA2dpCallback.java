package com.ecarx.xui.adaptapi.device.ext;

public interface IA2dpCallback {
    void onA2dpServiceReady();
    void onA2dpStateChanged(String s, int i, int i1);
}