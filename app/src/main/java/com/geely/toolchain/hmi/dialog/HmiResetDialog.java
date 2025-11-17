package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;

/* loaded from: classes.dex */
public class HmiResetDialog extends BaseDialog {
    private int iconId;
    private HmiTextView mContent;
    private String mContentText;
    private HmiImageView mIcon;
    private ConstraintLayout mRootView;

    public HmiResetDialog(Context context) {
        super(context);
        this.iconId = R.drawable.oneoshmi_loading;
        this.mContentText = "正在恢复出厂设置...";
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_reset_dialog;
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
        this.mIcon.setImageResource(this.iconId);
        ((AnimationDrawable) this.mIcon.getDrawable()).start();
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_edit_text_color));
    }

    private void initView(Window window) {
        this.mIcon = (HmiImageView) window.findViewById(R.id.icon);
        this.mContent = (HmiTextView) window.findViewById(R.id.content);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
    }

    private void initData() {
        this.mIcon.setImageResource(this.iconId);
        ((AnimationDrawable) this.mIcon.getDrawable()).start();
        this.mContent.setText(this.mContentText);
    }

    @Deprecated
    public HmiResetDialog setMIcon(int iconId) {
        this.iconId = iconId;
        return this;
    }

    public HmiResetDialog setIcon(int iconId) {
        this.iconId = iconId;
        return this;
    }

    public HmiResetDialog setContent(String content) {
        this.mContentText = content;
        return this;
    }
}
