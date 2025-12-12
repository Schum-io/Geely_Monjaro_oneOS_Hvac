package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiPhoneDialog extends Dialog {
    private static final String TAG = "HmiPhoneDialog";
    private ImageView mAnswerIcon;
    private OnClickMsgListener mClickListener;
    private OnClickPhoneListener mClickPhoneListener;
    private ImageView mHangupIcon;
    private String mMsg;
    private TextView mPhoneDialogMsg;
    private TextView mPhoneDialogTitle;
    private ImageView mPhoneIconLeft;
    private ImageView mPhoneIconRight;
    private int mPhoneLeftIconId;
    private int mPhoneRightIconId;
    private String mTitle;

    public interface OnClickMsgListener {
        void onClick();
    }

    public interface OnClickPhoneListener {
        void answer();

        void hangUp();
    }

    public HmiPhoneDialog(Context context) {
        super(context, R.style.onesHmiMessageDialogStyle);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hmi_layout_phone_dialog);
        init();
        initData();
    }

    private void init() {
        getWindow().clearFlags(2);
        this.mPhoneDialogTitle = (TextView) findViewById(R.id.phone_up_text_tv);
        this.mPhoneDialogMsg = (TextView) findViewById(R.id.phone_down_text_tv);
        this.mPhoneIconLeft = (ImageView) findViewById(R.id.phone_left_icon_iv);
        this.mPhoneIconRight = (ImageView) findViewById(R.id.phone_right_icon_iv);
        this.mAnswerIcon = (ImageView) findViewById(R.id.right_layout_phone_left_icon_iv);
        this.mHangupIcon = (ImageView) findViewById(R.id.right_layout_phone_right_icon_iv);
        findViewById(R.id.phone_layout).setOnClickListener(this::lambda$init$0$HmiPhoneDialog);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.y = UiUtil.dp2px(getContext(), getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_phone_margin_top));
        getWindow().setAttributes(attributes);
        getWindow().setGravity(48);
    }

    public /* synthetic */ void lambda$init$0$HmiPhoneDialog(View view) {
        OnClickMsgListener onClickMsgListener = this.mClickListener;
        if (onClickMsgListener != null) {
            onClickMsgListener.onClick();
            dismiss();
        } else {
            Log.e(TAG, "mClickListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        int i = this.mPhoneRightIconId;
        if (i != 0) {
            this.mPhoneIconRight.setImageResource(i);
        }
        int i2 = this.mPhoneLeftIconId;
        if (i2 != 0) {
            this.mPhoneIconLeft.setImageResource(i2);
        }
        this.mAnswerIcon.setOnClickListener(this::lambda$initData$1$HmiPhoneDialog);
        this.mHangupIcon.setOnClickListener(this::lambda$initData$2$HmiPhoneDialog);
        this.mPhoneDialogTitle.setText(this.mTitle);
        this.mPhoneDialogMsg.setText(this.mMsg);
    }

    public /* synthetic */ void lambda$initData$1$HmiPhoneDialog(View view) {
        this.mClickPhoneListener.answer();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initData$2$HmiPhoneDialog(View view) {
        this.mClickPhoneListener.hangUp();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public HmiPhoneDialog setLeftIcon(int resId) {
        this.mPhoneLeftIconId = resId;
        return this;
    }

    public HmiPhoneDialog setRightIcon(int resId) {
        this.mPhoneRightIconId = resId;
        return this;
    }

    public HmiPhoneDialog setTitle(String msg) {
        this.mTitle = msg;
        return this;
    }

    public HmiPhoneDialog setMsg(String msg) {
        this.mMsg = msg;
        return this;
    }

    public HmiPhoneDialog setOnclickMsgListener(OnClickMsgListener listener) {
        this.mClickListener = listener;
        return this;
    }

    public HmiPhoneDialog setOnclickPhoneListener(OnClickPhoneListener listener) {
        this.mClickPhoneListener = listener;
        return this;
    }
}
