package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiWarnDialog extends BaseHmiDialogFragment {
    private String hmiContent;
    private String hmiLeftBtnText;
    private String hmiRightBtnText;
    private String hmiTitle;
    private HmiTextView mContent;
    private HmiSelectListener mHmiSelectListener;
    private HmiStateButton mLeftBtn;
    private HmiStateButton mRightBtn;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_warn_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
            this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
            this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mLeftBtn = (HmiStateButton) view.findViewById(R.id.leftBtn);
        this.mRightBtn = (HmiStateButton) view.findViewById(R.id.rightBtn);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mLeftBtn.setOnClickListener(this::lambda$initView$0$HmiWarnDialog);
        this.mRightBtn.setOnClickListener(this::lambda$initView$1$HmiWarnDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiWarnDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.leftAction(this);
        } else {
            Log.i(this.TAG, "leftAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiWarnDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.rightAction(this);
        } else {
            Log.i(this.TAG, "rightAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.hmiTitle);
        this.mContent.setText(this.hmiContent);
        this.mLeftBtn.setText(this.hmiLeftBtnText);
        this.mRightBtn.setText(this.hmiRightBtnText);
    }

    private void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mLeftBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_warning_btn_default), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
        this.mRightBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_un_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
        this.mLeftBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
        this.mRightBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.i(this.TAG, this.TAG + " onSaveInstanceState");
        outState.putString("hmiTitle", this.hmiTitle);
        outState.putString("hmiContent", this.hmiContent);
        outState.putString("hmiLeftBtnText", this.hmiLeftBtnText);
        outState.putString("hmiRightBtnText", this.hmiRightBtnText);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (savedInstanceState == null) {
            Log.i(this.TAG, "onViewStateRestored: savedInstanceState is null");
            return;
        }
        this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
        this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
        this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
        this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
    }

    public HmiWarnDialog setHmiTitle(String title) {
        this.hmiTitle = title;
        return this;
    }

    public HmiWarnDialog setHmiContent(String content) {
        this.hmiContent = content;
        return this;
    }

    public HmiWarnDialog setHmiLeftBtnText(String leftBtnText) {
        this.hmiLeftBtnText = leftBtnText;
        return this;
    }

    public HmiWarnDialog setHmiRightBtnText(String rightBtnText) {
        this.hmiRightBtnText = rightBtnText;
        return this;
    }

    public HmiWarnDialog setHmiSelectListener(HmiSelectListener selectListener) {
        this.mHmiSelectListener = selectListener;
        return this;
    }
}
