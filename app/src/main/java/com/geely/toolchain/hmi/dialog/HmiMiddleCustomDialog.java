package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiRectangleCheckBox;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Objects;

/* loaded from: classes.dex */
public class HmiMiddleCustomDialog extends BaseHmiDialogFragment {
    private String hmiDesc;
    private String hmiLeftBtnText;
    private String hmiRightBtnText;
    private String hmiSingleMarginBtnText;
    private View hmiView;
    private HmiRectangleCheckBox mBox;
    private HmiImageView mCloseIcon;
    private CharSequence mContent;
    private FrameLayout mCustomView;
    private HmiTextView mDesc;
    private HmiCloseListener mHmiCloseListener;
    private HmiConfigChangeListener mHmiConfigChangeListener;
    private HmiNegativeCheckedListener mHmiNegativeCheckedListener;
    private HmiNegativeClickListener mHmiNegativeClickListener;
    private HmiPositiveCheckedListener mHmiPositiveCheckedListener;
    private HmiPositiveClickListener mHmiPositiveClickListener;
    private HmiPrivacyClickListener mHmiPrivacyClickListener;
    private int mHmiPrivacyIconId;
    private HmiSingleButtonListener mHmiSingleButtonListener;
    private String mHmiTitle;
    private boolean mIsSingleButton;
    private LinearLayout mLlCheckbox;
    private HmiStateButton mNegativeButton;
    private HmiStateButton mPositiveButton;
    private CharSequence mPrivacyString;
    private RelativeLayout mRootView;
    private HmiStateButton mSingleButton;
    private HmiTextView mTvTitle;
    private int hmiCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private int mWidth = 1488;
    private int mHeight = 680;
    private boolean isShowCheckBox = false;
    private boolean isChecked = false;

    public interface HmiConfigChangeListener {
        void onConfigChange(HmiMiddleCustomDialog dialog, Configuration newConfig);
    }

    public interface HmiNegativeCheckedListener {
        void onNegativeAction(HmiMiddleCustomDialog dialog, boolean isChecked);
    }

    public interface HmiNegativeClickListener {
        void onNegativeClick(HmiMiddleCustomDialog dialog);
    }

    public interface HmiPositiveCheckedListener {
        void onPositiveAction(HmiMiddleCustomDialog dialog, boolean isChecked);
    }

    public interface HmiPositiveClickListener {
        void onPositiveClick(HmiMiddleCustomDialog dialog);
    }

    public interface HmiPrivacyClickListener {
        void onClick(View view);
    }

