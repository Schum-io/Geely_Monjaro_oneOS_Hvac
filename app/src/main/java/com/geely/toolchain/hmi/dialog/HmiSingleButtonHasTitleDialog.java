package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiButton;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiSingleButtonHasTitleDialog extends BaseDialog {
    private static final String TAG = "HmiSingleButtonHasTitleDialog";
    private BtnClickListener mBtnClickListener;
    private BtnClickListener2 mBtnClickListener2;
    private HmiButton mButton;
    private String mButtonText;
    private HmiImageView mClose;
    private int mCloseResourceId;
    private HmiTextView mContent;
    private String mContentText;
    private HmiCloseListener mHmiCloseListener;
    private ConstraintLayout mRootView;
    private HmiTextView mTitle;
    private String mTitleText;

    public interface BtnClickListener {
        void action();
    }

    public interface BtnClickListener2 {
        void action(HmiSingleButtonHasTitleDialog dialog);
    }

    public interface HmiCloseListener {
        void closeDialog();
    }

    public HmiSingleButtonHasTitleDialog(Context context) {
        super(context);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_single_button_has_title_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView(getWindow());
        initData();
    }

    public void hmiConfigChange(Context context) {
        Log.d(TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        Log.i(TAG, "hmiConfigChange: context = " + context);
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
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mButton.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_single_button_bg));
        this.mButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_text_color));
        this.mClose.setImageResource(R.drawable.oneoshmi_close_pop_big);
    }

    private void initView(Window window) {
        this.mClose = (HmiImageView) window.findViewById(R.id.close);
        this.mTitle = (HmiTextView) window.findViewById(R.id.tvTitle);
        this.mContent = (HmiTextView) window.findViewById(R.id.content);
        this.mButton = (HmiButton) window.findViewById(R.id.button);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mButton.setOnClickListener(this::lambda$initView$0$HmiSingleButtonHasTitleDialog);
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.HmiSingleButtonHasTitleDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (HmiSingleButtonHasTitleDialog.this.mHmiCloseListener != null) {
                    HmiSingleButtonHasTitleDialog.this.mHmiCloseListener.closeDialog();
                } else {
                    Log.i(HmiSingleButtonHasTitleDialog.TAG, "mHmiCloseListener is null");
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiSingleButtonHasTitleDialog(View view) {
        BtnClickListener btnClickListener = this.mBtnClickListener;
        if (btnClickListener != null) {
            btnClickListener.action();
            dismiss();
        } else {
            Log.i(TAG, "mBtnClickListener is null");
            BtnClickListener2 btnClickListener2 = this.mBtnClickListener2;
            if (btnClickListener2 != null) {
                btnClickListener2.action(this);
            } else {
                Log.i(TAG, "mBtnClickListener2 is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mClose.setImageResource(this.mCloseResourceId);
        this.mTitle.setText(this.mTitleText);
        this.mContent.setText(this.mContentText);
        this.mButton.setText(this.mButtonText);
    }

    public HmiSingleButtonHasTitleDialog setCloseResourceId(int closeResourceId) {
        this.mCloseResourceId = closeResourceId;
        return this;
    }

    public HmiSingleButtonHasTitleDialog setTitle(String title) {
        this.mTitleText = title;
        return this;
    }

    public HmiSingleButtonHasTitleDialog setContent(String content) {
        this.mContentText = content;
        return this;
    }

    public HmiSingleButtonHasTitleDialog setButtonText(String text) {
        this.mButtonText = text;
        return this;
    }

    @Deprecated
    public HmiSingleButtonHasTitleDialog setBtnClickListener(BtnClickListener btnClickListener) {
        this.mBtnClickListener = btnClickListener;
        return this;
    }

    public HmiSingleButtonHasTitleDialog setBtnClickListener2(BtnClickListener2 btnClickListener) {
        this.mBtnClickListener2 = btnClickListener;
        return this;
    }

    public void setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        this.mHmiCloseListener = hmiCloseListener;
    }
}
