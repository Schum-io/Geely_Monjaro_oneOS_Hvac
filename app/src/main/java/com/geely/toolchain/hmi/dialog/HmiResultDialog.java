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
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiResultDialog extends BaseDialog {
    private HmiImageView mCancel;
    private HmiImageView mResultIcon;
    private int mResultIconId;
    private String mResultText;
    private HmiTextView mResultTv;
    private ConstraintLayout mRootView;

    public HmiResultDialog(Context context) {
        super(context);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_result_dialog;
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
        this.mCancel.setImageResource(R.drawable.oneoshmi_close_pop_big);
        this.mResultTv.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mResultIcon.setImageResource(this.mResultIconId);
    }

    private void initView(Window window) {
        this.mCancel = (HmiImageView) window.findViewById(R.id.cancel);
        this.mResultTv = (HmiTextView) window.findViewById(R.id.result);
        this.mResultIcon = (HmiImageView) window.findViewById(R.id.resultIcon);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mCancel.setOnClickListener(this::lambda$initView$0$HmiResultDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiResultDialog(View view) {
        dismiss();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mResultTv.setText(this.mResultText);
        this.mResultIcon.setImageResource(this.mResultIconId);
    }

    public HmiResultDialog setResultText(String resultText) {
        this.mResultText = resultText;
        return this;
    }

    public HmiResultDialog setResultIcon(int resultIconId) {
        this.mResultIconId = resultIconId;
        return this;
    }
}
