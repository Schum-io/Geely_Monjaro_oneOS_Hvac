package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiCircleCheckBox;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiVerificationAndRegistrationDialog extends BaseDialog {
    private static final String TAG = "VerificationAndRegistrationDialog";
    private HmiCircleCheckBox checkBox;
    private HmiImageView mCancel;
    private HmiTextView mChangeNumText;
    private HmiTextView mContent;
    private String mContentText;
    private HmiQrCodeRefreshListener mHmiQrCodeRefreshListener;
    private Bitmap mIconBitmap;
    private int mIconId;
    private HmiImageView mQrCode;
    private HmiTextView mRegister;
    private ConstraintLayout mRegisterCl;
    private ConstraintLayout mRootView;
    private HmiTextView mTitle;
    private String mTitleText;
    private LinearLayout qrIconLl;
    private RegistrationListener registrationListener;
    private boolean relativelyWideState;

    public interface HmiQrCodeRefreshListener {
        void refresh();
    }

    public interface RegistrationListener {
        void registration(boolean isChecked);
    }

    public HmiVerificationAndRegistrationDialog(Context context) {
        super(context);
        this.mIconId = R.drawable.oneoshmi_close_pop_big;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_verification_and_registrarion_dialog;
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
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_not_title_content_color));
        this.mCancel.setImageResource(this.mIconId);
        this.qrIconLl.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_code_bg));
        this.mQrCode.setImageBitmap(this.mIconBitmap);
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.checkBox.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_check_box_two_bg));
        this.mChangeNumText.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mRegister.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_bg_color));
    }

    private void initView(Window window) {
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mTitle = (HmiTextView) window.findViewById(R.id.title);
        this.mQrCode = (HmiImageView) window.findViewById(R.id.qrCode);
        this.mContent = (HmiTextView) window.findViewById(R.id.content);
        this.mRegisterCl = (ConstraintLayout) window.findViewById(R.id.registerCl);
        this.mCancel = (HmiImageView) window.findViewById(R.id.cancel);
        this.mRegister = (HmiTextView) window.findViewById(R.id.register);
        this.checkBox = (HmiCircleCheckBox) window.findViewById(R.id.box);
        this.mChangeNumText = (HmiTextView) window.findViewById(R.id.changeNumText);
        this.qrIconLl = (LinearLayout) window.findViewById(R.id.qrIconLl);
        HmiImageView hmiImageView = (HmiImageView) window.findViewById(R.id.cancel);
        this.mCancel = hmiImageView;
        hmiImageView.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiVerificationAndRegistrationDialog$sNhLBlrZSxGyakuQy-87k_EopPs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiVerificationAndRegistrationDialog.this.lambda$initView$0$HmiVerificationAndRegistrationDialog(view);
            }
        });
        this.mRegister.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiVerificationAndRegistrationDialog$fRBTs2JAdw-rSEnI5lvacYaHoUg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiVerificationAndRegistrationDialog.this.lambda$initView$1$HmiVerificationAndRegistrationDialog(view);
            }
        });
        this.mQrCode.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiVerificationAndRegistrationDialog$5VoB3b6brDM5hgOcR4WLg1R4EuQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiVerificationAndRegistrationDialog.this.lambda$initView$2$HmiVerificationAndRegistrationDialog(view);
            }
        });
        if (this.relativelyWideState) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mRootView.getLayoutParams();
            layoutParams.width = (int) getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_qr_code_wide_width);
            this.mRootView.setLayoutParams(layoutParams);
        }
    }

    public /* synthetic */ void lambda$initView$0$HmiVerificationAndRegistrationDialog(View view) {
        dismiss();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiVerificationAndRegistrationDialog(View view) {
        RegistrationListener registrationListener = this.registrationListener;
        if (registrationListener != null) {
            registrationListener.registration(this.checkBox.isChecked());
        } else {
            Log.e(TAG, "registrationListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$2$HmiVerificationAndRegistrationDialog(View view) {
        HmiQrCodeRefreshListener hmiQrCodeRefreshListener = this.mHmiQrCodeRefreshListener;
        if (hmiQrCodeRefreshListener != null) {
            hmiQrCodeRefreshListener.refresh();
        } else {
            Log.i(TAG, "initView: mHmiQrCodeRefreshListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.mTitleText);
        this.mCancel.setImageResource(this.mIconId);
        String str = this.mContentText;
        if (str != null) {
            this.mContent.setText(str);
            this.mContent.setVisibility(0);
            this.mRegisterCl.setVisibility(8);
        } else {
            this.mContent.setVisibility(8);
            this.mRegisterCl.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.qrIconLl.getLayoutParams()).topMargin = UiUtil.dp2px(getContext(), getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_qr_code_top));
        }
        this.mQrCode.setImageBitmap(this.mIconBitmap);
    }

    public HmiVerificationAndRegistrationDialog setTitle(String title) {
        this.mTitleText = title;
        return this;
    }

    public HmiVerificationAndRegistrationDialog setIcon(int iconId) {
        this.mIconId = iconId;
        return this;
    }

    public HmiVerificationAndRegistrationDialog setContent(String content) {
        this.mContentText = content;
        return this;
    }

    public HmiVerificationAndRegistrationDialog setRelativelyWideDialog(boolean relativelyWideState) {
        this.relativelyWideState = relativelyWideState;
        return this;
    }

    public HmiVerificationAndRegistrationDialog setQrCodeBitmap(Bitmap qrCodeBitmap) {
        Log.i(TAG, "setQrCodeBitmap: qrCodeBitmap = " + qrCodeBitmap);
        this.mIconBitmap = qrCodeBitmap;
        HmiImageView hmiImageView = this.mQrCode;
        if (hmiImageView != null) {
            hmiImageView.setImageBitmap(qrCodeBitmap);
        }
        return this;
    }

    public HmiVerificationAndRegistrationDialog setRegistrationListener(RegistrationListener registrationListener) {
        this.registrationListener = registrationListener;
        return this;
    }

    public HmiVerificationAndRegistrationDialog setHmiQrCodeRefreshListener(HmiQrCodeRefreshListener hmiQrCodeRefreshListener) {
        this.mHmiQrCodeRefreshListener = hmiQrCodeRefreshListener;
        return this;
    }
}
