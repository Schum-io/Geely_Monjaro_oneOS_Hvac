package com.geely.hvac.activity;

import android.os.Bundle;
import android.view.View;
import com.geely.hvac.data.DataEvent;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.databinding.LayoutAnionWindowHintBinding;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class AnionWindowHintActivity extends DialogActivity {
    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GlySensorsData.track(DataEvent.AC_ANIONPURIFICATIONREMINDER_EV);
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutAnionWindowHintBinding layoutAnionWindowHintBindingInflate = LayoutAnionWindowHintBinding.inflate(getLayoutInflater());
        layoutAnionWindowHintBindingInflate.cancel.setOnClickListener(this::onCancelClick);
        layoutAnionWindowHintBindingInflate.confirm.setOnClickListener(this::onConfirmClick);
        return layoutAnionWindowHintBindingInflate.getRoot();
    }

    private void onCancelClick(View view) {
        getMainViewModel().cancelAnionWindow();
        GlySensorsData.track(DataEvent.AC_ANIONPURIFICATIONREMINDOPERATION_EV, "ac_PM25RemindOperation_is", 0);
        finish();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void onConfirmClick(View view) {
        getMainViewModel().confirmAnionWindow();
        GlySensorsData.track(DataEvent.AC_ANIONPURIFICATIONREMINDOPERATION_EV, "ac_PM25RemindOperation_is", 1);
        finish();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
