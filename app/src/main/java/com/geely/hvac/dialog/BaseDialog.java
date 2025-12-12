package com.geely.hvac.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class BaseDialog extends AlertDialog {
    private AppMainViewModel mMainViewModel;

    protected int getWindAnimationRes() {
        return R.style.alphaAnim;
    }

    public BaseDialog(Context context) {
        super(context, R.style.Transparent);
    }

    protected AppMainViewModel getMainViewModel() {
        if (this.mMainViewModel == null) {
            this.mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        }
        return this.mMainViewModel;
    }

    protected View getView() {
        return new FrameLayout(getContext());
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        window.setWindowAnimations(getWindAnimationRes());
        window.setLayout(-1, -1);
        View view = getView();

        // REPLACED: The decompiled lambda implementation with a standard Java lambda
        view.setOnClickListener(v -> {
            dismiss();
            SensorsDataAutoTrackHelper.trackViewOnClick(v);
        });

        setContentView(view);
    }


}
