package com.geely.hvac.psd.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.psd.component.SeatSecondTabAdapter;
import com.geely.hvac.psd.component.SeatTabEntity;
import com.geely.hvac.psd.fragment.GlySeatHeatFragment;
import com.geely.hvac.psd.fragment.GlySeatLocationFragment;
import com.geely.hvac.psd.fragment.GlySeatMassageFragment;
import com.geely.hvac.psd.fragment.GlySeatPhysicalTherapyFragment;
import com.geely.hvac.psd.fragment.GlySeatVentilationFragment;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCar;
import com.geely.os.car.GlyCarPropertyIds;
import com.geely.os.car.GlySupportStatus;
import com.geely.os.car.IGlyCar;
import com.geely.os.car.IGlyCarEventCallBack;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GlySettingsSeatSecondDisplayActivity extends AppCompatActivity {
    public static final String FINISH_ACTIVITY = "com.geely.hvac.CLOSE_PSD_SEAT_SETTING";
    private static final int[] PSD_REGISTER_PROPERTY = {GlyCarPropertyIds.HVAC_FUNC_SEAT_HEATING, GlyCarPropertyIds.HVAC_FUNC_SEAT_VENTILATION, GlyCarPropertyIds.HVAC_FUNC_SEAT_MASSAGE_SWITCH, GlyCarPropertyIds.SETTING_FUNC_SEAT_PHYSIOTHERAPY_SWITCH, GlyCarPropertyIds.SETTING_FUNC_SEAT_LENGTH, GlyCarPropertyIds.SETTING_FUNC_SEAT_HEIGHT, GlyCarPropertyIds.SETTING_FUNC_SEAT_BACKREST, GlyCarPropertyIds.SETTING_FUNC_SEAT_LEG_SUPPORT_HEIGHT, GlyCarPropertyIds.SETTING_FUNC_SEAT_LEG_SUPPORT_LENGTH};
    private static long mLastUpdateTime;
    private final FinishActivityReceiver finishActivityReceiver;
    protected final IGlyCar mCar;
    private FragmentManager mFragmentManager;
    private List<Fragment> mFragments;
    private WeakReference<Fragment> mHeatFragment;
    private int mHeatSupportStatus;
    private final IGlyCarEventCallBack mIGlyCarEventCallBack;
    private ImageView mLlBack;
    private HmiTextView mLlBackText;
    private WeakReference<Fragment> mLocationFragment;
    private WeakReference<Fragment> mMassageFragment;
    private int mMassageSupportStatus;
    private int mPhysicalSupportStatus;
    private WeakReference<Fragment> mPhysicalTherapyFragment;
    private RecyclerView mRvFunctionList;
    private int mSeatBackrestSupportStatus;
    private int mSeatHeightSupportStatus;
    private int mSeatLegSupportHeight;
    private int mSeatLegSupportLength;
    private int mSeatLengthSupportStatus;
    private SeatSecondTabAdapter mSeatSecondTabAdapter;
    private ConstraintLayout mSecondBg;
    private int mUiMode;
    private WeakReference<Fragment> mVentilationFragment;
    private int mVentilationSupportStatus;
    private SharedPreferences preferences;
    private int selectedIndex;
    protected final String TAG = "GlySettingsSeatSecondDisplayActivity";
    private List<SeatTabEntity> mSeatTabList = new ArrayList();

    public GlySettingsSeatSecondDisplayActivity() {
        IGlyCar iGlyCarCreate = GlyCar.create(GlyAcApp.getInstance());
        this.mCar = iGlyCarCreate;
        this.mHeatSupportStatus = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.HVAC_FUNC_SEAT_HEATING, 4);
        this.mVentilationSupportStatus = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.HVAC_FUNC_SEAT_VENTILATION, 4);
        this.mMassageSupportStatus = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.HVAC_FUNC_SEAT_MASSAGE_SWITCH, 4);
        this.mPhysicalSupportStatus = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.SETTING_FUNC_SEAT_PHYSIOTHERAPY_SWITCH, 4);
        this.mSeatLengthSupportStatus = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.SETTING_FUNC_SEAT_LENGTH, 4);
        this.mSeatHeightSupportStatus = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.SETTING_FUNC_SEAT_HEIGHT, 4);
        this.mSeatBackrestSupportStatus = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.SETTING_FUNC_SEAT_BACKREST, 4);
        this.mSeatLegSupportHeight = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.SETTING_FUNC_SEAT_LEG_SUPPORT_HEIGHT, 64);
        this.mSeatLegSupportLength = iGlyCarCreate.getSupportStatus(GlyCarPropertyIds.SETTING_FUNC_SEAT_LEG_SUPPORT_LENGTH, 64);
        this.selectedIndex = 0;
        this.finishActivityReceiver = new FinishActivityReceiver();
        this.mIGlyCarEventCallBack = new IGlyCarEventCallBack() { // from class: com.geely.hvac.psd.activity.GlySettingsSeatSecondDisplayActivity.1
            @Override // com.geely.os.car.IGlyCarEventCallBack
            public void onChangeEvent(int propertyId, int areaId, Object value) {
            }

            @Override // com.geely.os.car.IGlyCarEventCallBack
            public void onSupportChanged(int propertyId, int areaId, int status) {
                LogUtil.d("GlySettingsSeatSecondDisplayActivity", "onSupportChanged propertyId = " + propertyId + "[areaId]:" + areaId + "[status]:" + status);
                if (areaId == 4) {
                    GlySettingsSeatSecondDisplayActivity.this.orderUpdate(propertyId, status);
                } else if (areaId == 64) {
                    if (propertyId == 755499264 || propertyId == 755499520) {
                        GlySettingsSeatSecondDisplayActivity.this.orderUpdate(propertyId, status);
                    }
                }
            }
        };
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings_seat_second_display);
        this.mUiMode = getResources().getConfiguration().uiMode;
        this.preferences = getSharedPreferences("GlySettingsSeatSecondDisplayActivity", 0);
        LogUtil.e("GlySettingsSeatSecondDisplayActivity", "onCreate  index = " + this.preferences.getInt("selectedIndex", 0));
        setSelectedIndex(this.preferences.getInt("selectedIndex", 0));
        registerReceiver(this.finishActivityReceiver, new IntentFilter(FINISH_ACTIVITY));
        System.setProperty("isPSDSeatActivity", "true");
        initView();
        IGlyCar iGlyCar = this.mCar;
        if (iGlyCar != null) {
            iGlyCar.registerSingleCarEventCallback(this.mIGlyCarEventCallBack, PSD_REGISTER_PROPERTY);
        }
    }

    private void initView() {
        this.mLlBack = (ImageView) findViewById(R.id.iv_back);
        this.mSeatSecondTabAdapter = new SeatSecondTabAdapter(this, this.mSeatTabList, this.preferences);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_function_list);
        this.mRvFunctionList = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        this.mRvFunctionList.setAdapter(this.mSeatSecondTabAdapter);
        this.mLlBack.setOnClickListener(this::onBackClicked);
        initFragments();
        buildFragmentList();
        switchFunction(this.selectedIndex);
    }

    private void onBackClicked(View view) {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putInt("selectedIndex", 0);
        editorEdit.commit();
        moveTaskToBack(false);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void buildFragmentList() {
        if (this.mFragments == null) {
            this.mFragments = new ArrayList();
        }
        if (this.mSeatTabList == null) {
            this.mSeatTabList = new ArrayList();
        }
        this.mFragments.clear();
        this.mSeatTabList.clear();
        if (this.mHeatSupportStatus != GlySupportStatus.notavailable) {
            WeakReference<Fragment> weakReference = this.mHeatFragment;
            if (weakReference == null || weakReference.get() == null) {
                this.mHeatFragment = new WeakReference<>(new GlySeatHeatFragment());
            }
            this.mFragments.add(this.mHeatFragment.get());
            this.mSeatTabList.add(new SeatTabEntity("加热", R.drawable.ic_seat_right_03));
        }
        if (this.mVentilationSupportStatus != GlySupportStatus.notavailable) {
            WeakReference<Fragment> weakReference2 = this.mVentilationFragment;
            if (weakReference2 == null || weakReference2.get() == null) {
                this.mVentilationFragment = new WeakReference<>(new GlySeatVentilationFragment());
            }
            this.mFragments.add(this.mVentilationFragment.get());
            this.mSeatTabList.add(new SeatTabEntity("通风", R.drawable.ic_seat_fan_right03));
        }
        if (this.mMassageSupportStatus != GlySupportStatus.notavailable) {
            WeakReference<Fragment> weakReference3 = this.mMassageFragment;
            if (weakReference3 == null || weakReference3.get() == null) {
                this.mMassageFragment = new WeakReference<>(new GlySeatMassageFragment());
            }
            this.mFragments.add(this.mMassageFragment.get());
            this.mSeatTabList.add(new SeatTabEntity("按摩", R.drawable.ic_massage));
        }
        if (this.mPhysicalSupportStatus != GlySupportStatus.notavailable) {
            WeakReference<Fragment> weakReference4 = this.mPhysicalTherapyFragment;
            if (weakReference4 == null || weakReference4.get() == null) {
                this.mPhysicalTherapyFragment = new WeakReference<>(new GlySeatPhysicalTherapyFragment());
            }
            this.mFragments.add(this.mPhysicalTherapyFragment.get());
            this.mSeatTabList.add(new SeatTabEntity("理疗", R.drawable.ic_physical_therapy));
        }
        if (this.mSeatLengthSupportStatus != GlySupportStatus.notavailable || this.mSeatHeightSupportStatus != GlySupportStatus.notavailable || this.mSeatBackrestSupportStatus != GlySupportStatus.notavailable || this.mSeatLegSupportHeight != GlySupportStatus.notavailable || this.mSeatLegSupportLength != GlySupportStatus.notavailable) {
            WeakReference<Fragment> weakReference5 = this.mLocationFragment;
            if (weakReference5 == null || weakReference5.get() == null) {
                this.mLocationFragment = new WeakReference<>(new GlySeatLocationFragment());
            }
            this.mFragments.add(this.mLocationFragment.get());
            this.mSeatTabList.add(new SeatTabEntity("位置", R.drawable.ic_location));
        }
        LogUtil.d("GlySettingsSeatSecondDisplayActivity", "mSeatTabList = " + this.mSeatTabList.size());
    }

    private void initFragments() {
        this.mFragments = new ArrayList();
        this.mFragmentManager = getSupportFragmentManager();
    }

    public void switchFunction(int index) {
        LogUtil.d("GlySettingsSeatSecondDisplayActivity", "switchFunction  index: " + index);
        if (index > this.mFragments.size() - 1) {
            index = this.mFragments.size() - 1;
        }
        if (this.mFragments.size() == 0) {
            this.selectedIndex = 0;
            this.mFragmentManager.getFragments().forEach(this::removeFragment);
        } else {
            this.selectedIndex = index;
            this.mFragmentManager.beginTransaction().replace(R.id.fragment_container, this.mFragments.get(this.selectedIndex)).commit();
        }
        this.mSeatSecondTabAdapter.setSelectedIndex(this.selectedIndex);
        this.mSeatSecondTabAdapter.notifyDataSetChanged();
    }

    private void removeFragment(Fragment fragment) {
        this.mFragmentManager.beginTransaction().remove(fragment).commit();
    }

    public void setSelectedIndex(int selectedIndex) {
        this.selectedIndex = selectedIndex;
    }

    private void orderUpdate(final int propertyId, final int newStatus) {
        if (System.currentTimeMillis() - mLastUpdateTime > 2000) {
            LogUtil.d("GlySettingsSeatSecondDisplayActivity", "orderUpdate");
            Executor.MAIN.post(() -> updateListAndFragment(propertyId, newStatus));
            mLastUpdateTime = System.currentTimeMillis();
        } else {
            LogUtil.d("GlySettingsSeatSecondDisplayActivity", "wait for refresh");
            Executor.MAIN.postDelayed(() -> orderUpdate(propertyId, newStatus), 2000L);
        }
    }

    private boolean isNeedRefresh(int mSingleSupportStatus, int newStatus) {
        return mSingleSupportStatus == GlySupportStatus.notavailable || newStatus == GlySupportStatus.notavailable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0172  */
    public void updateListAndFragment(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.hvac.psd.activity.GlySettingsSeatSecondDisplayActivity.lambda$orderUpdate$2$GlySettingsSeatSecondDisplayActivity(int, int):void");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        System.setProperty("isPSDSeatActivity", "false");
        IGlyCar iGlyCar = this.mCar;
        if (iGlyCar != null) {
            iGlyCar.unregisterSingleCarEventCallback(this.mIGlyCarEventCallBack);
        }
    }

    public class FinishActivityReceiver extends BroadcastReceiver {
        public FinishActivityReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (intent == null || !intent.getAction().equals(GlySettingsSeatSecondDisplayActivity.FINISH_ACTIVITY)) {
                return;
            }
            LogUtil.d("GlySettingsSeatSecondDisplayActivity", "Broadcast finish activity");
            GlySettingsSeatSecondDisplayActivity.this.moveTaskToBack(false);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        System.setProperty("isPSDSeatActivity", "true");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        System.setProperty("isPSDSeatActivity", "false");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        LogUtil.d("GlySettingsSeatSecondDisplayActivity", "mUiMode = " + this.mUiMode + " , newConfig.uiMode = " + newConfig.uiMode);
        if (this.mUiMode != newConfig.uiMode) {
            this.mUiMode = newConfig.uiMode;
            recreate();
        }
    }
}
