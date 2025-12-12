package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
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
public class HmiHasImageDoubleButtonMediumDialog extends BaseHmiDialogFragment {
    private Bitmap hmiBitmap;
    private int hmiCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private String hmiContent;
    private int hmiImageResource;
    private String hmiLeftBtnText;
    private String hmiRightBtnText;
    private String hmiTitle;
    private HmiImageView mCloseIcon;
    private HmiTextView mContent;
    private HmiCloseListener mHmiCloseListener;
    private HmiSelectListener mHmiSelectListener;
    private HmiImageView mImage;
    private HmiStateButton mLeftBtn;
    private HmiStateButton mRightBtn;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_has_image_double_button_medium_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiImageResource = savedInstanceState.getInt("hmiImageResource", this.hmiImageResource);
            this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
            this.hmiBitmap = (Bitmap) savedInstanceState.getParcelable("hmiBitmap");
            this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
            this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
            this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        Log.i(this.TAG, "initView: run");
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mCloseIcon = (HmiImageView) view.findViewById(R.id.close);
        this.mImage = (HmiImageView) view.findViewById(R.id.img);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mLeftBtn = (HmiStateButton) view.findViewById(R.id.leftBtn);
        this.mRightBtn = (HmiStateButton) view.findViewById(R.id.rightBtn);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mLeftBtn.setOnClickListener(this::lambda$initView$0$HmiHasImageDoubleButtonMediumDialog);
        this.mRightBtn.setOnClickListener(this::lambda$initView$1$HmiHasImageDoubleButtonMediumDialog);
        this.mCloseIcon.setOnClickListener(this::lambda$initView$2$HmiHasImageDoubleButtonMediumDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiHasImageDoubleButtonMediumDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.leftAction(this);
        } else {
            Log.i(this.TAG, "leftAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiHasImageDoubleButtonMediumDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.rightAction(this);
        } else {
            Log.i(this.TAG, "rightAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$2$HmiHasImageDoubleButtonMediumDialog(View view) {
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
        this.mContent.setText(this.hmiContent);
        this.mLeftBtn.setText(this.hmiLeftBtnText);
        this.mRightBtn.setText(this.hmiRightBtnText);
        this.mImage.setImageResource(this.hmiImageResource);
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
        Bitmap bitmap = this.hmiBitmap;
        if (bitmap != null) {
            this.mImage.setImageBitmap(bitmap);
        }
    }

    private void hmiConfigChange() {
        Log.i(this.TAG, "hmiConfigChange: run");
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
        this.mImage.setImageResource(this.hmiImageResource);
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
        Bitmap bitmap = this.hmiBitmap;
        if (bitmap != null) {
            this.mImage.setImageBitmap(bitmap);
        }
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
        outState.putInt("hmiImageResource", this.hmiImageResource);
        outState.putInt("hmiCloseResourceId", this.hmiCloseResourceId);
        outState.putParcelable("hmiBitmap", this.hmiBitmap);
        outState.putString("hmiContent", this.hmiContent);
        outState.putString("hmiLeftBtnText", this.hmiLeftBtnText);
        outState.putString("hmiRightBtnText", this.hmiRightBtnText);
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
        this.hmiImageResource = savedInstanceState.getInt("hmiImageResource", this.hmiImageResource);
        this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
        this.hmiBitmap = (Bitmap) savedInstanceState.getParcelable("hmiBitmap");
        this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
        this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
        this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiTitle(String title) {
        Log.i(this.TAG, "setHmiTitle: title = " + title);
        this.hmiTitle = title;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiCloseIcon(int closeIconId) {
        this.hmiCloseResourceId = closeIconId;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiImageResource(int imageResource) {
        Log.i(this.TAG, "setHmiImageResource: imageResource = " + imageResource);
        this.hmiImageResource = imageResource;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiBitmap(Bitmap bitmap) {
        Log.i(this.TAG, "setHmiBitmap: bitmap =" + bitmap);
        this.hmiBitmap = bitmap;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiContent(String content) {
        Log.i(this.TAG, "setHmiContent: content = " + content);
        this.hmiContent = content;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiLeftBtnText(String leftBtnText) {
        Log.i(this.TAG, "setHmiLeftBtnText: leftBtnText = " + leftBtnText);
        this.hmiLeftBtnText = leftBtnText;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiRightBtnText(String rightBtnText) {
        Log.i(this.TAG, "setHmiRightBtnText: rightBtnText = " + rightBtnText);
        this.hmiRightBtnText = rightBtnText;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiSelectListener(HmiSelectListener selectListener) {
        Log.i(this.TAG, "setHmiSelectListener: +selectListener =" + selectListener);
        this.mHmiSelectListener = selectListener;
        return this;
    }

    public HmiHasImageDoubleButtonMediumDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.i(this.TAG, "setHmiCloseListener: run");
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }
}
