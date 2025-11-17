package com.geely.hvac.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.geely.hvac.BuildConfig;
import com.geely.hvac.databinding.LayoutMassageSetDetailBinding;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

public class MassageDetailActivity extends DialogActivity {
    protected final String TAG = "MassageDetailActivity";

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LogUtil.d("MassageDetailActivity", "onCreate");
        if (TextUtils.equals(BuildConfig.FLAVOR, BuildConfig.FLAVOR)) {
            getWindow().getDecorView().setSystemUiVisibility(4);
        }
        getLifecycle().addObserver(getMainViewModel().getSeatSetActivityLifecycleObserver());
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutMassageSetDetailBinding layoutMassageSetDetailBindingInflate = LayoutMassageSetDetailBinding.inflate(getLayoutInflater());
        layoutMassageSetDetailBindingInflate.setModel(getMainViewModel());
        layoutMassageSetDetailBindingInflate.close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        return layoutMassageSetDetailBindingInflate.getRoot();
    }

    @Override // com.geely.hvac.activity.AutoHideActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        LogUtil.d("MassageDetailActivity", "onPause");
        finish();
    }

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.AutoHideActivity
    protected void onAutoHide() {
        super.onAutoHide();
    }
}
