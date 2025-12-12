package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiSingleButtonHasIconAndTitleDialog extends BaseHmiDialogFragment {
    private static final String TAG = "HmiSingleButtonHasIconAndTitleDialog";
    private int iconResourceId;
    private HmiStateButton mBtn;
    private String mBtnText;
    private HmiImageView mClose;
    private final int mCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private HmiTextView mContent;
    private String mContentText;
    private HmiBtnListener mHmiBtnListener;
    private HmiClickListener mHmiClickListener;
    private HmiCloseListener mHmiCloseListener;
    private HmiImageView mIcon;
    private FrameLayout mRootView;
    private HmiTextView mTitle;
    private String mTitleText;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_single_button_has_icon_and_title_dialog;
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
        this.mClose.setImageDrawable(ContextCompat.getDrawable(context, this.mCloseResourceId));
        this.mIcon.setImageDrawable(ContextCompat.getDrawable(context, this.iconResourceId));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_not_title_content_color));
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
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mBtn = (HmiStateButton) view.findViewById(R.id.btn);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mIcon = (HmiImageView) view.findViewById(R.id.icon);
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.HmiSingleButtonHasIconAndTitleDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (HmiSingleButtonHasIconAndTitleDialog.this.mHmiCloseListener != null) {
                    HmiSingleButtonHasIconAndTitleDialog.this.mHmiCloseListener.hmiClose(HmiSingleButtonHasIconAndTitleDialog.this);
                } else {
                    Log.i(HmiSingleButtonHasIconAndTitleDialog.TAG, "onClick: mHmiCloseListener is null");
                    HmiSingleButtonHasIconAndTitleDialog.this.dismiss();
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        this.mBtn.setOnClickListener(this::lambda$initView$0$HmiSingleButtonHasIconAndTitleDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiSingleButtonHasIconAndTitleDialog(View view) {
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
        this.mContent.setText(this.mContentText);
        this.mBtn.setText(this.mBtnText);
        this.mIcon.setImageResource(this.iconResourceId);
    }

    public HmiSingleButtonHasIconAndTitleDialog setHmiTitle(String title) {
        this.mTitleText = title;
        return this;
    }

    public HmiSingleButtonHasIconAndTitleDialog setHmiContent(String content) {
        this.mContentText = content;
        return this;
    }

    public HmiSingleButtonHasIconAndTitleDialog setHmiBtnText(String text) {
        this.mBtnText = text;
        return this;
    }

    public HmiSingleButtonHasIconAndTitleDialog setHmiIcon(int iconResourceId) {
        this.iconResourceId = iconResourceId;
        return this;
    }

    public HmiSingleButtonHasIconAndTitleDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.i(TAG, "setHmiCloseListener: run");
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }

    @Deprecated
    public HmiSingleButtonHasIconAndTitleDialog setHmiBtnListener(HmiBtnListener hmiBtnListener) {
        this.mHmiBtnListener = hmiBtnListener;
        return this;
    }

    public HmiSingleButtonHasIconAndTitleDialog setOnHmiClickListener(HmiClickListener mHmiClickListener) {
        this.mHmiClickListener = mHmiClickListener;
        return this;
    }
}
