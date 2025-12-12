package com.geely.hvac.activity;

import android.os.Bundle;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.databinding.ActivityTestBinding;
import com.geely.hvac.viewmodel.AppMainViewModel;

/* loaded from: classes.dex */
public class TestActivity extends BaseActivity {
    private void initViews(ActivityTestBinding binding) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        ActivityTestBinding activityTestBindingInflate = ActivityTestBinding.inflate(getLayoutInflater());
        activityTestBindingInflate.setModel(appMainViewModel);
        setContentView(activityTestBindingInflate.getRoot());
        initViews(activityTestBindingInflate);
    }
}
