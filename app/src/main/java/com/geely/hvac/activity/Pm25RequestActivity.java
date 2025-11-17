package com.geely.hvac.activity;

import android.os.Bundle;
import android.view.View;
import com.geely.hvac.data.DataEvent;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.databinding.LayoutPm25RequestBinding;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

public class Pm25RequestActivity extends DialogActivity {
    private LayoutPm25RequestBinding mBinding;

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.AutoHideActivity
    protected void onAutoHide() {
        LogUtil.d(this.TAG, "hide runnable execute");
        moveTaskToBack(true);
        getMainViewModel().confirmPm25Request(2);
    }

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GlySensorsData.track(DataEvent.AC_PM25REMIND_EV);
        this.mBinding.getRoot().setOnClickListener(view -> {
            finish();
            getMainViewModel().confirmPm25Request(0);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        });
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutPm25RequestBinding layoutPm25RequestBindingInflate = LayoutPm25RequestBinding.inflate(getLayoutInflater());
        this.mBinding = layoutPm25RequestBindingInflate;
        layoutPm25RequestBindingInflate.cancel.setOnClickListener(view -> {
            finish();
            GlySensorsData.track(DataEvent.AC_PM25REMINDOPERATION_EV, "ac_PM25RemindOperation_is", 0);
            getMainViewModel().confirmPm25Request(0);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        });
        this.mBinding.sure.setOnClickListener(view -> {
            finish();
            GlySensorsData.track(DataEvent.AC_PM25REMINDOPERATION_EV, "ac_PM25RemindOperation_is", 1);
            getMainViewModel().confirmPm25Request(1);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        });
        return this.mBinding.getRoot();
    }
}
