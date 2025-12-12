package com.geely.hvac.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.SpConstant;
import com.geely.hvac.utils.SpUtils;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* loaded from: classes.dex */
public class EventReceiver extends BroadcastReceiver {
    private static final String ACTION_UPDATE_ANIMATE_RESOURCE = "com.geely.setting.ACTION_SETTING_CARMODEL";
    private final String TAG = getClass().getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        try {
            String action = intent.getAction();
            LogUtil.d(this.TAG, "onReceive: action:" + action);
            if (ACTION_UPDATE_ANIMATE_RESOURCE.equals(action)) {
                ((AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class)).updateAnimateRes();
                SpUtils.setBoolean(SpConstant.SP_KEY, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
