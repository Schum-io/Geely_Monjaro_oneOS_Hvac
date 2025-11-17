package com.geely.hvac.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public abstract class BaseDialogActivity extends AutoHideActivity {
    private AppMainViewModel mMainViewModel;

    protected abstract View getView();

    protected AppMainViewModel getMainViewModel() {
        if (this.mMainViewModel == null) {
            this.mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        }
        return this.mMainViewModel;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        translucentStatus();
        initAutoHide();
        View view = getView();
        view.setOnClickListener(this::onViewClicked);
        setContentView(view);
    }

    public void onViewClicked(View view) {
        if (getMainViewModel().getMainActivityVisible().get()) {
            LogUtil.d(this.TAG, "view finish Activity");
            finish();
        } else {
            LogUtil.d(this.TAG, "view moveTaskToBack Activity");
            moveTaskToBack(true);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initAutoHide() {
        String stringExtra = getIntent().getStringExtra("from");
        LogUtil.d(this.TAG, "initAutoHide, from:" + stringExtra);
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        setAutoHide(false);
    }
}
