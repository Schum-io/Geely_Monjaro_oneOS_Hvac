package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableInt;
import com.geely.hvac.component.ManualFanLevel;
import com.geely.hvac.databinding.LayoutFanLevelBinding;
import com.geely.hvac.util.ClickUtils;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class FanLevel extends ConstraintLayout {
    private static final String TAG = "FanLevel";
    private OnFanLevelInputChanged listener;
    private LayoutFanLevelBinding mBinding;
    private final ObservableInt mCurrentLevel;
    private final float mDisableAlpha;
    private final ObservableBoolean mEnable;
    private boolean mIsAutoFan;
    private boolean mIsHvacOn;
    private ManualFanLevel.FanLevelChangeListener mListener;
    private final ObservableInt mMaxFanLevel;

    public interface OnFanLevelInputChanged {
        void addReduceFanLevelChanged(int level, boolean isAdd);

        void onAddChanged();

        void onChanged(int level, boolean isTouch);
    }

    public ManualFanLevel.FanLevelChangeListener getListener() {
        return this.mListener;
    }

    public ObservableInt getMaxFanLevel() {
        return this.mMaxFanLevel;
    }

    public ObservableInt getCurrentLevel() {
        return this.mCurrentLevel;
    }

    public ObservableBoolean getEnable() {
        return this.mEnable;
    }

    public static void bind(FanLevel fanLevel, boolean isAutoFan, int maxFanLevel, boolean isHvacOn, int currentLevel, OnFanLevelInputChanged listener) {
        fanLevel.setAutoFan(isAutoFan);
        fanLevel.setMaxFanLevel(maxFanLevel);
        fanLevel.setHvacState(isHvacOn);
        fanLevel.setCurrentLevel(currentLevel);
        fanLevel.listener = listener;
    }

    public static void bindEnable(FanLevel view, boolean enable) {
        view.setEnable(enable);
    }

    private void setEnable(boolean enable) {
        this.mEnable.set(enable);
        updateAddReduceEnable();
        if (enable) {
            setCurrentLevel(this.mCurrentLevel.get());
        }
    }

    public void setHvacState(boolean isHvacOn) {
        LogUtil.i(TAG, "setHvacState, isHvacOn:" + isHvacOn);
        this.mIsHvacOn = isHvacOn;
    }

    private void updateAddReduceEnable() {
        this.mBinding.reduce.setAlpha(this.mCurrentLevel.get() != 0 && this.mEnable.get() ? 1.0f : 0.6f);
        this.mBinding.add.setAlpha(this.mCurrentLevel.get() != this.mMaxFanLevel.get() && this.mEnable.get() ? 1.0f : 0.6f);
    }

    public void setAutoFan(boolean autoFan, boolean forceUpdate) {
        boolean zIsLight = DayNightUtil.isLight();
        LogUtil.i(TAG, "setAutoFan, autoFan:" + autoFan + ",forceUpdate:" + forceUpdate + ", mIsAutoFan:" + this.mIsAutoFan + ", isLight:" + zIsLight);
        if (forceUpdate || this.mIsAutoFan != autoFan) {
            this.mIsAutoFan = autoFan;
            this.mBinding.add.setAnimation("lottie/" + (zIsLight ? "light" : "night") + "/" + (autoFan ? "auto_fan_64" : "fan_64") + "/animate.json");
            this.mBinding.add.setImageAssetsFolder("lottie/" + (zIsLight ? "light" : "night") + "/" + (autoFan ? "auto_fan_64" : "fan_64") + "/images");
            this.mBinding.reduce.setAnimation("lottie/" + (zIsLight ? "light" : "night") + "/" + (autoFan ? "auto_fan_64" : "fan_64") + "/animate.json");
            this.mBinding.reduce.setImageAssetsFolder("lottie/" + (zIsLight ? "light" : "night") + "/" + (autoFan ? "auto_fan_64" : "fan_64") + "/images");
        }
    }

    public void setAutoFan(boolean autoFan) {
        setAutoFan(autoFan, false);
    }

    public void setMaxFanLevel(int maxFanLevel) {
        LogUtil.i(TAG, "setMaxFanLevel, level:" + maxFanLevel);
        this.mMaxFanLevel.set(maxFanLevel);
        updateAddReduceEnable();
    }

    public void setCurrentLevel(int newLevel) {
        LogUtil.i(TAG, "setCurrentLevel, level:" + newLevel);
        this.mCurrentLevel.set(newLevel);
        if (this.mEnable.get()) {
            updateAddReduceEnable();
        }
    }

    public FanLevel(Context context) {
        super(context);
        this.mIsAutoFan = false;
        this.mIsHvacOn = false;
        this.mMaxFanLevel = new ObservableInt(9);
        this.mCurrentLevel = new ObservableInt(0);
        this.mBinding = null;
        this.mEnable = new ObservableBoolean(true);
        this.mDisableAlpha = 0.6f;
        this.mListener = new ManualFanLevel.FanLevelChangeListener() { // from class: com.geely.hvac.component.FanLevel.1
            @Override // com.geely.hvac.component.ManualFanLevel.FanLevelChangeListener
            public void onChange(ManualFanLevel fanLevel, int level, boolean isTouch) {
                LogUtil.i(FanLevel.TAG, "mListener onChange:" + level);
                FanLevel.this.setCurrentLevel(level);
                FanLevel.this.callBackLevel(level, isTouch);
            }
        };
        this.listener = null;
        init(context, (AttributeSet) null, 0);
    }

    public FanLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mIsAutoFan = false;
        this.mIsHvacOn = false;
        this.mMaxFanLevel = new ObservableInt(9);
        this.mCurrentLevel = new ObservableInt(0);
        this.mBinding = null;
        this.mEnable = new ObservableBoolean(true);
        this.mDisableAlpha = 0.6f;
        this.mListener = new ManualFanLevel.FanLevelChangeListener() { // from class: com.geely.hvac.component.FanLevel.1
            @Override // com.geely.hvac.component.ManualFanLevel.FanLevelChangeListener
            public void onChange(ManualFanLevel fanLevel, int level, boolean isTouch) {
                LogUtil.i(FanLevel.TAG, "mListener onChange:" + level);
                FanLevel.this.setCurrentLevel(level);
                FanLevel.this.callBackLevel(level, isTouch);
            }
        };
        this.listener = null;
        init(context, attrs, 0);
    }

    public FanLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIsAutoFan = false;
        this.mIsHvacOn = false;
        this.mMaxFanLevel = new ObservableInt(9);
        this.mCurrentLevel = new ObservableInt(0);
        this.mBinding = null;
        this.mEnable = new ObservableBoolean(true);
        this.mDisableAlpha = 0.6f;
        this.mListener = new ManualFanLevel.FanLevelChangeListener() { // from class: com.geely.hvac.component.FanLevel.1
            @Override // com.geely.hvac.component.ManualFanLevel.FanLevelChangeListener
            public void onChange(ManualFanLevel fanLevel, int level, boolean isTouch) {
                LogUtil.i(FanLevel.TAG, "mListener onChange:" + level);
                FanLevel.this.setCurrentLevel(level);
                FanLevel.this.callBackLevel(level, isTouch);
            }
        };
        this.listener = null;
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        LayoutFanLevelBinding layoutFanLevelBindingInflate = LayoutFanLevelBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutFanLevelBindingInflate;
        layoutFanLevelBindingInflate.setView(this);
        this.mBinding.add.setOnClickListener(this::lambda$init$0$FanLevel);
        this.mBinding.reduce.setOnClickListener(this::lambda$init$1$FanLevel);
        updateAddReduceEnable();
        setAutoFan(this.mIsAutoFan, true);
    }

    public /* synthetic */ void lambda$init$0$FanLevel(View view) {
        if (!this.mEnable.get()) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        if (ClickUtils.isFastClick()) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        if (this.mCurrentLevel.get() >= this.mMaxFanLevel.get()) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        int i = this.mCurrentLevel.get() + 1;
        if (i < this.mMaxFanLevel.get()) {
            this.mBinding.add.playAnimation();
        }
        if (this.mIsHvacOn) {
            setCurrentLevel(i);
        }
        this.listener.addReduceFanLevelChanged(i, true);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$init$1$FanLevel(View view) {
        if (!this.mEnable.get()) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        if (ClickUtils.isFastClick()) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        if (this.mCurrentLevel.get() <= 0) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        int i = this.mCurrentLevel.get() - 1;
        if (i > 0) {
            this.mBinding.reduce.playAnimation();
        }
        if (this.mIsHvacOn) {
            setCurrentLevel(i);
        }
        this.listener.addReduceFanLevelChanged(i, false);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callBackLevel(int level, boolean isTouch) {
        OnFanLevelInputChanged onFanLevelInputChanged = this.listener;
        if (onFanLevelInputChanged != null) {
            onFanLevelInputChanged.onChanged(level, isTouch);
        }
    }
}
