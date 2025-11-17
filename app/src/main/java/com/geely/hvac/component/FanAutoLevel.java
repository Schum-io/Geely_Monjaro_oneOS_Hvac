package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableInt;
import com.geely.hvac.databinding.LayoutFanAutoLevelBinding;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class FanAutoLevel extends ConstraintLayout {
    private static final String TAG = FanLevel.class.getSimpleName();
    private OnFanAutoLevelChanged listener;
    private LayoutFanAutoLevelBinding mBinding;
    private final ObservableBoolean mEnable;
    private final ObservableInt mFanAutoLevel;

    public interface OnFanAutoLevelChanged {
        void onChanged(int level);
    }

    public FanAutoLevel(Context context) {
        super(context);
        this.mFanAutoLevel = new ObservableInt(1);
        this.mEnable = new ObservableBoolean(true);
        this.mBinding = null;
        this.listener = null;
        init(context, (AttributeSet) null, 0);
    }

    public FanAutoLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mFanAutoLevel = new ObservableInt(1);
        this.mEnable = new ObservableBoolean(true);
        this.mBinding = null;
        this.listener = null;
        init(context, attrs, 0);
    }

    public FanAutoLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mFanAutoLevel = new ObservableInt(1);
        this.mEnable = new ObservableBoolean(true);
        this.mBinding = null;
        this.listener = null;
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        LayoutFanAutoLevelBinding layoutFanAutoLevelBindingInflate = LayoutFanAutoLevelBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutFanAutoLevelBindingInflate;
        layoutFanAutoLevelBindingInflate.setView(this);
        this.mBinding.softLevel.setOnClickListener(new OnClickListener() { // from class: com.geely.hvac.component.FanAutoLevel.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FanAutoLevel.this.select(1);
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        this.mBinding.comfortLevel.setOnClickListener(new OnClickListener() { // from class: com.geely.hvac.component.FanAutoLevel.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FanAutoLevel.this.select(3);
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        this.mBinding.powerfulLevel.setOnClickListener(new OnClickListener() { // from class: com.geely.hvac.component.FanAutoLevel.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                FanAutoLevel.this.select(5);
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
    }

    public static void bind(FanAutoLevel fanAutoLevel, int autoLevel, OnFanAutoLevelChanged listener) {
        fanAutoLevel.setFanAutoLevel(autoLevel);
        fanAutoLevel.listener = listener;
    }

    public static void bindEnable(FanAutoLevel view, boolean enable) {
        view.setEnable(enable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void select(int index) {
        LogUtil.d(TAG, "select, index:" + index);
        this.listener.onChanged(index);
        setFanAutoLevel(index);
    }

    private void setFanAutoLevel(int autoLevel) {
        this.mFanAutoLevel.set(autoLevel);
    }

    public ObservableInt getFanAutoLevel() {
        return this.mFanAutoLevel;
    }

    private void setEnable(boolean enable) {
        this.mEnable.set(enable);
    }

    public ObservableBoolean getEnable() {
        return this.mEnable;
    }
}
