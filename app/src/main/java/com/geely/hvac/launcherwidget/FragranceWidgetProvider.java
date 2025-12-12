package com.geely.hvac.launcherwidget;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.RemoteViews;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.BuildConfig;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.util.ClickUtils;
import com.geely.hvac.utils.ActivityManager;
import com.geely.hvac.utils.FragranceParser;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.geely.os.bt.GlyBtDef;
import com.geely.toolchain.hmi.view.HmiToastUtils;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class FragranceWidgetProvider extends AppWidgetProvider {
    private static final String ACTION_CLICK = "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_CLICK";
    private static final String ACTION_UPDATE = "com.geely.hvac.launcherwidget.FragranceWidgetProvider.ACTION_UPDATE";
    private static final int CLICK_ID_SWITCH = 0;
    private static final int CLICK_ID_TYPE1 = 1;
    private static final int CLICK_ID_TYPE2 = 2;
    private static final int CLICK_ID_TYPE3 = 3;
    private static final String CLICK_KEY_ID = "CLICK_KEY_ID";
    private static final int NO_NORMAL = 4;
    private static final String TAG = "FragranceWidgetProvider";
    private static final String UPDATE_LEVEL_KEY = "UPDATE_LEVEL_KEY";
    private static final String UPDATE_STATE_KEY = "UPDATE_STATE_KEY";
    private static final String UPDATE_TYPE_KEY = "UPDATE_TYPE_KEY";
    private final AppMainViewModel mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);

    private int parseLevelToImg(boolean state, int level) {
        return state ? level != 1 ? level != 2 ? level != 3 ? R.mipmap.fragrance_widget_level_0 : R.mipmap.fragrance_widget_level_3 : R.mipmap.fragrance_widget_level_2 : R.mipmap.fragrance_widget_level_1 : R.mipmap.fragrance_widget_level_0;
    }

    protected int getBgOnId() {
        return R.mipmap.widget_fragrance_bg_on;
    }

    protected int getLayoutId() {
        return R.layout.layout_fragrance_widget;
    }

    public static void updateWidget(Context context, boolean isOn, int type) {
        LogUtil.i(TAG, "updateWidget");
        Intent intent = new Intent(context, (Class<?>) FragranceWidgetProvider.class);
        intent.setAction(ACTION_UPDATE);
        intent.putExtra(UPDATE_TYPE_KEY, type);
        intent.putExtra(UPDATE_STATE_KEY, isOn);
        context.sendBroadcast(intent);
        Intent intent2 = new Intent(context, (Class<?>) FragranceWidgetProvider1.class);
        intent2.setAction(ACTION_UPDATE);
        intent2.putExtra(UPDATE_TYPE_KEY, type);
        intent2.putExtra(UPDATE_STATE_KEY, isOn);
        context.sendBroadcast(intent2);
    }

    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
        super.onReceive(context, intent);
        LogUtil.i(TAG, "onReceive, action:" + intent.getAction());
        String action = intent.getAction();
        action.hashCode();
        if (action.equals(ACTION_CLICK)) {
            performClick(context, intent);
        } else if (action.equals(ACTION_UPDATE)) {
            performUpdate(context, intent);
        }
    }

    private String parseLevelToString(Context context, boolean state, int level) {
        if (!state) {
            return context.getString(R.string.fragrance_level_off);
        }
        if (level == 1) {
            return context.getString(R.string.fragrance_level_1);
        }
        if (level == 2) {
            return context.getString(R.string.fragrance_level_2);
        }
        if (level == 3) {
            return context.getString(R.string.fragrance_level_3);
        }
        return context.getString(R.string.fragrance_level_off);
    }

    protected Class getProviderClass() {
        return FragranceWidgetProvider.class;
    }

    private RemoteViews getRemoteViewsByFragranceState(Context context, boolean isOn, int slot, int level, String[] types) {
        int iSlotIndexToIndex = FragranceParser.slotIndexToIndex(slot);
        int iLevelToIndex = FragranceParser.levelToIndex(level);
        LogUtil.i(TAG, "getRemoteViewsByFragranceState, isOn:" + isOn + ",slot:" + slot + ",typeIndex:" + iSlotIndexToIndex + ",levelIndex:" + iLevelToIndex);
        RemoteViews remoteViews = new RemoteViews(context.getPackageName(), getLayoutId());
        remoteViews.setImageViewResource(R.id.bg_img, isOn ? getBgOnId() : R.drawable.widget_fragrance_bg_off);
        remoteViews.setTextColor(R.id.title, context.getColor(isOn ? R.color.widget_fragrance_label_color_on : R.color.widget_fragrance_label_color_off));
        remoteViews.setTextViewText(R.id.title, parseLevelToString(context, isOn, iLevelToIndex));
        remoteViews.setImageViewResource(R.id.fragrance_widget_level, parseLevelToImg(isOn, iLevelToIndex));
        int i = R.mipmap.widget_fragrance_type1_off;
        if (isOn && iSlotIndexToIndex == 0) {
            i = R.mipmap.widget_fragrance_type1_on;
        }
        remoteViews.setImageViewResource(R.id.type_img1, i);
        int i2 = R.color.widget_fragrance_type_text_color_active;
        remoteViews.setTextColor(R.id.type_text1, context.getColor((isOn && iSlotIndexToIndex == 0) ? R.color.widget_fragrance_type_text_color_active : R.color.widget_fragrance_type_text_color_unactive));
        if (types != null && types.length >= 1) {
            remoteViews.setTextViewText(R.id.type_text1, types[0]);
        }
        int i3 = R.mipmap.widget_fragrance_type2_off;
        if (isOn && iSlotIndexToIndex == 1) {
            i3 = R.mipmap.widget_fragrance_type2_on;
        }
        remoteViews.setImageViewResource(R.id.type_img2, i3);
        remoteViews.setTextColor(R.id.type_text2, context.getColor((isOn && iSlotIndexToIndex == 1) ? R.color.widget_fragrance_type_text_color_active : R.color.widget_fragrance_type_text_color_unactive));
        if (types != null && types.length >= 2) {
            remoteViews.setTextViewText(R.id.type_text2, types[1]);
        }
        int i4 = R.mipmap.widget_fragrance_type3_off;
        if (isOn && iSlotIndexToIndex == 2) {
            i4 = R.mipmap.widget_fragrance_type3_on;
        }
        remoteViews.setImageViewResource(R.id.type_img3, i4);
        if (!isOn || iSlotIndexToIndex != 2) {
            i2 = R.color.widget_fragrance_type_text_color_unactive;
        }
        remoteViews.setTextColor(R.id.type_text3, context.getColor(i2));
        if (types != null && types.length >= 3) {
            remoteViews.setTextViewText(R.id.type_text3, types[2]);
        }
        Intent intent = new Intent(context, (Class<?>) getProviderClass());
        intent.setAction(ACTION_CLICK);
        intent.putExtra(CLICK_KEY_ID, 0);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 0, intent, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, context, 0, intent, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        remoteViews.setOnClickPendingIntent(R.id.fragrance_widget_level, broadcast);
        Intent intent2 = new Intent(context, (Class<?>) getProviderClass());
        intent2.setAction(ACTION_CLICK);
        intent2.putExtra(CLICK_KEY_ID, 1);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 2, intent2, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 2, intent2, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast2, context, 2, intent2, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        remoteViews.setOnClickPendingIntent(R.id.type_wrap1, broadcast2);
        Intent intent3 = new Intent(context, (Class<?>) getProviderClass());
        intent3.setAction(ACTION_CLICK);
        intent3.putExtra(CLICK_KEY_ID, 2);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 3, intent3, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PendingIntent broadcast3 = PendingIntent.getBroadcast(context, 3, intent3, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast3, context, 3, intent3, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        remoteViews.setOnClickPendingIntent(R.id.type_wrap2, broadcast3);
        Intent intent4 = new Intent(context, (Class<?>) getProviderClass());
        intent4.setAction(ACTION_CLICK);
        intent4.putExtra(CLICK_KEY_ID, 3);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 4, intent4, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PendingIntent broadcast4 = PendingIntent.getBroadcast(context, 4, intent4, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast4, context, 4, intent4, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        remoteViews.setOnClickPendingIntent(R.id.type_wrap3, broadcast4);
        if (types == null || types.length < 2 || (types[0] + types[1] + types[2]).equals("未安装香氛未安装香氛未安装香氛")) {
            remoteViews.setViewVisibility(R.id.type_wrap1, 8);
            remoteViews.setViewVisibility(R.id.type_wrap2, 8);
            remoteViews.setViewVisibility(R.id.type_wrap3, 8);
            if (!TextUtils.equals(BuildConfig.FLAVOR, "fs11a2")) {
                remoteViews.setViewVisibility(R.id.no_normal, 0);
            }
            remoteViews.setTextViewText(R.id.title, "未安装香氛");
            remoteViews.setImageViewResource(R.id.fragrance_widget_level, R.mipmap.fragrance_widget_no_normal);
        } else {
            remoteViews.setViewVisibility(R.id.type_wrap1, 0);
            remoteViews.setViewVisibility(R.id.type_wrap2, 0);
            remoteViews.setViewVisibility(R.id.type_wrap3, 0);
            remoteViews.setViewVisibility(R.id.no_normal, 8);
        }
        Intent intent5 = new Intent(context, (Class<?>) getProviderClass());
        intent5.setAction(ACTION_CLICK);
        intent5.putExtra(CLICK_KEY_ID, 4);
        PushAutoTrackHelper.hookIntentGetBroadcast(context, 5, intent5, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PendingIntent broadcast5 = PendingIntent.getBroadcast(context, 5, intent5, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast5, context, 5, intent5, GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        remoteViews.setOnClickPendingIntent(R.id.no_normal, broadcast5);
        return remoteViews;
    }

    private RemoteViews getRemoteViewsByFragranceState(Context context) {
        boolean z = this.mMainViewModel.getFragranceState().get();
        int i = this.mMainViewModel.getFragranceSlotIndex().get();
        int i2 = this.mMainViewModel.getFragranceLevel().get();
        String[] strArr = this.mMainViewModel.getFragranceTypes().get();
        LogUtil.i(TAG, "getRemoteViewsByFragranceState, isOn" + z + ",slot:" + i + ",level:" + i2 + ",types:" + Arrays.toString(strArr));
        return getRemoteViewsByFragranceState(context, z, i, i2, strArr);
    }

    private void performUpdate(Context context, Intent intent) {
        AppWidgetManager.getInstance(context).updateAppWidget(new ComponentName(context, (Class<?>) getProviderClass()), getRemoteViewsByFragranceState(context));
    }

    private void performClick(Context context, Intent intent) throws Resources.NotFoundException {
        int intExtra = intent.getIntExtra(CLICK_KEY_ID, -1);
        String[] strArr = this.mMainViewModel.getFragranceTypes().get();
        AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        String str = TAG;
        LogUtil.i(str, "performClick, id:" + intExtra);
        if (intExtra == 0) {
            LogUtil.d(str, "performClick, CLICK_ID_SWITCH");
            if (ClickUtils.isFastClick()) {
                return;
            }
            appMainViewModel.fragranceLevelClick(null);
            return;
        }
        if (intExtra == 1) {
            LogUtil.d(str, "performClick, CLICK_ID_TYPE1");
            if (GlyAcApp.getInstance().getString(R.string.no_fragrance).equals(strArr[0])) {
                HmiToastUtils.showBottomLongTime(ActivityManager.getInstance().getCurrentVisibleActivityOrContext(), ActivityManager.getInstance().getCurrentVisibleActivityOrContext().getResources().getString(R.string.no_fragrance));
                return;
            } else {
                appMainViewModel.getOnFragranceSlotIndexChangeListener().onTypeChange(FragranceParser.indexToSlotIndex(0));
                return;
            }
        }
        if (intExtra == 2) {
            LogUtil.d(str, "performClick, CLICK_ID_TYPE2");
            if (GlyAcApp.getInstance().getString(R.string.no_fragrance).equals(strArr[1])) {
                HmiToastUtils.showBottomLongTime(ActivityManager.getInstance().getCurrentVisibleActivityOrContext(), ActivityManager.getInstance().getCurrentVisibleActivityOrContext().getResources().getString(R.string.no_fragrance));
                return;
            } else {
                appMainViewModel.getOnFragranceSlotIndexChangeListener().onTypeChange(FragranceParser.indexToSlotIndex(1));
                return;
            }
        }
        if (intExtra != 3) {
            if (intExtra != 4) {
                return;
            }
            appMainViewModel.buyFragranceClick(new View(ActivityManager.getInstance().getCurrentVisibleActivityOrContext()));
        } else {
            LogUtil.d(str, "performClick, CLICK_ID_TYPE3");
            if (GlyAcApp.getInstance().getString(R.string.no_fragrance).equals(strArr[2])) {
                HmiToastUtils.showBottomLongTime(ActivityManager.getInstance().getCurrentVisibleActivityOrContext(), ActivityManager.getInstance().getCurrentVisibleActivityOrContext().getResources().getString(R.string.no_fragrance));
            } else {
                appMainViewModel.getOnFragranceSlotIndexChangeListener().onTypeChange(FragranceParser.indexToSlotIndex(2));
            }
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
            appWidgetManager.updateAppWidget(i, getRemoteViewsByFragranceState(context));
        }
    }
}
