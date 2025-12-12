package com.geely.hvac.component;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableInt;
import com.geely.hvac.R;
import com.geely.hvac.component.intf.SeatTimeSelectorChangeListener;
import com.geely.hvac.databinding.LayoutSeatHeatTimeSelectorBinding;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.ViewFroze;

/* loaded from: classes.dex */
public class SeatTimeSelector extends ConstraintLayout {
    private static final String TAG = "SeatTimeSelector";
    private LayoutSeatHeatTimeSelectorBinding mBinding;
    private ObservableBoolean mEnable;
    private SeatTimeSelectorChangeListener mOnLevelChangedListener;
    private ObservableInt mSelectIndex;
    private ValueAnimator mValueAnimator;
    private final ViewFroze mViewFroze;

    public int indexToLevel(int index) {
        return 0;
    }

    public int levelToIndex(int level) {
        return 0;
    }

    public static void bind(SeatTimeSelector view, int level) {
        LogUtil.d(TAG, "bindTimeLevel, level:" + level + ",tag:" + view.getTag());
        view.select(view.levelToIndex(level), true);
    }

    public static void bind(SeatTimeSelector view, boolean enable) {
        LogUtil.d(TAG, "bindTimeEnable, enable:" + enable + ",tag:" + view.getTag());
        view.setEnable(enable);
    }

    private void setEnable(boolean enable) {
        this.mEnable.set(enable);
    }

    public static void bind(SeatTimeSelector view, SeatTimeSelectorChangeListener listener) {
        LogUtil.d(TAG, "bindTimeLevelChangeListener, listener:" + listener);
        view.mOnLevelChangedListener = listener;
    }

    public SeatTimeSelector(Context context) {
        super(context);
        this.mEnable = new ObservableBoolean(true);
        this.mSelectIndex = new ObservableInt(0);
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        init(context, null);
    }

    public SeatTimeSelector(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mEnable = new ObservableBoolean(true);
        this.mSelectIndex = new ObservableInt(0);
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        init(context, attrs);
    }

    public SeatTimeSelector(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mEnable = new ObservableBoolean(true);
        this.mSelectIndex = new ObservableInt(0);
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        init(context, attrs);
    }

    public ObservableBoolean getEnable() {
        return this.mEnable;
    }

    public ObservableInt getSelectIndex() {
        return this.mSelectIndex;
    }

    private void init(Context context, AttributeSet attrs) {
        LayoutSeatHeatTimeSelectorBinding layoutSeatHeatTimeSelectorBindingInflate = LayoutSeatHeatTimeSelectorBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutSeatHeatTimeSelectorBindingInflate;
        layoutSeatHeatTimeSelectorBindingInflate.setSelector(this);
        LayoutParams layoutParams = (LayoutParams) this.mBinding.indicator.getLayoutParams();
        layoutParams.setMarginStart(getResources().getDimensionPixelOffset(R.dimen.seat_heat_time_selector_indicator_left) + (this.mSelectIndex.get() * getResources().getDimensionPixelOffset(R.dimen.seat_heat_time_selector_item_width)));
        this.mBinding.indicator.setLayoutParams(layoutParams);
    }

    private void select(int index, boolean isFromUser) {
        if (index == this.mSelectIndex.get()) {
            return;
        }
        this.mSelectIndex.set(index);
        SeatTimeSelectorChangeListener seatTimeSelectorChangeListener = this.mOnLevelChangedListener;
        if (seatTimeSelectorChangeListener != null && !isFromUser) {
            seatTimeSelectorChangeListener.onLevelChanged(this, indexToLevel(index));
        }
        final LayoutParams layoutParams = (LayoutParams) this.mBinding.indicator.getLayoutParams();
        int marginStart = layoutParams.getMarginStart();
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.seat_heat_time_selector_indicator_left) + (index * getResources().getDimensionPixelOffset(R.dimen.seat_heat_time_selector_item_width));
        if (this.mViewFroze.isFroze()) {
            layoutParams.setMarginStart(dimensionPixelOffset);
            this.mBinding.indicator.setLayoutParams(layoutParams);
            return;
        }
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mValueAnimator.end();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginStart, dimensionPixelOffset);
        this.mValueAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(300L);
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                lambda$select$0$SeatTimeSelector(layoutParams, valueAnimator2);
            }
        });
        this.mValueAnimator.start();
    }

    public void lambda$select$0$SeatTimeSelector(LayoutParams layoutParams, ValueAnimator valueAnimator) {
        layoutParams.setMarginStart(((Integer) valueAnimator.getAnimatedValue()).intValue());
        this.mBinding.indicator.setLayoutParams(layoutParams);
    }

    public void onItemClick(View v) {
        int id = v.getId();
        if (id != R.id.retain) {
            switch (id) {
                case R.id.level1 /* 2131296663 */:
                    select(0, false);
                    break;
                case R.id.level2 /* 2131296664 */:
                    select(1, false);
                    break;
                case R.id.level3 /* 2131296665 */:
                    select(2, false);
                    break;
            }
            return;
        }
        select(3, false);
    }
}
