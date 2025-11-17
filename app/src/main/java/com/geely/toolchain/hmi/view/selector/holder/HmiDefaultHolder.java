package com.geely.toolchain.hmi.view.selector.holder;

import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public abstract class HmiDefaultHolder {
    public View mLoadingFailView;
    public View mNetworkExceptionView;
    public View mSearchWithoutView;
    public View mWithoutPhotoOrVideoView;

    public abstract View setLoadingFail(Context context);

    public abstract View setNetworkException(Context context);

    public abstract View setSearchWithout(Context context);

    public abstract View setWithoutPhotoOrVideo(Context context);

    public HmiDefaultHolder(Context context) {
        init(context);
    }

    private void init(Context context) {
        this.mNetworkExceptionView = setNetworkException(context);
        this.mSearchWithoutView = setSearchWithout(context);
        this.mWithoutPhotoOrVideoView = setWithoutPhotoOrVideo(context);
        this.mLoadingFailView = setLoadingFail(context);
    }
}
