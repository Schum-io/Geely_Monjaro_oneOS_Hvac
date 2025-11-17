package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.listener.HmiOnClickListener;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiButton;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiMessageDialog extends Dialog {
    private static final String TAG = "HmiMessageDialog";
    private Bitmap bitmap;
    private String contentValue;
    private HmiButton mCancel;
    private OnClickMessageListener mClickMessageListener;
    private ConstraintLayout mConstraintLayout;
    private HmiTextView mContent;
    private int mDrawableId;
    private HmiOnClickListener mHmiOnClickListener;
    private HmiImageView mImage;
    private HmiButton mLook;
    private HmiTextView mTime;
    private String mTimeValue;
    private HmiTextView mTitle;
    private String titleValue;
    private String tvCancel;
    private String tvLook;

    public interface OnClickMessageListener {
        void lookAction();
    }

    public HmiMessageDialog(Context context) {
        super(context, R.style.onesHmiMessageDialogStyle);
        this.mDrawableId = -1;
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.y = UiUtil.dp2px(context, context.getResources().getDimension(R.dimen.oneoshmi_dialog_message_top_magin));
        window.setAttributes(attributes);
        window.setGravity(48);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hmi_message_dialog);
        Window window = getWindow();
        window.clearFlags(2);
        initView(window);
    }

    private void initView(Window window) {
        this.mLook = (HmiButton) window.findViewById(R.id.msg_bton_look);
        this.mCancel = (HmiButton) window.findViewById(R.id.msg_bton_cancel);
        this.mImage = (HmiImageView) window.findViewById(R.id.img_icon);
        this.mTitle = (HmiTextView) window.findViewById(R.id.tv_title);
        this.mTime = (HmiTextView) window.findViewById(R.id.message_time_tv);
        this.mContent = (HmiTextView) window.findViewById(R.id.tv_content);
        this.mConstraintLayout = (ConstraintLayout) window.findViewById(R.id.constraintlayout);
        this.mLook.setOnClickListener(this::onClick);
        this.mCancel.setOnClickListener(this::lambda$initView$0$HmiMessageDialog);
        if (!TextUtils.isEmpty(this.mTimeValue)) {
            this.mTime.setVisibility(0);
            this.mLook.setVisibility(8);
            this.mCancel.setVisibility(8);
            this.mTime.setText(this.mTimeValue);
        }
        this.mTitle.setText(this.titleValue);
        this.mContent.setText(this.contentValue);
        this.mLook.setText(this.tvLook);
        this.mCancel.setText(this.tvCancel);
        this.mImage.setImageBitmap(this.bitmap);
    }

    public /* synthetic */ void lambda$initView$0$HmiMessageDialog(View view) {
        HmiOnClickListener hmiOnClickListener = this.mHmiOnClickListener;
        if (hmiOnClickListener != null) {
            hmiOnClickListener.cancelAction();
        } else {
            Log.i(TAG, "messageCancelListener is null");
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public HmiMessageDialog setLeftButtonText(String leftButtonText) {
        this.tvLook = leftButtonText;
        return this;
    }

    public HmiMessageDialog setRightButtonText(String rightButtonText) {
        this.tvCancel = rightButtonText;
        return this;
    }

    public HmiMessageDialog setTitlevalue(String title) {
        this.titleValue = title;
        return this;
    }

    public HmiMessageDialog setContent(String content) {
        this.contentValue = content;
        return this;
    }

    public HmiMessageDialog setTime(String time) {
        this.mTimeValue = time;
        return this;
    }

    public HmiMessageDialog setImageById(int iconId) {
        this.mDrawableId = iconId;
        this.mImage.setImageResource(iconId);
        return this;
    }

    public HmiMessageDialog setImageByDrawable(Drawable drawable) {
        this.mImage.setImageDrawable(drawable);
        return this;
    }

    public HmiMessageDialog setImageBitmap(Bitmap bm) {
        this.bitmap = bm;
        return this;
    }

    public void hmiConfigChange() {
        this.mConstraintLayout.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_dialog_message_bg));
        this.mCancel.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_dialog_message_bt_bg));
        this.mCancel.setTextColor(ContextCompat.getColor(getContext(), R.color.oneoshmi_dialog_bg_message_canceltext_color));
        this.mLook.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_dialog_message_bt_bg));
        this.mLook.setTextColor(ContextCompat.getColor(getContext(), R.color.oneoshmi_main_theme_color));
        this.mTitle.setTextColor(ContextCompat.getColor(getContext(), R.color.oneoshmi_dialog_bg_message_title_color));
        this.mContent.setTextColor(ContextCompat.getColor(getContext(), R.color.oneoshmi_dialog_bg_message_content_color));
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            this.mImage.setImageBitmap(bitmap);
        } else {
            Log.i(TAG, "bitmap == null");
        }
        int i = this.mDrawableId;
        if (i != -1) {
            this.mImage.setImageResource(i);
        } else {
            Log.i(TAG, "mDrawable == null");
        }
    }

    @Deprecated
    public HmiMessageDialog setOnClickMessageListener(Context context, OnClickMessageListener onClickMessageListener) {
        this.mClickMessageListener = onClickMessageListener;
        return this;
    }

    public HmiMessageDialog setOnClickMessageListener(HmiOnClickListener hmiOnClickListener) {
        this.mHmiOnClickListener = hmiOnClickListener;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(View v) {
        OnClickMessageListener onClickMessageListener = this.mClickMessageListener;
        if (onClickMessageListener != null) {
            onClickMessageListener.lookAction();
        } else {
            HmiOnClickListener hmiOnClickListener = this.mHmiOnClickListener;
            if (hmiOnClickListener != null) {
                hmiOnClickListener.lookAction();
            } else {
                Log.e(TAG, "mClickMessageListener or mHmiOnClickListener  is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(v);
    }
}
