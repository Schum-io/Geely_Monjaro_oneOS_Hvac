package com.geely.hvac.activity;

import android.content.res.Configuration;
import android.os.Bundle;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.utils.ConfigurationChangedDelegate;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public abstract class DialogActivity extends BaseDialogActivity {
    private boolean mIsConfigurationChange = false;
    private ConfigurationChangedDelegate.ConfigurationChangedListener mConfigurationChangedListener = this::onConfigurationChanged;

    public void onConfigurationChanged(Configuration configuration) {
        LogUtil.i(this.TAG, "ConfigurationChangedListener");
        this.mIsConfigurationChange = true;
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ConfigurationChangedDelegate.addListener(this.mConfigurationChangedListener);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ConfigurationChangedDelegate.removeListener(this.mConfigurationChangedListener);
    }

    @Override // com.geely.hvac.activity.AutoHideActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mIsConfigurationChange = false;
        Executor.IO.execute(this::logAndRegisterSuperProperties);
    }

    private void logAndRegisterSuperProperties() {
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

    @Override // com.geely.hvac.activity.AutoHideActivity
    protected void onAutoHide() {
        moveTaskToBack(true);
    }
}
