package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiNoTitleSingleButtonDialog extends BaseHmiDialogFragment {
    private static final String TAG = "TextSingleButtonDialog";
    private HmiBtnListener mBtnClickListener;
    private HmiButton mButton;
    private String mButtonText;
    private HmiTextView mContent;
    private String mContentText;
    private HmiClickListener mHmiClickListener;
    private ConstraintLayout mRootView;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_single_button_no_title_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        initData();
    }

    public void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            Log.i(TAG, "hmiConfigChange: context is null");
            return;
        }
        Log.i(TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_not_title_content_color));
        this.mButton.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_single_button_bg));
        this.mButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_text_color));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
    }

    private void initView(View view) {
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mButton = (HmiButton) view.findViewById(R.id.button);
        this.mRootView = (ConstraintLayout) view.findViewById(R.id.rootView);
        this.mButton.setOnClickListener(this::lambda$initView$0$HmiNoTitleSingleButtonDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiNoTitleSingleButtonDialog(View view) {
        HmiBtnListener hmiBtnListener = this.mBtnClickListener;
        if (hmiBtnListener != null) {
            hmiBtnListener.action();
        } else {
            HmiClickListener hmiClickListener = this.mHmiClickListener;
            if (hmiClickListener != null) {
                hmiClickListener.onHmiClick(this);
            } else {
                Log.i(TAG, "mBtnClickListener is null");
                dismiss();
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mContent.setText(this.mContentText);
        this.mButton.setText(this.mButtonText);
    }

    public HmiNoTitleSingleButtonDialog setContent(String content) {
        this.mContentText = content;
        return this;
    }

    public HmiNoTitleSingleButtonDialog setButtonText(String text) {
        this.mButtonText = text;
        return this;
    }

    @Deprecated
    public HmiNoTitleSingleButtonDialog setBtnClickListener(HmiBtnListener btnClickListener) {
        this.mBtnClickListener = btnClickListener;
        return this;
    }

    public HmiNoTitleSingleButtonDialog setOnHmiClickListener(HmiClickListener mHmiClickListener) {
        this.mHmiClickListener = mHmiClickListener;
        return this;
    }
}
