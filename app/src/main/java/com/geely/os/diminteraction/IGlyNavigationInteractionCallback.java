package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyNavigationInteractionCallback {
    void onDoInteractionAction(int action, IGlyAddress address);

    void onSearchAddress(String keyword);
}
