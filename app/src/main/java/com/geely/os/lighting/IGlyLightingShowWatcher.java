package com.geely.os.lighting;

/* loaded from: classes.dex */
public interface IGlyLightingShowWatcher {
    void onLightingShowEnableChanged(int enabled);

    void onLightingShowError(int[] error);

    void onLightingShowFileDownloadFunctionStatus(int enabled);

    void onLightingShowFileDownloadState(int state);

    void onLightingShowStateChanged(int state);

    void onWelcomeLightFileDownloadFunctionStatus(int enabled);
}
