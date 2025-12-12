package com.geely.lib.oneosapi.mediacenter.base;

/* loaded from: classes.dex */
public class BaseCallback<T> {
    private T mCallbackImpl;

    public T getCallbackImpl() {
        return this.mCallbackImpl;
    }

    public void setCallbackImpl(T callbackImpl) {
        this.mCallbackImpl = callbackImpl;
    }
}
