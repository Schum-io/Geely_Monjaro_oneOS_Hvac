package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.io.Serializable;

/* loaded from: classes.dex */
public class HmiAddCustomViewSingleButtonSmallDialog extends BaseHmiDialogFragment {
    private String hmiBtnText;
    private int hmiCloseResourceId = R.drawable.oneoshmi_ic_dialog_close;
    private String hmiTitle;
    private View hmiView;
    private HmiStateButton mBtn;
    private HmiImageView mCloseIcon;
    private LinearLayout mCustomView;
    private HmiBtnListener mHmiBtnListener;
    private HmiCloseListener mHmiCloseListener;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    public interface HmiBtnListener extends Serializable {
        void action(HmiAddCustomViewSingleButtonSmallDialog dialog);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_add_custom_view_single_button_small_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
            this.hmiBtnText = savedInstanceState.getString("hmiBtnText", this.hmiBtnText);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        Log.i(this.TAG, "initView: run");
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mCloseIcon = (HmiImageView) view.findViewById(R.id.close);
        this.mBtn = (HmiStateButton) view.findViewById(R.id.btn);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mCustomView = (LinearLayout) view.findViewById(R.id.customView);
        this.mBtn.setOnClickListener(this::lambda$initView$0$HmiAddCustomViewSingleButtonSmallDialog);
        this.mCloseIcon.setOnClickListener(this::lambda$initView$1$HmiAddCustomViewSingleButtonSmallDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiAddCustomViewSingleButtonSmallDialog(View view) {
        HmiBtnListener hmiBtnListener = this.mHmiBtnListener;
        if (hmiBtnListener != null) {
            hmiBtnListener.action(this);
        } else {
            Log.i(this.TAG, "mHmiBtnListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiAddCustomViewSingleButtonSmallDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            Log.i(this.TAG, "initView: mHmiCloseListener is null");
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        Log.i(this.TAG, "initData: run");
        this.mTitle.setText(this.hmiTitle);
        this.mBtn.setText(this.hmiBtnText);
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
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
        Log.i(this.TAG, "hmiConfigChange: run");
        Context context = getContext();
        if (context == null) {
            Log.e(this.TAG, "hmiConfigChange: context is null");
            return;
        }
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_color_click_default), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
        this.mBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
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
        outState.putInt("hmiCloseResourceId", this.hmiCloseResourceId);
        outState.putString("hmiBtnText", this.hmiBtnText);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        Log.i(this.TAG, "onViewStateRestored: run");
        if (savedInstanceState == null) {
            Log.i(this.TAG, "onViewStateRestored: savedInstanceState is null");
            return;
        }
        this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
        this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
        this.hmiBtnText = savedInstanceState.getString("hmiBtnText", this.hmiBtnText);
    }

    public HmiAddCustomViewSingleButtonSmallDialog setHmiAddView(View view) {
        Log.i(this.TAG, "setHmiAddView: run");
        this.hmiView = view;
        return this;
    }

    public HmiAddCustomViewSingleButtonSmallDialog setHmiTitle(String title) {
        Log.i(this.TAG, "setHmiTitle: title = " + title);
        this.hmiTitle = title;
        return this;
    }

    public HmiAddCustomViewSingleButtonSmallDialog setHmiCloseResourceId(int closeResourceId) {
        Log.i(this.TAG, "setHmiCloseResourceId: closeResourceId = " + closeResourceId);
        this.hmiCloseResourceId = closeResourceId;
        return this;
    }

    public HmiAddCustomViewSingleButtonSmallDialog setHmiBtnText(String hmiBtnText) {
        Log.i(this.TAG, "setHmiBtnText: hmiBtnText = " + hmiBtnText);
        this.hmiBtnText = hmiBtnText;
        return this;
    }

    public HmiAddCustomViewSingleButtonSmallDialog setHmiBtnListener(HmiBtnListener hmiBtnListener) {
        Log.i(this.TAG, "setHmiBtnListener: run");
        this.mHmiBtnListener = hmiBtnListener;
        return this;
    }

    public HmiAddCustomViewSingleButtonSmallDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.i(this.TAG, "setHmiCloseListener: run");
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }
}
