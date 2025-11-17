package com.geely.hvac.viewmodel;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import androidx.databinding.Observable;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableDouble;
import androidx.databinding.ObservableField;
import androidx.databinding.ObservableFloat;
import androidx.databinding.ObservableInt;
import androidx.databinding.ObservableLong;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.GlyAcManager;
import com.geely.hvac.R;
import com.geely.hvac.activity.AcSetActivity;
import com.geely.hvac.activity.AnionWindowHintActivity;
import com.geely.hvac.activity.BuyFragranceActivity;
import com.geely.hvac.activity.ConstantAcWarningActivity;
import com.geely.hvac.activity.FragranceTipsActivity;
//import com.geely.hvac.activity.HeatSteeringWheelSetActivity;
import com.geely.hvac.activity.MirrorHudSetActivity;
import com.geely.hvac.activity.Pm25RequestActivity;
import com.geely.hvac.activity.SeatPhysicsSetSaveDialog;
import com.geely.hvac.activity.SeatSetActivity;
import com.geely.hvac.activity.SeatSetDetailActivity;
import com.geely.hvac.adapt.FunctionIds;
import com.geely.hvac.beans.AdaptApiInt;
import com.geely.hvac.classify.SeatKey;
import com.geely.hvac.classify.classifyreturn.SeatKeyReturn;
import com.geely.hvac.component.FanAutoLevel;
import com.geely.hvac.component.FanLevel;
import com.geely.hvac.component.FragranceLeveView;
import com.geely.hvac.component.FragranceType;
import com.geely.hvac.component.ImageViewWithUpDown;
import com.geely.hvac.component.SeekBarBindingAdapter;
import com.geely.hvac.component.Switch;
import com.geely.hvac.component.Temperature;
import com.geely.hvac.component.intf.MassageTypeChangeListener;
import com.geely.hvac.component.intf.PhysiotherapyTypeChangeListener;
import com.geely.hvac.component.intf.SeatPositionSaveTabChangeListener;
import com.geely.hvac.component.intf.SeatTabChangeListener;
import com.geely.hvac.component.intf.SeatTimeSelectorChangeListener;
import com.geely.hvac.component.intf.SelectorChangedListener;
import com.geely.hvac.data.ConstantData;
import com.geely.hvac.data.DataEvent;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.databinding.FragmentSeatHeatBinding;
import com.geely.hvac.databinding.FragmentSeatVentilationBinding;
import com.geely.hvac.databinding.LayoutSeatSetDetailBinding;
import com.geely.hvac.databinding.PagerItemSeatBinding;
import com.geely.hvac.dialog.SeatSetTipsDialog;
import com.geely.hvac.launcherwidget.FragranceWidgetProvider;
import com.geely.hvac.launcherwidget.SeatMassageWidgetProvider;
import com.geely.hvac.provider.HvacCommunicateContentProvider;
import com.geely.hvac.util.ClickUtils;
import com.geely.hvac.util.PhysiotherapyUtil;
import com.geely.hvac.utils.ActivityManager;
import com.geely.hvac.utils.AdaptUtil;
import com.geely.hvac.utils.CommonUtils;
import com.geely.hvac.utils.Debounce;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.FragranceParser;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;
import com.geely.hvac.utils.Throttle;
import com.geely.hvac.utils.UiUtil;
import com.geely.hvac.utils.ViewFroze;
import com.geely.lib.oneosapi.OneOSApiManager;
import com.geely.lib.oneosapi.user.UserManager;
import com.geely.lib.oneosapi.user.bean.LoginType;
import com.geely.lib.oneosapi.user.bean.UserInfo;
import com.geely.os.car.GlyCar;
import com.geely.os.car.GlyCarPropertyIds;
import com.geely.os.car.GlyCarPropertyValue;
import com.geely.os.car.GlyLog;
import com.geely.os.car.GlySupportStatus;
import com.geely.os.car.IGlyCar;
import com.geely.os.car.IGlyCarEventCallBack;
import com.geely.os.system.GlySystem;
import com.geely.os.system.IGlySystem;
import com.geely.toolchain.hmi.view.HmiToastUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class MainViewModel extends BaseViewModel {
    public static final String TAG = "MainViewModel";
    
    // Constants
    public static final String AIR_FRONT_BLOWING_RES = "/storage/emulated/0/hvac/";
    public static final int AUTO_FAN_MAX_LEVEL = 5;
    public static final int CAR_TPYE_EX11_A1 = 1;
    public static final int CAR_TPYE_EX11_A2 = 2;
    public static final int CAR_TPYE_KX11 = 3;
    public static final int CAR_TPYE_KX11_PHEV = 4;
    public static final int CAR_TPYE_UNKNOWN = 0;
    public static final int FAN_MAX_LEVEL = 9;
    protected static final int REFRESH_TIME = 2000;
    
    // Fields
    protected final IGlyCar mCar = GlyCar.create(GlyAcApp.getInstance());
    protected final IGlySystem mSystem = GlySystem.create(GlyAcApp.getInstance());
    protected boolean mViewModelFroze = true;
    
    private final ObservableBoolean mMainActivityVisible = new ObservableBoolean(false);
    private final ObservableBoolean mPanelVisible = new ObservableBoolean(false);
    private final ObservableBoolean mIsKx11A3Mode = new ObservableBoolean(false);
    private final ObservableInt mMainTabIndex = new ObservableInt(0);
    private final ObservableInt mSeatTabIndex = new ObservableInt(0);
    private final ObservableInt mSeatDetailPositionIndex = new ObservableInt(0);
    private final ObservableBoolean mRow1LeftSeatLumbarSupport = new ObservableBoolean(false);
    private final ObservableBoolean mRow2RightSeatLegSupport = new ObservableBoolean(false);
    private final ObservableBoolean mAcSetVisible = new ObservableBoolean(false);
    private final ObservableBoolean mSeatSetVisible = new ObservableBoolean(false);
    private final ObservableBoolean mSeatFeaturesVisible = new ObservableBoolean(false);
    protected boolean mSeatDetailShow = false;
    private final ObservableInt mSeatSaveTabIndex = new ObservableInt(GlyCarPropertyValue.SEAT_POSITION_SAVE_AS_2);
    private final ObservableInt mSeatLoadEv = new ObservableInt(0);
    private final ObservableInt mFragranceSupported = new ObservableInt(GlySupportStatus.notavailable);
    
    protected FragmentSeatHeatBinding mPsdHeatSeatBinding;
    protected FragmentSeatVentilationBinding mPsdVentilationSeatBinding;
    
    // Lifecycle observers stub
    private final DefaultLifecycleObserver mSeatTimeSetActivityLifecycleObserver = new DefaultLifecycleObserver() {
    };

    // Methods required by AppMainViewModel override
    protected Class<? extends Activity> getMassageDetailActivity() {
        return null;
    }

    protected Class<? extends Activity> getPhysiotherapyDetailLeftActivity() {
        return null;
    }
    
    protected void onIntChangeEvent(int propertyId, int areaId, int value) {
        // stub
    }
    
    public void onConfigurationChanged(Configuration newConfig) {
        // stub
    }
    
    // Getters for fields used in AppMainViewModel
    public ObservableBoolean getMainActivityVisible() {
        return mMainActivityVisible;
    }

    public ObservableBoolean getPanelVisible() {
        return mPanelVisible;
    }
    
    public ObservableBoolean getIsKx11A3Mode() {
        return mIsKx11A3Mode;
    }

    public ObservableInt getMainTabIndex() {
        return mMainTabIndex;
    }

    public ObservableInt getSeatTabIndex() {
        return mSeatTabIndex;
    }
    
    public boolean getFanAuto() {
        return false; // stub - changed to boolean
    }
    
    public int getAutoAndManualFanLevel() {
        return 0; // stub
    }
    
    public ObservableInt getSeatDetailPositionIndex() {
        return mSeatDetailPositionIndex;
    }

    public ObservableBoolean getRow1LeftSeatLumbarSupport() {
        return mRow1LeftSeatLumbarSupport;
    }

    public ObservableBoolean getRow2RightSeatLegSupport() {
        return mRow2RightSeatLegSupport;
    }
    
    public ObservableInt getSeatSaveTabIndex() {
        return mSeatSaveTabIndex;
    }

    public ObservableInt getSeatLoadEv() {
        return mSeatLoadEv;
    }
    
    public void refreshAllState() throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        // stub for GlyAcStateManager lambda
    }
    
    public DefaultLifecycleObserver getSeatTimeSetActivityLifecycleObserver() {
        return mSeatTimeSetActivityLifecycleObserver;
    }
    
    public ObservableInt getFragranceSupported() {
        return mFragranceSupported;
    }
    
    public boolean isFunctionAvailable(int value) {
        return value != GlySupportStatus.notavailable;
    }

    // Stub for enableSeatSeat which was referenced in listeners
    public void enableSeatSeat(int zone) {
    }
}
