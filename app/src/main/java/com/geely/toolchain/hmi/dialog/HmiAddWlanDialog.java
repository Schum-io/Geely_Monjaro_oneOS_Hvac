package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiButton;
import com.geely.toolchain.hmi.view.HmiEditText;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiAddWlanDialog extends BaseDialog {
    private static final String TAG = BaseDialog.class.getSimpleName();
    private HmiButton mCancel;
    private String mCancelText;
    private HmiImageView mClearPassword;
    private HmiImageView mCloseIcon;
    private HmiButton mConnection;
    private String mConnectionText;
    private HmiEditText mEditPassword;
    private boolean mEnable;
    private Group mGroupId;
    private HmiTextView mHint;
    private String mHintText;
    private HmiConnectionListener mHmiConnectionListener;
    private HmiSeePasswordListener mHmiSeePasswordListener;
    private HmiTextChangedListener mHmiTextChangedListener;
    private boolean mInitCheckPwdIcon;
    private int mInputType;
    private HmiTextView mKeyOne;
    private HmiTextView mKeyTwo;
    private HmiImageView mLockIcon;
    private ConstraintLayout mPasswordCl;
    private int mPwdMinLength;
    private ConstraintLayout mRootView;
    private HmiTextView mSafeLevel;
    private String mSafeLevelText;
    private HmiImageView mSeePassword;
    private HmiTextView mSignal;
    private String mSignalText;
    private int mStyle;
    private TextWatcher mTextWatcher;
    private HmiTextView mTitle;
    private String mTitleText;

    public interface HmiConnectionListener {
        void cancel(HmiEditText passwordEditText, HmiAddWlanDialog hmiAddWlanDialog);

        void connection(HmiEditText passwordEditText, HmiAddWlanDialog hmiAddWlanDialog);
    }

    public interface HmiSeePasswordListener {
        void isShowPassword(HmiAddWlanDialog dialog, HmiEditText passwordEdittext, boolean isShowIcon);
    }

    public interface HmiTextChangedListener {
        void afterTextChanged(HmiAddWlanDialog dialog, HmiEditText passwordEdittext, Editable s);

        void beforeTextChanged(HmiAddWlanDialog dialog, HmiEditText passwordEdittext, CharSequence s, int start, int count, int after);

        void onTextChanged(HmiAddWlanDialog dialog, HmiEditText passwordEdittext, CharSequence s, int start, int before, int count);
    }

    public HmiAddWlanDialog(Context context) {
        super(context);
        this.mPwdMinLength = 8;
        this.mConnectionText = "连接";
        this.mCancelText = "取消";
        this.mStyle = 1;
        this.mHintText = "密码长度不低于8位";
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView(getWindow());
        initData();
    }

    public void hmiConfigChange(Context context) {
        int i = context.getResources().getConfiguration().uiMode;
        String str = TAG;
        Log.d(str, "uiMode ====" + i);
        Log.i(str, "hmiConfigChange: context = " + context);
        boolean hmiCurrentModelIsDark = UiUtil.getHmiCurrentModelIsDark(context);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (hmiCurrentModelIsDark) {
            attributes.dimAmount = 0.8f;
        } else {
            attributes.dimAmount = 0.4f;
        }
        window.setAttributes(attributes);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(context.getColor(R.color.oneoshmi_dialog_not_title_content_color));
        if (this.mStyle == 1) {
            this.mCloseIcon.setImageResource(R.drawable.oneoshmi_return_pop_big);
        } else {
            this.mCloseIcon.setImageResource(R.drawable.oneoshmi_close_pop_big);
        }
        this.mKeyOne.setTextColor(context.getColor(R.color.oneoshmi_dialog_title_color));
        this.mKeyTwo.setTextColor(context.getColor(R.color.oneoshmi_dialog_title_color));
        this.mSignal.setTextColor(context.getColor(R.color.oneoshmi_dialog_title_color));
        this.mSafeLevel.setTextColor(context.getColor(R.color.oneoshmi_dialog_title_color));
        this.mPasswordCl.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_input_password_bg));
        this.mLockIcon.setImageResource(R.drawable.oneoshmi_lock_press);
        this.mEditPassword.setTextColor(context.getColor(R.color.oneoshmi_dialog_title_color));
        this.mEditPassword.setHintTextColor(context.getColor(R.color.oneoshmi_dialog_password_text_hint_color));
        setSeePasswordIcon(this.mInitCheckPwdIcon);
        this.mClearPassword.setImageResource(R.drawable.oneoshmi_close);
        this.mHint.setTextColor(context.getColor(R.color.oneoshmi_dialog_content_color));
        setConnectionBtnIsEnableClick(this.mEnable, context);
        this.mCancel.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_unselect_bg));
        this.mCancel.setTextColor(context.getColor(R.color.oneoshmi_dialog_unselect_btn_text_color));
    }

    private void initView(Window window) {
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mTitle = (HmiTextView) window.findViewById(R.id.title);
        this.mSignal = (HmiTextView) window.findViewById(R.id.keyOneValue);
        this.mSafeLevel = (HmiTextView) window.findViewById(R.id.keyTwoValue);
        this.mKeyOne = (HmiTextView) window.findViewById(R.id.keyOne);
        this.mKeyTwo = (HmiTextView) window.findViewById(R.id.keyTwo);
        this.mEditPassword = (HmiEditText) window.findViewById(R.id.password);
        this.mClearPassword = (HmiImageView) window.findViewById(R.id.clearPassword);
        this.mSeePassword = (HmiImageView) window.findViewById(R.id.seePassword);
        this.mConnection = (HmiButton) window.findViewById(R.id.connection);
        this.mCancel = (HmiButton) window.findViewById(R.id.cancel);
        this.mGroupId = (Group) window.findViewById(R.id.groupId);
        this.mHint = (HmiTextView) window.findViewById(R.id.hint);
        this.mCloseIcon = (HmiImageView) window.findViewById(R.id.closeIcon);
        this.mPasswordCl = (ConstraintLayout) window.findViewById(R.id.passwordCl);
        this.mLockIcon = (HmiImageView) window.findViewById(R.id.lockIcon);
        if (this.mStyle == 1) {
            this.mGroupId.setVisibility(8);
            this.mCloseIcon.setImageResource(R.drawable.oneoshmi_return_pop_big);
            ((ConstraintLayout.LayoutParams) this.mPasswordCl.getLayoutParams()).topMargin = UiUtil.dp2px(getContext(), getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_psssword_cl_top));
        } else {
            this.mCloseIcon.setImageResource(R.drawable.oneoshmi_close_pop_big);
            this.mGroupId.setVisibility(0);
        }
        setHmiListener();
    }

    private void setHmiListener() {
        this.mCloseIcon.setOnClickListener(this::lambda$setHmiListener$0$HmiAddWlanDialog);
        this.mSeePassword.setOnClickListener(this::lambda$setHmiListener$1$HmiAddWlanDialog);
        this.mClearPassword.setOnClickListener(this::lambda$setHmiListener$2$HmiAddWlanDialog);
        TextWatcher textWatcher = this.mTextWatcher;
        if (textWatcher != null) {
            this.mEditPassword.addTextChangedListener(textWatcher);
        } else {
            this.mEditPassword.addTextChangedListener(new TextWatcher() { // from class: com.geely.toolchain.hmi.dialog.HmiAddWlanDialog.1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                    if (HmiAddWlanDialog.this.mHmiTextChangedListener != null) {
                        HmiTextChangedListener hmiTextChangedListener = HmiAddWlanDialog.this.mHmiTextChangedListener;
                        HmiAddWlanDialog hmiAddWlanDialog = HmiAddWlanDialog.this;
                        hmiTextChangedListener.beforeTextChanged(hmiAddWlanDialog, hmiAddWlanDialog.mEditPassword, s, start, count, after);
                        return;
                    }
                    Log.e(HmiAddWlanDialog.TAG, "mHmiTextChangedListener is null");
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence s, int start, int before, int count) {
                    if (HmiAddWlanDialog.this.mHmiTextChangedListener != null) {
                        HmiTextChangedListener hmiTextChangedListener = HmiAddWlanDialog.this.mHmiTextChangedListener;
                        HmiAddWlanDialog hmiAddWlanDialog = HmiAddWlanDialog.this;
                        hmiTextChangedListener.onTextChanged(hmiAddWlanDialog, hmiAddWlanDialog.mEditPassword, s, start, before, count);
                        return;
                    }
                    Log.e(HmiAddWlanDialog.TAG, "mHmiTextChangedListener is null");
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable s) {
                    if (HmiAddWlanDialog.this.mHmiTextChangedListener != null) {
                        HmiTextChangedListener hmiTextChangedListener = HmiAddWlanDialog.this.mHmiTextChangedListener;
                        HmiAddWlanDialog hmiAddWlanDialog = HmiAddWlanDialog.this;
                        hmiTextChangedListener.afterTextChanged(hmiAddWlanDialog, hmiAddWlanDialog.mEditPassword, s);
                        return;
                    }
                    Log.e(HmiAddWlanDialog.TAG, "mHmiTextChangedListener is null");
                }
            });
        }
        this.mConnection.setOnClickListener(this::lambda$setHmiListener$3$HmiAddWlanDialog);
        this.mCancel.setOnClickListener(this::lambda$setHmiListener$4$HmiAddWlanDialog);
    }

    public /* synthetic */ void lambda$setHmiListener$0$HmiAddWlanDialog(View view) {
        dismiss();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$setHmiListener$1$HmiAddWlanDialog(View view) {
        boolean z = !this.mInitCheckPwdIcon;
        this.mInitCheckPwdIcon = z;
        HmiSeePasswordListener hmiSeePasswordListener = this.mHmiSeePasswordListener;
        if (hmiSeePasswordListener != null) {
            hmiSeePasswordListener.isShowPassword(this, this.mEditPassword, z);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$setHmiListener$2$HmiAddWlanDialog(View view) {
        this.mEditPassword.setText("");
        Log.i(TAG, "password is clear");
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$setHmiListener$3$HmiAddWlanDialog(View view) {
        HmiConnectionListener hmiConnectionListener = this.mHmiConnectionListener;
        if (hmiConnectionListener != null) {
            hmiConnectionListener.connection(this.mEditPassword, this);
        } else {
            Log.e(TAG, "please set ConnectionListener");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$setHmiListener$4$HmiAddWlanDialog(View view) {
        HmiConnectionListener hmiConnectionListener = this.mHmiConnectionListener;
        if (hmiConnectionListener != null) {
            hmiConnectionListener.cancel(this.mEditPassword, this);
        } else {
            Log.e(TAG, "please set ConnectionListener");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.mTitleText);
        this.mSignal.setText(this.mSignalText);
        this.mSafeLevel.setText(this.mSafeLevelText);
        this.mConnection.setText(this.mConnectionText);
        this.mCancel.setText(this.mCancelText);
        this.mEditPassword.setMaxHeight(this.mPwdMinLength);
        int i = this.mInputType;
        if (i != 0) {
            this.mEditPassword.setInputType(i);
        }
        setSeePasswordIcon(this.mInitCheckPwdIcon);
        this.mHint.setText(this.mHintText);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.mEditPassword.setText("");
        super.dismiss();
    }

    public HmiAddWlanDialog setStyle(int style) {
        this.mStyle = style;
        return this;
    }

    public HmiAddWlanDialog setHintText(String text) {
        this.mHintText = text;
        return this;
    }

    public HmiEditText getEditPassword() {
        return this.mEditPassword;
    }

    public HmiAddWlanDialog setInputType(int type) {
        this.mInputType = type;
        return this;
    }

    public HmiAddWlanDialog setInitCheckPwdIcon(boolean isShow) {
        this.mInitCheckPwdIcon = isShow;
        return this;
    }

    public HmiAddWlanDialog setSeePasswordIcon(boolean show) {
        Log.i(TAG, "is show password icon -> " + show);
        this.mInitCheckPwdIcon = show;
        if (show) {
            this.mSeePassword.setImageResource(R.drawable.oneoshmi_show_password_press);
        } else {
            this.mSeePassword.setImageResource(R.drawable.oneoshmi_hide_password_press);
        }
        return this;
    }

    public HmiAddWlanDialog setClearPwdIconVisibility(int visibility) {
        Log.i(TAG, "ClearPwdIconVisibility is " + visibility);
        this.mClearPassword.setVisibility(visibility);
        return this;
    }

    public HmiAddWlanDialog setSeePwdIconVisibility(int visibility) {
        Log.i(TAG, "SeePwdIconVisibility is " + visibility);
        this.mSeePassword.setVisibility(visibility);
        return this;
    }

    public HmiAddWlanDialog setTitle(String title) {
        this.mTitleText = title;
        Log.i(TAG, "title text is" + title);
        return this;
    }

    public HmiAddWlanDialog setPwdMinLength(int length) {
        Log.i(TAG, "PasswordLength is " + length);
        this.mPwdMinLength = length;
        return this;
    }

    public int getPwdMinLength() {
        return this.mPwdMinLength;
    }

    public HmiAddWlanDialog setSignalText(String signalText) {
        this.mSignalText = signalText;
        Log.i(TAG, "signalText text is" + signalText);
        return this;
    }

    public HmiAddWlanDialog setSafeLevelText(String safeLevelText) {
        this.mSafeLevelText = safeLevelText;
        Log.i(TAG, "safeLevelText text is" + safeLevelText);
        return this;
    }

    public HmiAddWlanDialog setConnectionText(String connectionText) {
        this.mConnectionText = connectionText;
        Log.i(TAG, "connectionText text is" + connectionText);
        return this;
    }

    public HmiAddWlanDialog setCancelText(String cancelText) {
        this.mCancelText = cancelText;
        Log.i(TAG, "cancelText text is" + cancelText);
        return this;
    }

    @Deprecated
    public HmiAddWlanDialog setConnectionBtnIsEnableClick(boolean enable) {
        this.mEnable = enable;
        if (enable) {
            this.mConnection.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_dialog_button_select_bg));
            this.mConnection.setTextColor(getContext().getColor(R.color.oneoshmi_dialog_select_btn_text_color));
            this.mConnection.setEnabled(true);
        } else {
            this.mConnection.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_dialog_button_select_unclick_bg));
            this.mConnection.setTextColor(getContext().getColor(R.color.oneoshmi_dialog_select_btn_un_click_text_color));
            this.mConnection.setEnabled(false);
        }
        return this;
    }

    public HmiAddWlanDialog setConnectionBtnIsEnableClick(boolean enable, Context context) {
        this.mEnable = enable;
        if (enable) {
            this.mConnection.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_select_bg));
            this.mConnection.setTextColor(context.getColor(R.color.oneoshmi_dialog_select_btn_text_color));
            this.mConnection.setEnabled(true);
        } else {
            this.mConnection.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_select_unclick_bg));
            this.mConnection.setTextColor(context.getColor(R.color.oneoshmi_dialog_select_btn_un_click_text_color));
            this.mConnection.setEnabled(false);
        }
        return this;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_add_wlan_dialog;
    }

    public HmiAddWlanDialog setConnectionListener(HmiConnectionListener hmiConnectionListener) {
        this.mHmiConnectionListener = hmiConnectionListener;
        return this;
    }

    public HmiAddWlanDialog setHmiSeePasswordListener(HmiSeePasswordListener hmiSeePasswordListener) {
        this.mHmiSeePasswordListener = hmiSeePasswordListener;
        return this;
    }

    @Deprecated
    public HmiAddWlanDialog setHmiTextChangedListener(HmiTextChangedListener hmiTextChangedListener) {
        this.mHmiTextChangedListener = hmiTextChangedListener;
        return this;
    }

    public HmiAddWlanDialog setTextWatcher(TextWatcher textWatcher) {
        this.mTextWatcher = textWatcher;
        return this;
    }
}
