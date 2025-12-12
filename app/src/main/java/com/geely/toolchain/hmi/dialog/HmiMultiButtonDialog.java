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
public class HmiMultiButtonDialog extends BaseHmiDialogFragment {
    private String hmiContent;
    private String hmiFirstBtnText;
    private String hmiSecondBtnText;
    private String hmiThirdBtnText;
    private String hmiTitle;
    private HmiTextView mContent;
    private HmiStateButton mFirstBtn;
    private HmiMultiButtonClickListener mHmiMultiButtonClickListener;
    private FrameLayout mRootView;
    private HmiStateButton mSecondBtn;
    private HmiStateButton mThirdBtn;
    private HmiTextView mTitle;

    public interface HmiMultiButtonClickListener {
        void action(HmiMultiButtonDialog dialog, int btnOrder);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_multi_button_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
            this.hmiFirstBtnText = savedInstanceState.getString("hmiFirstBtnText", this.hmiFirstBtnText);
            this.hmiSecondBtnText = savedInstanceState.getString("hmiSecondBtnText", this.hmiSecondBtnText);
            this.hmiThirdBtnText = savedInstanceState.getString("hmiThirdBtnText", this.hmiThirdBtnText);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        Log.i(this.TAG, "initView started");
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mFirstBtn = (HmiStateButton) view.findViewById(R.id.firstBtn);
        this.mSecondBtn = (HmiStateButton) view.findViewById(R.id.secondBtn);
        this.mThirdBtn = (HmiStateButton) view.findViewById(R.id.thirdBtn);
        this.mFirstBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMultiButtonDialog$DbBOQ6XjaeCcToMnXRn3AGa5QmE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiMultiButtonDialog.this.lambda$initView$0$HmiMultiButtonDialog(view2);
            }
        });
        this.mSecondBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMultiButtonDialog$DvXWaSVgU92svo02wc2l00oAIBc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiMultiButtonDialog.this.lambda$initView$1$HmiMultiButtonDialog(view2);
            }
        });
        this.mThirdBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMultiButtonDialog$23YQGxHJjqjaXg9wvkGnfLUyJbY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiMultiButtonDialog.this.lambda$initView$2$HmiMultiButtonDialog(view2);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiMultiButtonDialog(View view) {
        HmiMultiButtonClickListener hmiMultiButtonClickListener = this.mHmiMultiButtonClickListener;
        if (hmiMultiButtonClickListener != null) {
            hmiMultiButtonClickListener.action(this, 1);
        } else {
            Log.i(this.TAG, "mHmiMultiButtonClickListener is null ");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiMultiButtonDialog(View view) {
        HmiMultiButtonClickListener hmiMultiButtonClickListener = this.mHmiMultiButtonClickListener;
        if (hmiMultiButtonClickListener != null) {
            hmiMultiButtonClickListener.action(this, 2);
        } else {
            Log.i(this.TAG, "mHmiMultiButtonClickListener is null ");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$2$HmiMultiButtonDialog(View view) {
        HmiMultiButtonClickListener hmiMultiButtonClickListener = this.mHmiMultiButtonClickListener;
        if (hmiMultiButtonClickListener != null) {
            hmiMultiButtonClickListener.action(this, 3);
        } else {
            Log.i(this.TAG, "mHmiMultiButtonClickListener is null ");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.hmiTitle);
        this.mContent.setText(this.hmiContent);
        this.mFirstBtn.setText(this.hmiFirstBtnText);
        this.mSecondBtn.setText(this.hmiSecondBtnText);
        this.mThirdBtn.setText(this.hmiThirdBtnText);
    }

    private void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mFirstBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
        this.mSecondBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
        this.mThirdBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
        this.mFirstBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_color_click_default), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
        this.mSecondBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_un_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
        this.mThirdBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_un_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
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
        outState.putString("hmiFirstBtnText", this.hmiFirstBtnText);
        outState.putString("hmiSecondBtnText", this.hmiSecondBtnText);
        outState.putString("hmiThirdBtnText", this.hmiThirdBtnText);
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
        this.hmiFirstBtnText = savedInstanceState.getString("hmiFirstBtnText", this.hmiFirstBtnText);
        this.hmiSecondBtnText = savedInstanceState.getString("hmiSecondBtnText", this.hmiSecondBtnText);
        this.hmiThirdBtnText = savedInstanceState.getString("hmiThirdBtnText", this.hmiThirdBtnText);
    }

    public HmiMultiButtonDialog setHmiTitle(String title) {
        this.hmiTitle = title;
        return this;
    }

    public HmiMultiButtonDialog setHmiContent(String content) {
        this.hmiContent = content;
        return this;
    }

    public HmiMultiButtonDialog setHmiFirstBtnText(String firstBtnText) {
        this.hmiFirstBtnText = firstBtnText;
        return this;
    }

    public HmiMultiButtonDialog setHmiSecondBtnText(String secondBtnText) {
        this.hmiSecondBtnText = secondBtnText;
        return this;
    }

    public HmiMultiButtonDialog setHmiThirdBtnText(String thirdBtnText) {
        this.hmiThirdBtnText = thirdBtnText;
        return this;
    }

    public void setHmiMultiButtonClickListener(HmiMultiButtonClickListener hmiMultiButtonClickListener) {
        this.mHmiMultiButtonClickListener = hmiMultiButtonClickListener;
    }
}
