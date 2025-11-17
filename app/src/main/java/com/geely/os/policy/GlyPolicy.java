package com.geely.os.policy;

import android.content.Context;

/* loaded from: classes.dex */
public class GlyPolicy {
    public static IGlyPolicy create(Context context) {
        return GlyPolicyImpl.create(context);
    }
}
