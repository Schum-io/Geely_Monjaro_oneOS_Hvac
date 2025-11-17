package com.geely.hvac.component;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableInt;
import androidx.viewpager2.widget.ViewPager2;
import com.geely.hvac.R;
import com.geely.hvac.data.DataEvent;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.databinding.LayoutMainTabBinding;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class MainTab extends ConstraintLayout {
    private final long ANIMATE_TIME;
    private final String TAG;
    private LayoutMainTabBinding mBinding;
    private final ObservableBoolean mFragranceAvailable;
    private int mIndicatorStartX;
    private int mIndicatorWidth;
    private int mItemWidth;
    private final ObservableBoolean mMainTabSeatAvailable;
    private final ObservableInt mTabIndex;
    private ViewPager2 mViewPager2;

    public static void bindFragranceAvailable(MainTab v, boolean available) {
        v.setFragranceAvailable(available);
    }

    public static void bindMainTabSeatAvailable(MainTab v, boolean available) {
        v.setMainTabSeatAvailable(available);
    }

    public void setFragranceAvailable(boolean available) {
        if (!available && this.mTabIndex.get() == 2) {
            setTabIndex(0);
        }
        this.mFragranceAvailable.set(available);
    }

    private void setMainTabSeatAvailable(boolean available) {
        if (!available && this.mTabIndex.get() == 1) {
            setTabIndex(0);
        }
        this.mMainTabSeatAvailable.set(available);
        if (this.mTabIndex.get() != 2 || available) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) this.mBinding.indicator.getLayoutParams();
        layoutParams.setMarginStart((this.mItemWidth * (this.mTabIndex.get() - 1)) + this.mIndicatorStartX);
        this.mBinding.indicator.setLayoutParams(layoutParams);
    }

    public MainTab(Context context) throws Resources.NotFoundException {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.ANIMATE_TIME = 300L;
        this.mTabIndex = new ObservableInt(0);
        this.mFragranceAvailable = new ObservableBoolean(true);
        this.mMainTabSeatAvailable = new ObservableBoolean(true);
        this.mItemWidth = 0;
        this.mIndicatorWidth = 0;
        this.mIndicatorStartX = 0;
        init(context, null);
    }

    public MainTab(Context context, AttributeSet attrs) throws Resources.NotFoundException {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.ANIMATE_TIME = 300L;
        this.mTabIndex = new ObservableInt(0);
        this.mFragranceAvailable = new ObservableBoolean(true);
        this.mMainTabSeatAvailable = new ObservableBoolean(true);
        this.mItemWidth = 0;
        this.mIndicatorWidth = 0;
        this.mIndicatorStartX = 0;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) throws Resources.NotFoundException {
        LayoutMainTabBinding layoutMainTabBindingInflate = LayoutMainTabBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutMainTabBindingInflate;
        layoutMainTabBindingInflate.setTab(this);
        this.mItemWidth = getResources().getDimensionPixelSize(R.dimen.main_tab_item_width);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.main_tab_item_indicator_width);
        this.mIndicatorWidth = dimensionPixelSize;
        this.mIndicatorStartX = (this.mItemWidth - dimensionPixelSize) / 2;
        ((LayoutParams) this.mBinding.indicator.getLayoutParams()).setMarginStart((this.mItemWidth * this.mTabIndex.get()) + this.mIndicatorStartX);
    }

    public MainTab(Context context, AttributeSet attrs, int defStyleAttr) throws Resources.NotFoundException {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.ANIMATE_TIME = 300L;
        this.mTabIndex = new ObservableInt(0);
        this.mFragranceAvailable = new ObservableBoolean(true);
        this.mMainTabSeatAvailable = new ObservableBoolean(true);
        this.mItemWidth = 0;
        this.mIndicatorWidth = 0;
        this.mIndicatorStartX = 0;
        init(context, attrs);
    }

    public ObservableBoolean getFragranceAvailable() {
        return this.mFragranceAvailable;
    }

    public ObservableBoolean getMainTabSeatAvailable() {
        return this.mMainTabSeatAvailable;
    }

    public ObservableInt getTabIndex() {
        return this.mTabIndex;
    }

    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.ac) {
            select(0);
        } else if (id == R.id.fragrance) {
            select(2);
        } else if (id == R.id.seat) {
            select(1);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(v);
    }

    public void setTabIndex(int index) {
        select(index);
        LogUtil.i(this.TAG, "setTabIndex:" + isAttachedToWindow());
    }

    private void reportData(int index) {
        if (index == 0) {
            GlySensorsData.track(DataEvent.AC_FRONTAC_CLICK_EV);
        } else if (index == 1) {
            GlySensorsData.track(DataEvent.AC_SEAT_CLICK_EV);
        } else {
            if (index != 2) {
                return;
            }
            GlySensorsData.track(DataEvent.AC_PERFUME_CLICK_EV);
        }
    }

    private void select(int index) {
        int i;
        int i2;
        if (index > 2 || index < 0) {
            return;
        }
        this.mTabIndex.set(index);
        reportData(index);
        this.mViewPager2.setCurrentItem(index, false);
        LayoutParams layoutParams = (LayoutParams) this.mBinding.indicator.getLayoutParams();
        if (index == 2 && !this.mMainTabSeatAvailable.get()) {
            i = this.mIndicatorStartX;
            i2 = this.mItemWidth;
            index--;
        } else {
            i = this.mIndicatorStartX;
            i2 = this.mItemWidth;
        }
        int i3 = i + (i2 * index);
        LogUtil.d(this.TAG, "select:" + i3);
        layoutParams.setMarginStart(i3);
        this.mBinding.indicator.setLayoutParams(layoutParams);
    }

    public void setUpWithViewPager(ViewPager2 viewPager) {
        this.mViewPager2 = viewPager;
        viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.geely.hvac.component.MainTab.1
            private int mCurrentScrollState = 0;
            private int mPreScrollState = 0;

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                if (this.mPreScrollState == 0 && this.mCurrentScrollState == 2) {
                    return;
                }
                LayoutParams layoutParams = (LayoutParams) MainTab.this.mBinding.indicator.getLayoutParams();
                layoutParams.setMarginStart((int) ((MainTab.this.mItemWidth * (position + positionOffset)) + MainTab.this.mIndicatorStartX));
                MainTab.this.mBinding.indicator.setLayoutParams(layoutParams);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                LogUtil.d(MainTab.this.TAG, "onPageSelected, position:" + position);
                MainTab.this.mTabIndex.set(position);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int state) {
                this.mPreScrollState = this.mCurrentScrollState;
                this.mCurrentScrollState = state;
                LogUtil.d(MainTab.this.TAG, "onPageScrollStateChanged, state:" + state);
            }
        });
    }
}
