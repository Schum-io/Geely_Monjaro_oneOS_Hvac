package com.geely.hvac.component;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutFragranceLevelBinding;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class FragranceLeveView extends ConstraintLayout {
    private static final String TAG = "FragranceLeveView";
    private LayoutFragranceLevelBinding mBinding;
    private boolean mEnable;
    private int[] mFragranceTypeIds;
    private boolean mIdsEnable;
    private OnLevelChangedListener mOnLevelChangedListener;
    private int mSelectIndex;
    private ValueAnimator mValueAnimator;

    public interface OnLevelChangedListener {
        void onLevelChanged(int level);
    }

    public static int indexToLevel(int index) {
        if (index == 1) {
            return GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_1;
        }
        if (index == 2) {
            return GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_2;
        }
        if (index != 3) {
            return 0;
        }
        return GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_3;
    }

    public static int levelToIndex(int level) {
        switch (level) {
            case GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_1 /* 269157121 */:
                return 1;
            case GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_2 /* 269157122 */:
                return 2;
            case GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_3 /* 269157123 */:
                return 3;
            default:
                return 0;
        }
    }

    public static void bind(FragranceLeveView view, boolean isOn) throws Resources.NotFoundException {
        LogUtil.i(TAG, "bindFragranceState, on:" + isOn);
        if (isOn) {
            return;
        }
        view.select(levelToIndex(0), true);
    }

    public static void bindEnable(FragranceLeveView view, boolean enable) throws Resources.NotFoundException {
        LogUtil.i(TAG, "bindFragranceLevelEnable, enable:" + enable);
        view.setEnabled(enable);
    }

    public static void bind(FragranceLeveView view, int[] fragranceTypeIds) throws Resources.NotFoundException {
        LogUtil.i(TAG, "bindFragranceTypeIds, ids:" + Arrays.toString(fragranceTypeIds));
        view.setFragranceTypeIds(fragranceTypeIds);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) throws Resources.NotFoundException {
        this.mEnable = enabled;
        updateEnableUi();
    }

    private void updateEnableUi() throws Resources.NotFoundException {
        LogUtil.i(TAG, "updateEnableUi, mEnable" + this.mEnable + ",mIdsEnable" + this.mIdsEnable);
        boolean z = this.mEnable && this.mIdsEnable;
        this.mBinding.close.setEnabled(z);
        this.mBinding.level1.setEnabled(z);
        this.mBinding.level2.setEnabled(z);
        this.mBinding.level3.setEnabled(z);
        if (!z) {
            select(0, false);
        }
        setTextColor(z);
    }

    private void setTextColor(boolean enable) throws Resources.NotFoundException {
        if (!enable) {
            LogUtil.i(TAG, "mIdsEnable=false说明返回香氛集合为 [0, 0, 0]=[未安装香氛, 未安装香氛, 未安装香氛] ，关闭按钮需要置灰,其他状态按钮文字颜色变化");
            this.mBinding.indicator.setNormalColor(getResources().getColor(R.color.fragrance_level_indicator_bg_disable));
            int color = getResources().getColor(R.color.main_tab_item_txt_color_unactive_gray);
            this.mBinding.close.setTextColor(color);
            this.mBinding.level1.setTextColor(color);
            this.mBinding.level2.setTextColor(color);
            this.mBinding.level3.setTextColor(color);
            return;
        }
        if (this.mSelectIndex == 0) {
            int color2 = getResources().getColor(R.color.main_tab_item_txt_color_unactive);
            int color3 = getResources().getColor(R.color.fragrance_active_txt_color);
            this.mBinding.indicator.setNormalColor(getResources().getColor(R.color.fragrance_level_indicator_bg));
            this.mBinding.close.setTextColor(color3);
            this.mBinding.level1.setTextColor(color2);
            this.mBinding.level2.setTextColor(color2);
            this.mBinding.level3.setTextColor(color2);
        }
    }

    public void setFragranceTypeIds(int[] fragranceTypeIds) throws Resources.NotFoundException {
        this.mFragranceTypeIds = fragranceTypeIds;
        boolean z = false;
        if (fragranceTypeIds != null && fragranceTypeIds.length != 0) {
            int length = fragranceTypeIds.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (fragranceTypeIds[i] != 0) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.mIdsEnable = z;
        updateEnableUi();
    }

    public static void bind(FragranceLeveView view, int level) throws Resources.NotFoundException {
        LogUtil.i(TAG, "bindFragranceLevel, level:" + level);
        view.select(levelToIndex(level), true);
    }

    public static void bind(FragranceLeveView view, OnLevelChangedListener listener) {
        view.mOnLevelChangedListener = listener;
    }

    public FragranceLeveView(Context context) {
        super(context);
        this.mIdsEnable = true;
        this.mEnable = true;
        init(context, null);
    }

    public FragranceLeveView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mIdsEnable = true;
        this.mEnable = true;
        init(context, attrs);
    }

    public FragranceLeveView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIdsEnable = true;
        this.mEnable = true;
        init(context, attrs);
    }

    private void select(int index, boolean isFromUser) throws Resources.NotFoundException {
        if (this.mSelectIndex == index) {
            LogUtil.i(TAG, "select, return");
            return;
        }
        if (index == 0 || index == 1 || index == 2 || index == 3) {
            this.mSelectIndex = index;
            int color = getResources().getColor(R.color.main_tab_item_txt_color_unactive);
            int color2 = getResources().getColor(R.color.fragrance_active_txt_color);
            this.mBinding.indicator.setNormalColor(getResources().getColor(R.color.fragrance_level_indicator_bg));
            if (index == 0) {
                this.mBinding.close.setTextColor(color2);
                this.mBinding.level1.setTextColor(color);
                this.mBinding.level2.setTextColor(color);
                this.mBinding.level3.setTextColor(color);
            } else if (index == 1) {
                this.mBinding.close.setTextColor(color);
                this.mBinding.level1.setTextColor(color2);
                this.mBinding.level2.setTextColor(color);
                this.mBinding.level3.setTextColor(color);
            } else if (index == 2) {
                this.mBinding.close.setTextColor(color);
                this.mBinding.level1.setTextColor(color);
                this.mBinding.level2.setTextColor(color2);
                this.mBinding.level3.setTextColor(color);
            } else if (index == 3) {
                this.mBinding.close.setTextColor(color);
                this.mBinding.level1.setTextColor(color);
                this.mBinding.level2.setTextColor(color);
                this.mBinding.level3.setTextColor(color2);
            }
            OnLevelChangedListener onLevelChangedListener = this.mOnLevelChangedListener;
            if (onLevelChangedListener != null && !isFromUser) {
                onLevelChangedListener.onLevelChanged(indexToLevel(index));
            }
            final LayoutParams layoutParams = (LayoutParams) this.mBinding.indicator.getLayoutParams();
            int marginStart = layoutParams.getMarginStart();
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.fragrance_level_indicator_init_margin) + (index * getResources().getDimensionPixelOffset(R.dimen.fragrance_level_item_width));
            LogUtil.d(TAG, "start: " + marginStart + " end：" + dimensionPixelOffset);
            ValueAnimator valueAnimator = this.mValueAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.mValueAnimator.end();
            }
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginStart, dimensionPixelOffset);
            this.mValueAnimator = valueAnimatorOfInt;
            valueAnimatorOfInt.setDuration(300L);
            this.mValueAnimator.addUpdateListener(valueAnimator2 -> lambda$select$0$FragranceLeveView(layoutParams, valueAnimator2));
            this.mValueAnimator.start();
        }
    }

    public /* synthetic */ void lambda$select$0$FragranceLeveView(LayoutParams layoutParams, ValueAnimator valueAnimator) {
        layoutParams.setMarginStart(((Integer) valueAnimator.getAnimatedValue()).intValue());
        this.mBinding.indicator.setLayoutParams(layoutParams);
    }

    private void init(Context context, AttributeSet attrs) {
        LayoutFragranceLevelBinding layoutFragranceLevelBindingInflate = LayoutFragranceLevelBinding.inflate(LayoutInflater.from(context), this);
        this.mBinding = layoutFragranceLevelBindingInflate;
        layoutFragranceLevelBindingInflate.close.setOnClickListener(this::lambda$init$1$FragranceLeveView);
        this.mBinding.level1.setOnClickListener(this::lambda$init$2$FragranceLeveView);
        this.mBinding.level2.setOnClickListener(this::lambda$init$3$FragranceLeveView);
        this.mBinding.level3.setOnClickListener(this::lambda$init$4$FragranceLeveView);
        LayoutParams layoutParams = (LayoutParams) this.mBinding.indicator.getLayoutParams();
        layoutParams.setMarginStart(getResources().getDimensionPixelOffset(R.dimen.fragrance_level_indicator_init_margin) + (this.mSelectIndex * getResources().getDimensionPixelOffset(R.dimen.fragrance_level_item_width)));
        this.mBinding.indicator.setLayoutParams(layoutParams);
    }

    public /* synthetic */ void lambda$init$1$FragranceLeveView(View view) {
        select(0, false);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$init$2$FragranceLeveView(View view) {
        select(1, false);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$init$3$FragranceLeveView(View view) {
        select(2, false);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$init$4$FragranceLeveView(View view) {
        select(3, false);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
