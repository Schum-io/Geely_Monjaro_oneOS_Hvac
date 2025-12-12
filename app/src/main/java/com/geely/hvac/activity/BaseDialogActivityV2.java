package com.geely.hvac.activity;

import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.utils.ConfigurationChangedDelegate;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public abstract class BaseDialogActivityV2 extends AutoHideActivity {
    private AppMainViewModel mMainViewModel;
    private boolean mIsConfigurationChange = false;
    private final ConfigurationChangedDelegate.ConfigurationChangedListener mConfigurationChangedListener = this::onConfigurationChangedListener;

    protected float getDimAmount() {
        return 0.5f;
    }

    protected abstract View getView();

    private void onConfigurationChangedListener(Configuration configuration) {
        LogUtil.d(this.TAG, "ConfigurationChangedListener");
        this.mIsConfigurationChange = true;
    }

    protected AppMainViewModel getMainViewModel() {
        if (this.mMainViewModel == null) {
            this.mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        }
        return this.mMainViewModel;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setDimAmount(getDimAmount());
        ConfigurationChangedDelegate.addListener(this.mConfigurationChangedListener);
        initAutoHide();
        View view = getView();
        view.setOnClickListener(this::onViewClicked);
        setContentView(view);
    }

    private void onViewClicked(View view) {
        finish();
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

    @Override // com.geely.hvac.activity.AutoHideActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mIsConfigurationChange = false;
        Executor.IO.execute(this::onAsyncResume);
    }

    private void onAsyncResume() {
        LogUtil.d(this.TAG, "onResume");
        GlySensorsData.registerSuperProperties(getApplicationContext(), getWindowManager().getDefaultDisplay().getDisplayId() == 3 ? 2 : 1);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        LogUtil.d(this.TAG, "onStop");
        if (this.mIsConfigurationChange) {
            return;
        }
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ConfigurationChangedDelegate.removeListener(this.mConfigurationChangedListener);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        LogUtil.d(this.TAG, "finish: ----");
        overridePendingTransition(R.anim.custom_dialog_enter, R.anim.activity_exit_scale_anim);
    }
}
