package com.geely.hvac.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.geely.hvac.BuildConfig;
import com.geely.hvac.databinding.LayoutAcSetBinding;

/* loaded from: classes.dex */
public class AcSetActivity extends DialogActivity {
    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getLifecycle().addObserver(getMainViewModel().getAcSetActivityLifecycleObserver());
        if (TextUtils.equals(BuildConfig.FLAVOR, BuildConfig.FLAVOR)) {
            getWindow().getDecorView().setSystemUiVisibility(4);
        }
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutAcSetBinding layoutAcSetBindingInflate = LayoutAcSetBinding.inflate(getLayoutInflater());
        layoutAcSetBindingInflate.setModel(getMainViewModel());
        return layoutAcSetBindingInflate.getRoot();
    }
}
