package com.geely.hvac.launcherwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.activity.AppWidgetMassageDetailActivity;
import com.geely.hvac.util.MassageUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.geely.os.bt.GlyBtDef;
import com.geely.os.car.GlyCarPropertyValue;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* loaded from: classes.dex */
public class SeatMassageWidgetProvider extends AppWidgetProvider {
    private static final String ACTION_CLICK = "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_CLICK";
    private static final String ACTION_UPDATE = "com.geely.hvac.launcherwidget.SeatMassageWidgetProvider.ACTION_UPDATE";
    private static final int CLICK_ID_MASSAGE_TYPE = 1;
    private static final int CLICK_ID_SWITCH = 0;
    private static final String CLICK_KEY_ID = "CLICK_KEY_ID";
    private static final String TAG = "SeatMassageWidgetProvider";
    private static final String UPDATE_STATE_KEY = "UPDATE_STATE_KEY";
    private static final String UPDATE_ZONE_KEY = "UPDATE_ZONE_KEY";
    private final AppMainViewModel mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);

    private int parseLevelToImg(boolean state, int level) {
        if (!state) {
            return R.mipmap.seat_massage_widget_level_0;
        }
        switch (level) {
        }
        return R.mipmap.seat_massage_widget_level_0;
    }

    protected int getLayoutId() {
        return R.layout.layout_driver_seat_massage_widget;
    }

    protected int getZone() {
        return 1;
    }

    public static void updateWidget(Context context, int zone) {
        if (zone == 1) {
            LogUtil.i(TAG, "updateWidget SEAT_ROW_1_LEFT");
            Intent intent = new Intent(context, (Class<?>) SeatMassageWidgetProvider.class);
            intent.setAction(ACTION_UPDATE);
            intent.putExtra(UPDATE_ZONE_KEY, zone);
            context.sendBroadcast(intent);
            return;
        }
        if (zone != 4) {
            return;
        }
        LogUtil.i(TAG, "updateWidget SEAT_ROW_1_RIGHT");
        Intent intent2 = new Intent(context, (Class<?>) SeatMassageWidgetProvider1.class);
        intent2.setAction(ACTION_UPDATE);
        intent2.putExtra(UPDATE_ZONE_KEY, zone);
        context.sendBroadcast(intent2);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        LogUtil.i(TAG, "onReceive, action:" + intent.getAction());
        String action = intent.getAction();
        action.hashCode();
        if (action.equals(ACTION_CLICK)) {
            performClick(context, intent);
        } else if (action.equals(ACTION_UPDATE) && intent.getIntExtra(UPDATE_ZONE_KEY, -1) == getZone()) {
            performUpdate(context, intent);
        }
    }

    private String parseLevelToString(Context context, boolean state, int level) {
        if (state) {
            switch (level) {
                case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_1 /* 268764929 */:
                    return context.getString(R.string.massage_level_1);
                case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_2 /* 268764930 */:
                    return context.getString(R.string.massage_level_2);
                case GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_3 /* 268764931 */:
                    return context.getString(R.string.massage_level_3);
                default:
                    return context.getString(R.string.massage_level_off);
            }
        }
        return context.getString(R.string.massage_level_off);
    }

    protected Class getProviderClass() {
        return SeatMassageWidgetProvider.class;
    }

    private RemoteViews getRemoteViewsByMassageState(Context context, boolean isOn) {
        int i = this.mMainViewModel.getMassageLevel(getZone()).get();
        int i2 = this.mMainViewModel.getMassageType(getZone()).get();
        LogUtil.i(TAG, "getRemoteViewsByMassageState, isOn:" + isOn + ",massageType:" + i2 + ",levelIndex:" + i);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), getLayoutId());
        remoteViews.setTextViewText(R.id.massage_force, parseLevelToString(context, isOn, i));
        remoteViews.setImageViewResource(R.id.massage_level, parseLevelToImg(isOn, i));
        remoteViews.setTextViewText(R.id.massage_type_txt, MassageUtil.formatType(i2));
        remoteViews.setImageViewResource(R.id.massage_type_icon, MassageUtil.getTypeDrawableId(i2));
        Intent intent = new Intent(context, (Class<?>) getProviderClass());
        intent.setAction(ACTION_CLICK);
        intent.putExtra(CLICK_KEY_ID, 0);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 0, intent, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, context, 0, intent, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        remoteViews.setOnClickPendingIntent(R.id.massage_level, broadcast);
        Intent intent2 = new Intent(context, (Class<?>) getProviderClass());
        intent2.setAction(ACTION_CLICK);
        intent2.putExtra(CLICK_KEY_ID, 1);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 1, intent2, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 1, intent2, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast2, context, 1, intent2, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        remoteViews.setOnClickPendingIntent(R.id.massage_type, broadcast2);
        return remoteViews;
    }

    private RemoteViews getRemoteViewsByMassageState(Context context) {
        return getRemoteViewsByMassageState(context, this.mMainViewModel.getMassageState(getZone()).get());
    }

    private void performUpdate(Context context, Intent intent) {
        AppWidgetManager.getInstance(context).updateAppWidget(new ComponentName(context, (Class<?>) getProviderClass()), getRemoteViewsByMassageState(context));
    }

    private void performClick(Context context, Intent intent) {
        int intExtra = intent.getIntExtra(CLICK_KEY_ID, -1);
        AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        String str = TAG;
        LogUtil.i(str, "performClick, id:" + intExtra);
        if (intExtra == 0) {
            LogUtil.d(str, "performClick, CLICK_ID_SWITCH");
            appMainViewModel.massageLevelClick(getZone());
        } else {
            if (intExtra != 1) {
                return;
            }
            appMainViewModel.setMassageDetailZone(getZone());
            Intent intent2 = new Intent(context, (Class<?>) AppWidgetMassageDetailActivity.class);
            intent2.setFlags(268435456);
            context.startActivity(intent2);
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int appWidgetId, Bundle newOptions) {
        super.onAppWidgetOptionsChanged(context, appWidgetManager, appWidgetId, newOptions);
        LogUtil.d(TAG, "onAppWidgetOptionsChanged");
    }

    @Override // android.appwidget.AppWidgetProvider
    public void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds) {
        super.onUpdate(context, appWidgetManager, appWidgetIds);
        LogUtil.d(TAG, "onUpdate");
        for (int i : appWidgetIds) {
            appWidgetManager.updateAppWidget(i, getRemoteViewsByMassageState(context));
        }
    }
}
