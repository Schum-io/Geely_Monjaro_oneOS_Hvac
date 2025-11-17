//package com.geely.hvac.activity;
//
//import android.os.Bundle;
//import android.view.View;
//import com.geely.hvac.data.DataEvent;
//import com.geely.hvac.data.GlySensorsData;
//import com.geely.hvac.databinding.LayoutIonsCloseRequestBinding;
//import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
//
///* loaded from: classes.dex */
//public class IonsCloseRequestActivity extends DialogActivity {
//    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        GlySensorsData.track(DataEvent.AC_ANIONPURIFICATIONREMINDER_EV);
//    }
//
//    @Override // com.geely.hvac.activity.BaseDialogActivity
//    protected View getView() {
//        LayoutIonsCloseRequestBinding layoutIonsCloseRequestBindingInflate = LayoutIonsCloseRequestBinding.inflate(getLayoutInflater());
//        layoutIonsCloseRequestBindingInflate.close.setOnClickListener(this::onCloseClick);
//        layoutIonsCloseRequestBindingInflate.cancel.setOnClickListener(this::onCancelClick);
//        return layoutIonsCloseRequestBindingInflate.getRoot();
//    }
//
//    public /* synthetic */ void onCloseClick(View view) {
//        finish();
//        GlySensorsData.track(DataEvent.AC_ANIONPURIFICATIONREMINDOPERATION_EV, "ac_PM25RemindOperation_is", 0);
//        getMainViewModel().confirmIonsCloseRequest(view);
//        SensorsDataAutoTrackHelper.trackViewOnClick(view);
//    }
//
//    public /* synthetic */ void onCancelClick(View view) {
//        finish();
//        GlySensorsData.track(DataEvent.AC_ANIONPURIFICATIONREMINDOPERATION_EV, "ac_PM25RemindOperation_is", 1);
//        SensorsDataAutoTrackHelper.trackViewOnClick(view);
//    }
//}
