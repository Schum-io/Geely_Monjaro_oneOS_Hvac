package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiImageView;

/* loaded from: classes.dex */
public class HmiVolumeDialog extends BaseDialog {
    public static final String TAG = "HmiVolumeDialog";
    private HmiImageView mFunIcon;
    private int mIconId;
    private ProgressBar mProgressBar;
    private ConstraintLayout mRootView;

    public HmiVolumeDialog(Context context) {
        super(context);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_volume_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.setDimAmount(0.0f);
        window.clearFlags(2);
        this.mProgressBar = (ProgressBar) window.findViewById(R.id.volumeProgress);
        this.mFunIcon = (HmiImageView) window.findViewById(R.id.funIcon);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mFunIcon.setImageResource(this.mIconId);
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
        this.mFunIcon.setImageResource(this.mIconId);
        this.mProgressBar.setProgressDrawable(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_progress_drawable));
    }

    public HmiVolumeDialog setIconId(int iconId) {
        this.mIconId = iconId;
        return this;
    }

    public ProgressBar getProgressBar() {
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null) {
            return progressBar;
        }
        String str = TAG;
        Log.e(str, str + " is not onCreate");
        return null;
    }
}
