package com.geely.os.trackball;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyTrackBall {
    public static IGlyTrackBall create(Context context) {
        return GlyTrackBallImpl.create(context);
    }
}
