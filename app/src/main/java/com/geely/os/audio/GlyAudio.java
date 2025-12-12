package com.geely.os.audio;

import android.content.Context;

/* loaded from: classes.dex */
public final class GlyAudio {
    public static IGlyAudio create(Context context) {
        return GlyAudioImpl.create(context);
    }
}
