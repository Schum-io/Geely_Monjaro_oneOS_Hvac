package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.geely.toolchain.hmi.view.selector.holder.HmiDefaultHolder;

/* loaded from: classes.dex */
public class HmiDefaultView extends LinearLayout {
    private final int KEY_DEFAULT_NO_VIEW;
    private final int KEY_LOADING_FAIL;
    private final int KEY_NET_WORK_EXCEPTION;
    private final int KEY_SEARCH_WITHOUT;
    private final int KEY_WITHOUT_PHOTO_OR_VIDEO;
    private HmiDefaultHolder mHolder;
    private int mViewType;

    public HmiDefaultView(Context context) {
        super(context);
        this.KEY_NET_WORK_EXCEPTION = 0;
        this.KEY_SEARCH_WITHOUT = 1;
        this.KEY_WITHOUT_PHOTO_OR_VIDEO = 2;
        this.KEY_LOADING_FAIL = 3;
        this.KEY_DEFAULT_NO_VIEW = 4;
        this.mViewType = 4;
    }

    public HmiDefaultView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.KEY_NET_WORK_EXCEPTION = 0;
        this.KEY_SEARCH_WITHOUT = 1;
        this.KEY_WITHOUT_PHOTO_OR_VIDEO = 2;
        this.KEY_LOADING_FAIL = 3;
        this.KEY_DEFAULT_NO_VIEW = 4;
        this.mViewType = 4;
    }

    public void setHimDefaultView(HmiDefaultHolder holder) {
        this.mHolder = holder;
        initView();
    }

    private void initView() {
        addView(this.mHolder.mNetworkExceptionView, 0);
        addView(this.mHolder.mSearchWithoutView, 0);
        addView(this.mHolder.mWithoutPhotoOrVideoView, 0);
        addView(this.mHolder.mLoadingFailView, 0);
        setShowOrHide();
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        this.mHolder.mNetworkExceptionView.setLayoutParams(layoutParams);
        this.mHolder.mSearchWithoutView.setLayoutParams(layoutParams);
        this.mHolder.mLoadingFailView.setLayoutParams(layoutParams);
        this.mHolder.mWithoutPhotoOrVideoView.setLayoutParams(layoutParams);
    }

    public void showLoadingFailView() {
        if (this.mViewType == 3) {
            return;
        }
        this.mViewType = 3;
        setShowOrHide();
    }

    public void showSearchWithOutView() {
        if (this.mViewType == 1) {
            return;
        }
        this.mViewType = 1;
        setShowOrHide();
    }

    public void showNetworkExceptionView() {
        if (this.mViewType == 0) {
            return;
        }
        this.mViewType = 0;
        setShowOrHide();
    }

    public void showWithoutPhotoOrVideoView() {
        if (this.mViewType == 2) {
            return;
        }
        this.mViewType = 2;
        setShowOrHide();
    }

    private void setShowOrHide() {
        HmiDefaultHolder hmiDefaultHolder = this.mHolder;
        if (hmiDefaultHolder == null) {
            throw new RuntimeException("OtherView::请先设置OtherHolder");
        }
        hmiDefaultHolder.mNetworkExceptionView.setVisibility(this.mViewType == 0 ? 0 : 8);
        this.mHolder.mSearchWithoutView.setVisibility(this.mViewType == 1 ? 0 : 8);
        this.mHolder.mWithoutPhotoOrVideoView.setVisibility(this.mViewType == 2 ? 0 : 8);
        this.mHolder.mLoadingFailView.setVisibility(this.mViewType != 3 ? 8 : 0);
    }
}
