package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;

/* loaded from: classes.dex */
public abstract class BaseDialog extends Dialog {
    public static final String TAG = "BaseDialog";

    protected abstract int setLayoutId();

    public BaseDialog(Context context) {
        super(context, R.style.hmi_dialog_style);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getWindow() == null) {
            Log.e(TAG, "onCreate: getMainView() cannot be null!!!");
            return;
        }
        if (UiUtil.getHmiCurrentModelIsDark(getContext())) {
            Log.d(TAG, "current mode is dark");
        } else {
            Log.d(TAG, "current mode is light");
        }
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.y = -UiUtil.dp2px(getContext(), getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_center_top));
        window.setAttributes(attributes);
        setContentView(setLayoutId());
    }
}
