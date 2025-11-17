package com.geely.os.audio;

/* loaded from: classes.dex */
public interface IGlyHarmanSettingListener {
    void onBandChanged(int band, int level);

    void onHarmanSettingStateChanged(int harmanSetting);
}
