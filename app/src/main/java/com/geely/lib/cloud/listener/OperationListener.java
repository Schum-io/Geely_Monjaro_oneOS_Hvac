package com.geely.lib.cloud.listener;

/* loaded from: classes.dex */
public interface OperationListener {
    void onFail(String json);

    void onSuccess(String json);
}
