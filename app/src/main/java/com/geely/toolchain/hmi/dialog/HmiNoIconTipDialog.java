package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.blur.HmiBlurView;
import com.geely.toolchain.hmi.view.HmiTextView;
import java.util.Objects;

/* loaded from: classes.dex */
public class HmiNoIconTipDialog extends BaseHmiDialogFragment {
    private String hmiContent;
    private HmiBlurView mBlurView;
    private HmiTextView mContent;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_no_icon_tip_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Window window = ((Dialog) Objects.requireNonNull(getDialog())).getWindow();
        window.setDimAmount(0.0f);
        if (savedInstanceState != null) {
            this.hmiContent = savedInstanceState.getString("hmiContent");
        }
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        HmiBlurView hmiBlurView = (HmiBlurView) view.findViewById(R.id.blurView);
        this.mBlurView = hmiBlurView;
        hmiBlurView.setWindow(window);
        this.mContent.setText(this.hmiContent);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.i(this.TAG, this.TAG + " onSaveInstanceState");
        outState.putString("hmiContent", this.hmiContent);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (savedInstanceState == null) {
            Log.i(this.TAG, "onViewStateRestored: savedInstanceState is null");
        } else {
            this.hmiContent = savedInstanceState.getString("hmiContent");
        }
    }

    public HmiNoIconTipDialog setHmiContent(String content) {
        this.hmiContent = content;
        return this;
    }
}
