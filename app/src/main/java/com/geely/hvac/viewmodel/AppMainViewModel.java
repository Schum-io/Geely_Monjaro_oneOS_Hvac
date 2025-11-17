package com.geely.hvac.viewmodel;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableInt;
import androidx.databinding.ObservableField;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.MutableLiveData;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.activity.GlyMainActivity;
import com.geely.hvac.activity.MassageDetailActivity;
import com.geely.hvac.activity.PhysiotherapyDetailLeftActivity;
import com.geely.hvac.component.FragranceType;
import com.geely.hvac.databinding.FragmentSeatHeatBinding;
import com.geely.hvac.databinding.FragmentSeatVentilationBinding;
import com.geely.hvac.databinding.PagerItemSeatBinding;
import com.geely.hvac.util.PhysicsCallbackHint;
import com.geely.hvac.utils.CommonUtils;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyIds;
import com.geely.os.car.GlyCarPropertyValue;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class AppMainViewModel extends MainViewModel {

    public boolean right1click;
    public boolean left1click;
    public MutableLiveData<Map> liveData = new MutableLiveData<>();
    public MutableLiveData<List> liveDataCancel = new MutableLiveData<>();
    private PagerItemSeatBinding mPagerItemSeatBinding;

    private final ObservableInt mSeatDetailPositionIndex = new ObservableInt(0);
    private final ObservableBoolean mRow1LeftSeatLumbarSupport = new ObservableBoolean(false);
    private final ObservableBoolean mRow2RightSeatLegSupport = new ObservableBoolean(false);
    
    private final ObservableBoolean mFragranceState = new ObservableBoolean(false);
    private final ObservableInt mFragranceSlotIndex = new ObservableInt(0);
    private final ObservableInt mFragranceLevel = new ObservableInt(0);
    private final ObservableField<String[]> mFragranceTypes = new ObservableField<>(new String[]{"", "", ""});

    private WeakReference<GlyMainActivity> mActivity;

    private final DefaultLifecycleObserver mMainActivityLifecycleObserver = new DefaultLifecycleObserver() {
    };

    private final DefaultLifecycleObserver mAcSetActivityLifecycleObserver = new DefaultLifecycleObserver() {
    };

    private final DefaultLifecycleObserver mSeatSetActivityLifecycleObserver = new DefaultLifecycleObserver() {
    };

    public DefaultLifecycleObserver getMainActivityLifecycleObserver() {
        return mMainActivityLifecycleObserver;
    }

    public DefaultLifecycleObserver getAcSetActivityLifecycleObserver() {
        return mAcSetActivityLifecycleObserver;
    }

    public DefaultLifecycleObserver getSeatSetActivityLifecycleObserver() {
        return mSeatSetActivityLifecycleObserver;
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
    
    public ObservableBoolean getFragranceState() {
        return mFragranceState;
    }

    public ObservableInt getFragranceSlotIndex() {
        return mFragranceSlotIndex;
    }

    public ObservableInt getFragranceLevel() {
        return mFragranceLevel;
    }

    public ObservableField<String[]> getFragranceTypes() {
        return mFragranceTypes;
    }

    public int getSeatHeatBg(int level) {
        switch (level) {
            case GlyCarPropertyValue.SEAT_HEATING_LEVEL_1 /* 268763649 */:
            case GlyCarPropertyValue.SEAT_HEATING_LEVEL_2 /* 268763650 */:
            case GlyCarPropertyValue.SEAT_HEATING_LEVEL_3 /* 268763651 */:
                return R.mipmap.seat_heat_bg_shadow;
            default:
                return R.drawable.transparent;
        }
    }

    public int getSeatWindBg(int level) {
        switch (level) {
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_1 /* 268763393 */:
                return R.mipmap.seat_wind_bg_shadow1;
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_2 /* 268763394 */:
                return R.mipmap.seat_wind_bg_shadow2;
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_3 /* 268763395 */:
                return R.mipmap.seat_wind_bg_shadow3;
            default:
                return R.drawable.transparent;
        }
    }

    public float getSeatWindBgAlpha(int level) {
        switch (level) {
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_1 /* 268763393 */:
                return 0.3f;
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_2 /* 268763394 */:
                return 0.6f;
            case GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_3 /* 268763395 */:
                return 1.0f;
            default:
                return 0.0f;
        }
    }

    @Override // com.geely.hvac.viewmodel.MainViewModel
    protected Class<? extends Activity> getMassageDetailActivity() {
        return MassageDetailActivity.class;
    }

    @Override // com.geely.hvac.viewmodel.MainViewModel
    protected Class<? extends Activity> getPhysiotherapyDetailLeftActivity() {
        return PhysiotherapyDetailLeftActivity.class;
    }
    
    public int getSeatLocationTabIndex() {
        return 0;
    }

    public boolean isA1() {
        int carVehicleType = this.mSystem.getCarVehicleType();
        LogUtil.d(TAG, "isA1:" + carVehicleType);
        return carVehicleType == 1;
    }

    public boolean isA2() {
        int carVehicleType = this.mSystem.getCarVehicleType();
        LogUtil.d(TAG, "isA2:" + carVehicleType);
        return carVehicleType == 2;
    }

    public void setPsdHeatSeatSetTipsSelect(boolean select) {
        // Stub implementation
    }
    
    public void setSeatSetTipsSelect(boolean select) {
        // Stub implementation
    }

    public void setPsdVentilationSeatSetTipsSelect(boolean select) {
        // Stub implementation
    }

    public void setPsdHeatViewBinding(FragmentSeatHeatBinding binding) {
        this.mPsdHeatSeatBinding = binding;
    }

    public void setPsdVentilationSeatBinding(FragmentSeatVentilationBinding binding) {
        this.mPsdVentilationSeatBinding = binding;
    }
    
    public void setViewBinding(PagerItemSeatBinding binding) {
        this.mPagerItemSeatBinding = binding;
    }

    @Override // com.geely.hvac.viewmodel.MainViewModel
    protected void onIntChangeEvent(int propertyId, int areaId, int value) {
        super.onIntChangeEvent(propertyId, areaId, value);
        if (propertyId == 269746688) {
            LogUtil.d(TAG, "onIntChangeEvent_____HVAC_FUNC_HARDKEY     value : " + value);
            switch (value) {
                case GlyCarPropertyValue.HVAC_HARDKEY_RIGHT_TEMP /* 269746690 */:
                    if (!getMainActivityVisible().get() && !this.mViewModelFroze && CommonUtils.isKX11_A2() && !getIsKx11A3Mode().get()) {
                        PhysicsCallbackHint.showTemperature(GlyAcApp.getInstance());
                        break;
                    }
                    break;
                case GlyCarPropertyValue.HVAC_HARDKEY_FAN_UP /* 269746691 */:
                case GlyCarPropertyValue.HVAC_HARDKEY_FAN_DOWN /* 269746692 */:
                    if (!getMainActivityVisible().get() && !this.mViewModelFroze && CommonUtils.isKX11_A2() && !getIsKx11A3Mode().get()) {
                        PhysicsCallbackHint.showWindLevel(GlyAcApp.getInstance(), getFanAuto(), getAutoAndManualFanLevel());
                        break;
                    }
                    break;
                case GlyCarPropertyValue.HVAC_HARDKEY_MODE /* 269746693 */:
                    if (!getMainActivityVisible().get() && !this.mViewModelFroze && CommonUtils.isKX11_A2() && !getIsKx11A3Mode().get()) {
                        PhysicsCallbackHint.showWindDirection(GlyAcApp.getInstance(), this.mCar.getIntProperty(GlyCarPropertyIds.HVAC_FUNC_BLOWING_MODE, 8));
                        break;
                    }
                    break;
                case GlyCarPropertyValue.HVAC_HARDKEY_AUTO /* 269746694 */:
                    if (!getMainActivityVisible().get() && !this.mViewModelFroze && CommonUtils.isKX11_A2() && !getIsKx11A3Mode().get()) {
                        PhysicsCallbackHint.showWindLevel(GlyAcApp.getInstance(), getFanAuto(), getAutoAndManualFanLevel());
                        break;
                    }
                    break;
            }
        }
    }
    
    public void setActivity(GlyMainActivity activity) {
        this.mActivity = new WeakReference<>(activity);
    }

    public void regetCarModeUserMode() {
        // Stub
    }

    public void isDisplayIVIClick() {
        // Stub
    }
    
    public void confirmPm25Request(int value) {
        // Stub
    }

    public void cancelAnionWindow() {
        // Stub
    }

    public void confirmAnionWindow() {
        // Stub
    }

    public void confirmIonsCloseRequest(View view) {
        // Stub
    }

    public void saveSeatPosition(int zone, Context context) {
        // Stub
    }

    public void setSeatPosition(int zone) {
        // Stub
    }

    public void mirrorSet(View view) {
        // Stub
    }

    public void hudSeat(View view) {
        // Stub
    }

    public boolean isHudAndRearMirrorActive() {
        return false;
    }

    public ObservableInt getSupportObservable(int propertyId) {
        return new ObservableInt(0);
    }
    
    public void lambda$startLeftSeatPhysicsSaveDialog$33$MainViewModel() {
        // Stub implementation
    }

    public boolean isSeatTabItem0() {
        return true;
    }

    public boolean isSeatTabItem1() {
        return true;
    }

    public boolean isSeatTabItem2() {
        return true;
    }

    public void fragranceLevelClick(View view) {
        // Stub
    }

    public FragranceType.OnFragranceTypeChangeListener getOnFragranceSlotIndexChangeListener() {
        return type -> {};
    }

    public void buyFragranceClick(View view) {
        // Stub
    }

    public ObservableInt getMassageLevel(int zone) {
        return new ObservableInt(0);
    }

    public ObservableInt getMassageType(int zone) {
        return new ObservableInt(0);
    }

    public ObservableBoolean getMassageState(int zone) {
        return new ObservableBoolean(false);
    }

    public void massageLevelClick(int zone) {
        // Stub
    }

    public void setMassageDetailZone(int zone) {
        // Stub
    }

    public void updateAnimateRes() {
        // Stub
    }
}