    public interface HmiSingleButtonListener {
        void onClick(HmiMiddleCustomDialog dialog, boolean isChecked);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_dialog_custom_middle_layout;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.mHmiTitle = savedInstanceState.getString("hmiTitle");
            this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
            this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
            this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
            this.hmiSingleMarginBtnText = savedInstanceState.getString("hmiSingleMarginBtnText", this.hmiSingleMarginBtnText);
            this.hmiDesc = savedInstanceState.getString("hmiDesc", this.hmiDesc);
            this.isChecked = savedInstanceState.getBoolean("isChecked", this.isChecked);
            this.mIsSingleButton = savedInstanceState.getBoolean("mIsSingleButton", this.mIsSingleButton);
            this.mPrivacyString = savedInstanceState.getCharSequence("mPrivacyString", this.mPrivacyString);
        }
        initView(view);
        initData();
        initListener();
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = ((Dialog) Objects.requireNonNull(getDialog())).getWindow();
        if (window != null) {
            window.setLayout(this.mWidth, this.mHeight);
        }
        Log.i(this.TAG, "onStart: run mWidth:" + this.mWidth + "mHeight: " + this.mHeight);
    }

    private void initView(View view) {
        Log.i(this.TAG, "initView: run");
        this.mRootView = (RelativeLayout) view.findViewById(R.id.rootView);
        this.mCloseIcon = (HmiImageView) view.findViewById(R.id.close);
        this.mPositiveButton = (HmiStateButton) view.findViewById(R.id.rightBtn);
        this.mNegativeButton = (HmiStateButton) view.findViewById(R.id.leftBtn);
        this.mSingleButton = (HmiStateButton) view.findViewById(R.id.singleMarginBtn);
        this.mCustomView = (FrameLayout) view.findViewById(R.id.customView);
        this.mLlCheckbox = (LinearLayout) view.findViewById(R.id.ll_checkbox);
        this.mBox = (HmiRectangleCheckBox) view.findViewById(R.id.box);
        this.mDesc = (HmiTextView) view.findViewById(R.id.desc);
        this.mTvTitle = (HmiTextView) view.findViewById(R.id.title);
        ((HmiImageView) view.findViewById(R.id.pri_icon)).setImageResource(this.mHmiPrivacyIconId);
        HmiTextView hmiTextView = (HmiTextView) view.findViewById(R.id.pri_tv);
        hmiTextView.setText(this.mPrivacyString);
        HmiTextView hmiTextView2 = (HmiTextView) view.findViewById(R.id.content_text);
        hmiTextView2.setText(this.mContent);
        hmiTextView2.setVisibility(TextUtils.isEmpty(this.mContent) ? 8 : 0);
        hmiTextView.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.HmiMiddleCustomDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (HmiMiddleCustomDialog.this.isShowCheckBox && HmiMiddleCustomDialog.this.mHmiPrivacyClickListener != null) {
                    HmiMiddleCustomDialog.this.mHmiPrivacyClickListener.onClick(view2);
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(view2);
            }
        });
        this.mBox.setChecked(this.isChecked);
        setSingleButton();
    }

    private void setSingleButton() {
        if (this.mIsSingleButton) {
            this.mNegativeButton.setVisibility(8);
        } else {
            this.mNegativeButton.setVisibility(0);
        }
    }

    private void initData() {
        checkBtnText(this.mPositiveButton, this.hmiRightBtnText);
        checkBtnText(this.mNegativeButton, this.hmiLeftBtnText);
        checkSingleBtnText();
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
        Log.i(this.TAG, "initData: run");
        if (!this.mHmiTitle.isEmpty()) {
            this.mTvTitle.setText(this.mHmiTitle);
        }
        if (this.isShowCheckBox) {
            this.mLlCheckbox.setVisibility(0);
            this.mDesc.setText(this.hmiDesc);
        } else {
            this.mLlCheckbox.setVisibility(8);
        }
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

    private void checkSingleBtnText() {
        if (TextUtils.isEmpty(this.hmiSingleMarginBtnText)) {
            Log.e(this.TAG, "single button text  isEmpty");
            this.mSingleButton.setVisibility(8);
        } else {
            this.mSingleButton.setVisibility(0);
            this.mSingleButton.setText(this.hmiSingleMarginBtnText);
            this.mSingleButton.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMiddleCustomDialog$v8MXCJf7QyDWlSTQ-76eCNYWA7s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HmiMiddleCustomDialog.this.lambda$checkSingleBtnText$0$HmiMiddleCustomDialog(view);
                }
            });
        }
    }

    public /* synthetic */ void lambda$checkSingleBtnText$0$HmiMiddleCustomDialog(View view) {
        HmiSingleButtonListener hmiSingleButtonListener = this.mHmiSingleButtonListener;
        if (hmiSingleButtonListener != null) {
            hmiSingleButtonListener.onClick(this, this.isChecked);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initListener() {
        this.mNegativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMiddleCustomDialog$QvGUMjUnSx3kLZIkMmjB_8J9Ry0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiMiddleCustomDialog.this.lambda$initListener$1$HmiMiddleCustomDialog(view);
            }
        });
        this.mPositiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMiddleCustomDialog$x6_w16TpBzBtN_ghYN8zRrvrpLM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiMiddleCustomDialog.this.lambda$initListener$2$HmiMiddleCustomDialog(view);
            }
        });
        this.mCloseIcon.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMiddleCustomDialog$Rpo_RvO03yTSW-Dds78xLbfEVkI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiMiddleCustomDialog.this.lambda$initListener$3$HmiMiddleCustomDialog(view);
            }
        });
        this.mBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiMiddleCustomDialog$HBCDC_a0aG_TKOhDwh7q79b3PSw
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                HmiMiddleCustomDialog.this.lambda$initListener$4$HmiMiddleCustomDialog(compoundButton, z);
            }
        });
    }

    public /* synthetic */ void lambda$initListener$1$HmiMiddleCustomDialog(View view) {
        if (this.isShowCheckBox) {
            HmiNegativeCheckedListener hmiNegativeCheckedListener = this.mHmiNegativeCheckedListener;
            if (hmiNegativeCheckedListener != null) {
                hmiNegativeCheckedListener.onNegativeAction(this, this.isChecked);
            } else {
                Log.d(this.TAG, "leftAction mHmiSelectListener is null");
            }
        } else {
            HmiNegativeClickListener hmiNegativeClickListener = this.mHmiNegativeClickListener;
            if (hmiNegativeClickListener != null) {
                hmiNegativeClickListener.onNegativeClick(this);
            } else {
                Log.d(this.TAG, "leftAction mHmiSelectListener is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initListener$2$HmiMiddleCustomDialog(View view) {
        if (this.isShowCheckBox) {
            HmiPositiveCheckedListener hmiPositiveCheckedListener = this.mHmiPositiveCheckedListener;
            if (hmiPositiveCheckedListener != null) {
                hmiPositiveCheckedListener.onPositiveAction(this, this.isChecked);
            } else {
                Log.d(this.TAG, "rightAction mHmiSelectListener is null");
            }
        } else {
            HmiPositiveClickListener hmiPositiveClickListener = this.mHmiPositiveClickListener;
            if (hmiPositiveClickListener != null) {
                hmiPositiveClickListener.onPositiveClick(this);
            } else {
                Log.d(this.TAG, "rightAction mHmiSelectListener is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initListener$3$HmiMiddleCustomDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            Log.d(this.TAG, "initView: mHmiCloseListener is null");
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initListener$4$HmiMiddleCustomDialog(CompoundButton compoundButton, boolean z) {
        this.isChecked = z;
        SensorsDataAutoTrackHelper.trackViewOnClick(compoundButton);
    }

    private void checkBtnText(HmiStateButton btn, String hmiBtnText) {
        if (TextUtils.isEmpty(hmiBtnText)) {
            btn.setVisibility(8);
        } else {
            btn.setVisibility(0);
            btn.setText(hmiBtnText);
        }
    }

    private void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        setTitlesColor();
        this.mPositiveButton.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_dialog_btn_radius));
        this.mNegativeButton.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_un_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_dialog_btn_radius));
        this.mPositiveButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
        this.mNegativeButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
        this.mDesc.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_desc_color));
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
        this.mBox.setButtonDrawable(ContextCompat.getDrawable(context, R.drawable.oneoshmi_check_box_one_bg));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
        HmiConfigChangeListener hmiConfigChangeListener = this.mHmiConfigChangeListener;
        if (hmiConfigChangeListener != null) {
            hmiConfigChangeListener.onConfigChange(this, newConfig);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.d(this.TAG, this.TAG + " onSaveInstanceState");
        outState.putString("hmiTitle", this.mHmiTitle);
        outState.putInt("hmiCloseResourceId", this.hmiCloseResourceId);
        outState.putString("hmiLeftBtnText", this.hmiLeftBtnText);
        outState.putString("hmiRightBtnText", this.hmiRightBtnText);
        outState.putString("hmiSingleMarginBtnText", this.hmiSingleMarginBtnText);
        outState.putString("hmiDesc", this.hmiDesc);
        outState.putBoolean("isChecked", this.isChecked);
        outState.putBoolean("mIsSingleButton", this.mIsSingleButton);
        outState.putCharSequence("mPrivacyString", this.mPrivacyString);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (savedInstanceState == null) {
            Log.d(this.TAG, "onViewStateRestored: savedInstanceState is null");
            return;
        }
        this.mHmiTitle = savedInstanceState.getString("hmiTitle");
        this.hmiDesc = savedInstanceState.getString("hmiDesc", this.hmiDesc);
        this.isChecked = savedInstanceState.getBoolean("isChecked", this.isChecked);
        this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
        this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
        this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
        this.hmiSingleMarginBtnText = savedInstanceState.getString("hmiSingleMarginBtnText", this.hmiSingleMarginBtnText);
        this.mIsSingleButton = savedInstanceState.getBoolean("mIsSingleButton", this.mIsSingleButton);
        this.mPrivacyString = savedInstanceState.getCharSequence("mPrivacyString", this.mPrivacyString);
    }

    public HmiMiddleCustomDialog setDialogSize(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        return this;
    }

    public HmiMiddleCustomDialog setHmiAddView(View view) {
        Log.d(this.TAG, "setHmiAddView: " + view.toString());
        this.hmiView = view;
        return this;
    }

    public HmiMiddleCustomDialog setPrivacyIconAndContent(int resId, CharSequence privacyText) {
        Log.d(this.TAG, "setIcon: " + ((Object) privacyText));
        this.mHmiPrivacyIconId = resId;
        this.mPrivacyString = privacyText;
        return this;
    }

    public HmiMiddleCustomDialog setPrivacyClickListener(HmiPrivacyClickListener listener) {
        this.mHmiPrivacyClickListener = listener;
        return this;
    }

    public HmiMiddleCustomDialog setHmiTitle(String title) {
        this.mHmiTitle = title;
        return this;
    }

    public HmiMiddleCustomDialog setHmiDesc(String desc) {
        Log.d(this.TAG, "setHmiDesc: " + desc);
        this.hmiDesc = desc;
        this.isShowCheckBox = !TextUtils.isEmpty(desc);
        return this;
    }

    public HmiMiddleCustomDialog setHmiContentText(CharSequence contentText) {
        Log.d(this.TAG, "setHmiDesc: " + ((Object) contentText));
        this.mContent = contentText;
        return this;
    }

    public HmiMiddleCustomDialog setHmiCloseResourceId(int closeResourceId) {
        Log.d(this.TAG, "setHmiCloseResourceId: " + closeResourceId);
        this.hmiCloseResourceId = closeResourceId;
        return this;
    }

    public HmiMiddleCustomDialog setHmiLeftBtnText(String leftBtnText) {
        Log.d(this.TAG, "setHmiLeftBtnText: " + leftBtnText);
        if (!TextUtils.isEmpty(this.hmiSingleMarginBtnText)) {
            throw new IllegalArgumentException("only allow to set single margin button");
        }
        this.hmiLeftBtnText = leftBtnText;
        return this;
    }

    public HmiMiddleCustomDialog setHmiRightBtnText(String rightBtnText) {
        Log.d(this.TAG, "setHmiRightBtnText: " + rightBtnText);
        if (!TextUtils.isEmpty(this.hmiSingleMarginBtnText)) {
            throw new IllegalArgumentException("only allow to set single margin button");
        }
        this.hmiRightBtnText = rightBtnText;
        return this;
    }

    public HmiMiddleCustomDialog setSingleMarginBtnText(String singleMarginBtnText) {
        Log.d(this.TAG, "setHmiRightBtnText: " + singleMarginBtnText);
        if (!TextUtils.isEmpty(this.hmiLeftBtnText) || !TextUtils.isEmpty(this.hmiRightBtnText)) {
            throw new IllegalArgumentException("only allow to set left or right button");
        }
        this.hmiSingleMarginBtnText = singleMarginBtnText;
        return this;
    }

    public HmiMiddleCustomDialog setHmiLeftButtonListener(HmiNegativeClickListener hmiNegativeClickListener) {
        Log.d(this.TAG, "setHmiSelectListener: run");
        if (this.isShowCheckBox) {
            throw new IllegalArgumentException("please use not with checkbox");
        }
        this.mHmiNegativeClickListener = hmiNegativeClickListener;
        return this;
    }

    public HmiMiddleCustomDialog setHmiRightButtonListener(HmiPositiveClickListener hmiPositiveClickListener) {
        Log.d(this.TAG, "setHmiSelectListener: run isShowCheckBox = " + this.isShowCheckBox);
        if (this.isShowCheckBox) {
            throw new IllegalArgumentException("please use not with checkbox");
        }
        this.mHmiPositiveClickListener = hmiPositiveClickListener;
        return this;
    }

    public HmiMiddleCustomDialog setHmiLeftButtonWithCheckBoxListener(HmiNegativeCheckedListener listener) {
        Log.d(this.TAG, "setHmiSelectListener: run isShowCheckBox = " + this.isShowCheckBox);
        if (!this.isShowCheckBox) {
            throw new IllegalArgumentException("please use with checkbox");
        }
        this.mHmiNegativeCheckedListener = listener;
        return this;
    }

    public HmiMiddleCustomDialog setHmiRightButtonWithCheckBoxListener(HmiPositiveCheckedListener listener) {
        Log.d(this.TAG, "setHmiSelectListener: run isShowCheckBox = " + this.isShowCheckBox);
        if (!this.isShowCheckBox) {
            throw new IllegalArgumentException("please use with checkbox");
        }
        this.mHmiPositiveCheckedListener = listener;
        return this;
    }

    public HmiMiddleCustomDialog setSingleButtonClickListener(HmiSingleButtonListener listener) {
        Log.d(this.TAG, "setSingleButtonClickListener ");
        this.mHmiSingleButtonListener = listener;
        return this;
    }

    public HmiMiddleCustomDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.d(this.TAG, "setHmiCloseListener: run isShowCheckBox = " + this.isShowCheckBox);
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }

    public void setTitlesColor() {
        Context context = getContext();
        if (context == null) {
            Log.i(this.TAG, "hmiConfigChange: context is null");
        } else {
            this.mTvTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        }
    }

    public HmiMiddleCustomDialog setHmiConfigChangeListener(HmiConfigChangeListener hmiConfigChangeListener) {
        Log.i(this.TAG, "setHmiSelectTitleListener: hmiSelectTitleListener = " + hmiConfigChangeListener);
        this.mHmiConfigChangeListener = hmiConfigChangeListener;
        return this;
    }

    public HmiMiddleCustomDialog isSingleButton(boolean isSingleButton) {
        this.mIsSingleButton = isSingleButton;
        return this;
    }
}
