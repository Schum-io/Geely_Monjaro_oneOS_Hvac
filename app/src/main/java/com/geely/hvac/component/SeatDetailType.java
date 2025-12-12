package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableInt;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutSetDetailTypeBinding;
import com.geely.hvac.utils.AdaptUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class SeatDetailType extends ConstraintLayout {
    private final String TAG;
    private LayoutSetDetailTypeBinding mBinding;
    private final ObservableInt mIndex;
    private final ObservableInt mIndicatorTop;
    private final View[] mItems;
    private final View[] mLines;
    private OnTabChangeListener mOnTabChangeListener;

    public interface OnTabChangeListener {
        void onChange(int index);
    }

    public static void bind(SeatDetailType v, int index, OnTabChangeListener listener) {
        v.select(index);
        v.mOnTabChangeListener = listener;
    }

    public SeatDetailType(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mIndex = new ObservableInt(0);
        this.mIndicatorTop = new ObservableInt(0);
        this.mItems = new View[4];
        this.mLines = new View[2];
        init(context, null);
    }

    public SeatDetailType(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mIndex = new ObservableInt(0);
        this.mIndicatorTop = new ObservableInt(0);
        this.mItems = new View[4];
        this.mLines = new View[2];
        init(context, attrs);
    }

    public SeatDetailType(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mIndex = new ObservableInt(0);
        this.mIndicatorTop = new ObservableInt(0);
        this.mItems = new View[4];
        this.mLines = new View[2];
        init(context, attrs);
    }

    public ObservableInt getIndicatorTop() {
        return this.mIndicatorTop;
    }

    public ObservableInt getIndex() {
        return this.mIndex;
    }

    private void init(Context context, AttributeSet attrs) {
        this.mBinding = LayoutSetDetailTypeBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding.setMainModel((AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class));
        this.mBinding.setModel(this);
        this.mItems[0] = this.mBinding.item0;
        this.mItems[1] = this.mBinding.item1;
        this.mItems[2] = this.mBinding.item2;
        this.mItems[3] = this.mBinding.item3;
        this.mLines[0] = this.mBinding.line0;
        this.mLines[1] = this.mBinding.line1;

        post(() -> select(this.mIndex.get(), true));

        this.mBinding.line0.post(() -> {
            this.mIndicatorTop.set(this.mBinding.indicator.getTop() + 1);
            this.mIndicatorTop.set(this.mBinding.indicator.getTop());
        });

        this.mIndicatorTop.set(getResources().getDimensionPixelSize(R.dimen.seat_set_detail_type_indicator_top));
    }


    public /* synthetic */ void lambda$init$1$SeatDetailType() {
        this.mIndicatorTop.set(this.mBinding.indicator.getTop() + 1);
        this.mIndicatorTop.set(this.mBinding.indicator.getTop());
    }

    public boolean isLineActive(int index, int indicatorTop) {
        try {
            int top = this.mLines[index].getTop();
            int height = this.mBinding.indicator.getHeight();
            int i = indicatorTop - 10;
            int i2 = indicatorTop + height + 10;
            LogUtil.d(this.TAG, "isLineActive, lineTop:" + top + ",indicatorHeight:" + height + ",minTop:" + i + ",maxTop:" + i2 + ",indicatorTop:" + indicatorTop);
            return top < i || top > i2;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isLegSupportAvailable(int seatDetailPosition, int left1LengthSupport, int left1HeightSupport, int right1LengthSupport, int right1HeightSupport, int left2LengthSupport, int left2HeightSupport, int right2LengthSupport, int right2HeightSupport) {
        if (seatDetailPosition == 0) {
            return AdaptUtil.isFunctionAvailable(left1LengthSupport) || AdaptUtil.isFunctionAvailable(left1HeightSupport);
        }
        if (seatDetailPosition == 1) {
            return AdaptUtil.isFunctionAvailable(right1LengthSupport) || AdaptUtil.isFunctionAvailable(right1HeightSupport);
        }
        if (seatDetailPosition == 2) {
            return AdaptUtil.isFunctionAvailable(left2LengthSupport) || AdaptUtil.isFunctionAvailable(left2HeightSupport);
        }
        if (seatDetailPosition != 3) {
            return false;
        }
        return AdaptUtil.isFunctionAvailable(right2LengthSupport) || AdaptUtil.isFunctionAvailable(right2HeightSupport);
    }

    public static boolean isLumbarAvailable(int seatDetailPosition, int left1LumbarLengthSupport, int left1LumbarHeightSupport, int right1LumbarLengthSupport, int right1LumbarHeightSupport, int left2LumbarLengthSupport, int left2LumbarHeightSupport, int right2LumbarLengthSupport, int right2LumbarHeightSupport) {
        if (seatDetailPosition == 0) {
            return AdaptUtil.isFunctionAvailable(left1LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(left1LumbarHeightSupport);
        }
        if (seatDetailPosition == 1) {
            return AdaptUtil.isFunctionAvailable(right1LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(right1LumbarHeightSupport);
        }
        if (seatDetailPosition == 2) {
            return AdaptUtil.isFunctionAvailable(left2LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(left2LumbarHeightSupport);
        }
        if (seatDetailPosition != 3) {
            return false;
        }
        return AdaptUtil.isFunctionAvailable(right2LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(right2LumbarHeightSupport);
    }

    public static boolean isCushionAvailable(int seatDetailPosition, int left1CushionExtensionSupport, int left1CushionTitlSupport, int right1CushionExtensionSupport, int right1CushionTitlSupport) {
        if (seatDetailPosition == 0) {
            return AdaptUtil.isFunctionAvailable(left1CushionExtensionSupport) || AdaptUtil.isFunctionAvailable(left1CushionTitlSupport);
        }
        if (seatDetailPosition != 1) {
            return false;
        }
        return AdaptUtil.isFunctionAvailable(right1CushionExtensionSupport) || AdaptUtil.isFunctionAvailable(right1CushionTitlSupport);
    }

    public static boolean isBackrestSideSupportAvailable(int seatDetailPosition, int left1Support, int right1Support) {
        if (seatDetailPosition == 0) {
            return AdaptUtil.isFunctionAvailable(left1Support);
        }
        if (seatDetailPosition != 1) {
            return false;
        }
        return AdaptUtil.isFunctionAvailable(right1Support);
    }

    private void select(int index) {
        select(index, false);
    }

    private void select(int index, boolean force) {
        if (index > 4 || index < 0) {
            return;
        }
        if (force || this.mIndex.get() != index) {
            this.mIndex.set(index);
            OnTabChangeListener onTabChangeListener = this.mOnTabChangeListener;
            if (onTabChangeListener != null) {
                onTabChangeListener.onChange(index);
            }
            int top = this.mItems[index].getTop() + getResources().getDimensionPixelSize(R.dimen.seat_set_detail_type_indicator_top);
            this.mIndicatorTop.set(top);
            LayoutParams layoutParams = (LayoutParams) this.mBinding.indicator.getLayoutParams();
            layoutParams.topMargin = top;
            this.mBinding.indicator.setLayoutParams(layoutParams);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.item0 /* 2131296613 */:
                select(0);
                break;
            case R.id.item1 /* 2131296615 */:
                select(1);
                break;
            case R.id.item2 /* 2131296617 */:
                select(2);
                break;
            case R.id.item3 /* 2131296619 */:
                select(3);
                break;
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
