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
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiHasTitleSingleButtonDialog extends BaseHmiDialogFragment {
    private static final String TAG = "HmiNewSingleButtonHasTitleDialog";
    private HmiBtnListener mBtnClickListener;
    private HmiButton mButton;
    private String mButtonText;
    private HmiImageView mClose;
    private final int mCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private HmiTextView mContent;
    private String mContentText;
    private HmiClickListener mHmiClickListener;
    private HmiCloseListener mHmiCloseListener;
    private ConstraintLayout mRootView;
    private HmiTextView mTitle;
    private String mTitleText;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_single_button_has_title_dialog;
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
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mButton.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_single_button_bg));
        this.mButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_text_color));
        this.mClose.setImageDrawable(ContextCompat.getDrawable(context, this.mCloseResourceId));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
    }

    private void initView(View view) {
        this.mClose = (HmiImageView) view.findViewById(R.id.close);
        this.mTitle = (HmiTextView) view.findViewById(R.id.tvTitle);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mButton = (HmiButton) view.findViewById(R.id.button);
        this.mRootView = (ConstraintLayout) view.findViewById(R.id.rootView);
        this.mButton.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiHasTitleSingleButtonDialog$cGI0dY9o8jc5RAGnYFlR8pXbTuA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiHasTitleSingleButtonDialog.this.lambda$initView$0$HmiHasTitleSingleButtonDialog(view2);
            }
        });
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiHasTitleSingleButtonDialog$B0O5j7eY6jTJfpfVOQNsJ6wk5qk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiHasTitleSingleButtonDialog.this.lambda$initView$1$HmiHasTitleSingleButtonDialog(view2);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiHasTitleSingleButtonDialog(View view) {
        HmiBtnListener hmiBtnListener = this.mBtnClickListener;
        if (hmiBtnListener != null) {
            hmiBtnListener.action();
        } else {
            HmiClickListener hmiClickListener = this.mHmiClickListener;
            if (hmiClickListener != null) {
                hmiClickListener.onHmiClick(this);
            } else {
                dismiss();
                Log.i(TAG, "mBtnClickListener is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiHasTitleSingleButtonDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            dismiss();
            Log.i(TAG, "mHmiCloseListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mClose.setImageResource(this.mCloseResourceId);
        this.mTitle.setText(this.mTitleText);
        this.mContent.setText(this.mContentText);
        this.mButton.setText(this.mButtonText);
    }

    public HmiHasTitleSingleButtonDialog setTitle(String title) {
        this.mTitleText = title;
        return this;
    }

    public HmiHasTitleSingleButtonDialog setContent(String content) {
        this.mContentText = content;
        return this;
    }

    public HmiHasTitleSingleButtonDialog setButtonText(String text) {
        this.mButtonText = text;
        return this;
    }

    @Deprecated
    public HmiHasTitleSingleButtonDialog setBtnClickListener(HmiBtnListener btnClickListener) {
        this.mBtnClickListener = btnClickListener;
        return this;
    }

    public HmiHasTitleSingleButtonDialog setOnHmiClickListener(HmiClickListener mHmiClickListener) {
        this.mHmiClickListener = mHmiClickListener;
        return this;
    }

    public HmiHasTitleSingleButtonDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }
}
