package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Objects;

/* loaded from: classes.dex */
public class HmiSingleButtonHasTitleAndCloseIconEmptyDialog extends BaseHmiDialogFragment {
    private static final String TAG = "HmiSingleBtnHasTitleAndCloseIconEmptyDialog";
    private View hmiView;
    private HmiStateButton mBtn;
    private String mBtnText;
    private HmiImageView mClose;
    private LinearLayout mCustomView;
    private HmiBtnListener mHmiBtnListener;
    private HmiClickListener mHmiClickListener;
    private HmiCloseListener mHmiCloseListener;
    private FrameLayout mRootView;
    private HmiTextView mTitle;
    private String mTitleText;
    private int mWidth = 848;
    private int mHeight = 800;
    private final int mCloseResourceId = R.drawable.oneoshmi_close_pop_big;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_single_button_has_title_and_close_icon_empty_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        initData();
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = ((Dialog) Objects.requireNonNull(getDialog())).getWindow();
        if (window != null) {
            window.setLayout(this.mWidth, this.mHeight);
        }
        Log.i(TAG, "onStart: run mWidth:" + this.mWidth + "mHeight: " + this.mHeight);
    }

    public void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            Log.i(TAG, "hmiConfigChange: context is null");
            return;
        }
        Log.i(TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mClose.setImageDrawable(ContextCompat.getDrawable(context, this.mCloseResourceId));
        this.mBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_dialog_btn_radius));
        this.mBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_text_color));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
    }

    private void initView(View view) {
        this.mTitle = (HmiTextView) view.findViewById(R.id.tvTitle);
        this.mClose = (HmiImageView) view.findViewById(R.id.close);
        this.mCustomView = (LinearLayout) view.findViewById(R.id.customView);
        this.mBtn = (HmiStateButton) view.findViewById(R.id.btn);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiSingleButtonHasTitleAndCloseIconEmptyDialog$ZaNfkgiTO3gN8KfYOAuw1uafdjQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiSingleButtonHasTitleAndCloseIconEmptyDialog.this.lambda$initView$0$HmiSingleButtonHasTitleAndCloseIconEmptyDialog(view2);
            }
        });
        this.mBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiSingleButtonHasTitleAndCloseIconEmptyDialog$3aL2i2w6E9ldpkXuuJQm97jzrdU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiSingleButtonHasTitleAndCloseIconEmptyDialog.this.lambda$initView$1$HmiSingleButtonHasTitleAndCloseIconEmptyDialog(view2);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiSingleButtonHasTitleAndCloseIconEmptyDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            Log.i(TAG, "onClick: mHmiCloseListener is null");
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiSingleButtonHasTitleAndCloseIconEmptyDialog(View view) {
        HmiBtnListener hmiBtnListener = this.mHmiBtnListener;
        if (hmiBtnListener != null) {
            hmiBtnListener.action();
        } else {
            HmiClickListener hmiClickListener = this.mHmiClickListener;
            if (hmiClickListener != null) {
                hmiClickListener.onHmiClick(this);
            } else {
                Log.i(TAG, "initView: mHmiBtnListener is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.mTitleText);
        this.mClose.setImageResource(this.mCloseResourceId);
        this.mBtn.setText(this.mBtnText);
        View view = this.hmiView;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.hmiView);
            }
            this.mCustomView.addView(this.hmiView);
            return;
        }
        Log.e(TAG, "initData: hmiView  is null");
    }

    public HmiSingleButtonHasTitleAndCloseIconEmptyDialog setHmiTitle(String title) {
        this.mTitleText = title;
        return this;
    }

    public HmiSingleButtonHasTitleAndCloseIconEmptyDialog setHmiBtnText(String text) {
        this.mBtnText = text;
        return this;
    }

    public HmiSingleButtonHasTitleAndCloseIconEmptyDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.i(TAG, "setHmiCloseListener: run");
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }

    @Deprecated
    public HmiSingleButtonHasTitleAndCloseIconEmptyDialog setHmiBtnListener(HmiBtnListener hmiBtnListener) {
        this.mHmiBtnListener = hmiBtnListener;
        return this;
    }

    public HmiSingleButtonHasTitleAndCloseIconEmptyDialog setOnHmiClickListener(HmiClickListener mHmiClickListener) {
        this.mHmiClickListener = mHmiClickListener;
        return this;
    }

    public HmiSingleButtonHasTitleAndCloseIconEmptyDialog setDialogSize(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        return this;
    }

    public HmiSingleButtonHasTitleAndCloseIconEmptyDialog setHmiAddView(View view) {
        Log.i(TAG, "setHmiAddView: view = " + view);
        this.hmiView = view;
        return this;
    }
}
