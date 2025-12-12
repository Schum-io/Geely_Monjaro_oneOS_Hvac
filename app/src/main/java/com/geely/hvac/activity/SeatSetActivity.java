package com.geely.hvac.activity;

import android.os.Bundle;
import android.view.View;
import com.geely.hvac.databinding.LayoutSeatSetBinding;

/* loaded from: classes.dex */
public class SeatSetActivity extends DialogActivity {
    private LayoutSeatSetBinding mBinding;

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getLifecycle().addObserver(getMainViewModel().getSeatTimeSetActivityLifecycleObserver());
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutSeatSetBinding layoutSeatSetBindingInflate = LayoutSeatSetBinding.inflate(getLayoutInflater());
        this.mBinding = layoutSeatSetBindingInflate;
        layoutSeatSetBindingInflate.setModel(getMainViewModel());
        return this.mBinding.getRoot();
    }
}
