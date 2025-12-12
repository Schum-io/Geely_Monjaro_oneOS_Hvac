package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.dialog.HmiDialogHelper;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiAddCustomViewTipDialog extends BaseHmiDialogFragment implements HmiDialogHelper {
    private CharSequence hmiContent;
    private String hmiLeftBtnText;
    private String hmiRightBtnText;
    private String hmiTitle;
    private View hmiView;
    private HmiImageView mClose;
    private final int mCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private HmiTextView mContent;
    private LinearLayout mCustomView;
    private HmiCloseListener mHmiCloseListener;
    private HmiSelectListener mHmiSelectListener;
    private HmiStateButton mLeftBtn;
    private HmiStateButton mRightBtn;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_add_custom_view_tip_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiContent = savedInstanceState.getCharSequence("hmiContent", this.hmiContent);
            this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
            this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mClose = (HmiImageView) view.findViewById(R.id.close);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mLeftBtn = (HmiStateButton) view.findViewById(R.id.leftBtn);
        this.mRightBtn = (HmiStateButton) view.findViewById(R.id.rightBtn);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mCustomView = (LinearLayout) view.findViewById(R.id.customView);
        this.mLeftBtn.setOnClickListener(this::lambda$initView$0$HmiAddCustomViewTipDialog);
        this.mRightBtn.setOnClickListener(this::lambda$initView$1$HmiAddCustomViewTipDialog);
        this.mClose.setOnClickListener(this::lambda$initView$2$HmiAddCustomViewTipDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiAddCustomViewTipDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.leftAction(this);
        } else {
            Log.i(this.TAG, "leftAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiAddCustomViewTipDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.rightAction(this);
        } else {
            Log.i(this.TAG, "rightAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$2$HmiAddCustomViewTipDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.hmiTitle);
        this.mClose.setImageResource(this.mCloseResourceId);
        this.mContent.setText(this.hmiContent);
        this.mContent.setMovementMethod(LinkMovementMethod.getInstance());
        this.mContent.setHighlightColor(ContextCompat.getColor(getContext(), R.color.oneoshmi_transparent));
        this.mLeftBtn.setText(this.hmiLeftBtnText);
        this.mRightBtn.setText(this.hmiRightBtnText);
        View view = this.hmiView;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.hmiView);
            }
            this.mCustomView.addView(this.hmiView);
            return;
        }
        Log.e(this.TAG, "initData: hmiView  is null");
    }

    private void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            Log.i(this.TAG, "hmiConfigChange: context is null");
            return;
        }
        Log.i(this.TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mLeftBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_dialog_btn_radius));
        this.mRightBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_un_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_dialog_btn_radius));
        this.mLeftBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
        this.mRightBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        Log.i(this.TAG, "onConfigurationChanged: run");
        hmiConfigChange();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.i(this.TAG, this.TAG + " onSaveInstanceState");
        outState.putString("hmiTitle", this.hmiTitle);
        outState.putCharSequence("hmiContent", this.hmiContent);
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
        this.hmiContent = savedInstanceState.getCharSequence("hmiContent", this.hmiContent);
        this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
        this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
    }

    public HmiAddCustomViewTipDialog setHmiTitle(String title) {
        this.hmiTitle = title;
        return this;
    }

    public void setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        this.mHmiCloseListener = hmiCloseListener;
    }

    public HmiAddCustomViewTipDialog setHmiAddView(View view) {
        this.hmiView = view;
        return this;
    }

    public HmiAddCustomViewTipDialog setHmiContent(CharSequence content) {
        this.hmiContent = content;
        return this;
    }

    public HmiAddCustomViewTipDialog setHmiLeftBtnText(String leftBtnText) {
        this.hmiLeftBtnText = leftBtnText;
        return this;
    }

    public HmiAddCustomViewTipDialog setHmiRightBtnText(String rightBtnText) {
        this.hmiRightBtnText = rightBtnText;
        return this;
    }

    public HmiAddCustomViewTipDialog setHmiSelectListener(HmiSelectListener selectListener) {
        this.mHmiSelectListener = selectListener;
        return this;
    }
}
