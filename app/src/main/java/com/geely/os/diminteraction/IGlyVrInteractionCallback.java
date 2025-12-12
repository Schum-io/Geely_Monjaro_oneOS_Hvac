package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyVrInteractionCallback {
    void onDoInteractionAction(int action, int dataType, Object data);

    void onVrInfoUpdateReqired();
}
