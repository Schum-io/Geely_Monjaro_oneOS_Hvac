package com.geely.hvac.component;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableInt;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.component.intf.SeatTabChangeListener;
import com.geely.hvac.databinding.LayoutSeatTabBinding;
import com.geely.hvac.utils.CommonUtils;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;

/* loaded from: classes.dex */
public class SeatTab extends ConstraintLayout {
    private static final String TAG = "SeatTab";
    private boolean ACTIVITY_VISIBLE_FOR_THE_TIME;
    private LayoutSeatTabBinding mBinding;
    private final View[] mItems;
    private final View[] mLines;
    private SeatTabChangeListener mOnTabChangeListener;
    private ObservableInt mSelectTop;
    private final ObservableInt mTabIndex;
    private AppMainViewModel model;

    public SeatTab(Context context) {
        super(context);
        this.mTabIndex = new ObservableInt(0);
        this.mItems = new View[5];
        this.mLines = new View[5];
        this.mSelectTop = new ObservableInt(0);
        this.ACTIVITY_VISIBLE_FOR_THE_TIME = true;
        init(context, null);
    }

    public static void bind(SeatTab seatTab, int tabIndex) {
        LogUtil.d(TAG, "bindSeatTabIndex: tabIndex:" + tabIndex);
        seatTab.setTabIndex(tabIndex);
    }

    public static void bind(SeatTab seatTab, SeatTabChangeListener listener) {
        seatTab.mOnTabChangeListener = listener;
    }

    public SeatTab(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTabIndex = new ObservableInt(0);
        this.mItems = new View[5];
        this.mLines = new View[5];
        this.mSelectTop = new ObservableInt(0);
        this.ACTIVITY_VISIBLE_FOR_THE_TIME = true;
        init(context, attrs);
    }

    public SeatTab(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTabIndex = new ObservableInt(0);
        this.mItems = new View[5];
        this.mLines = new View[5];
        this.mSelectTop = new ObservableInt(0);
        this.ACTIVITY_VISIBLE_FOR_THE_TIME = true;
        init(context, attrs);
    }

    public ObservableInt getTabIndex() {
        return this.mTabIndex;
    }

    public void setTabIndex(int tabIndex) {
        String str = TAG;
        LogUtil.d(str, "SeatTabSeatTabSeatTab  tabIndex:" + tabIndex + "  ACTIVITY_VISIBLE_FOR_THE_TIME ：" + this.ACTIVITY_VISIBLE_FOR_THE_TIME);
        if (CommonUtils.isKX11_A2() && this.ACTIVITY_VISIBLE_FOR_THE_TIME) {
            boolean z = false;
            this.ACTIVITY_VISIBLE_FOR_THE_TIME = false;
            StringBuilder sbAppend = new StringBuilder().append("isSeatTabItem0 :").append(tabIndex == 0 && !this.model.isSeatTabItem0()).append("  isSeatTabItem1   : ");
            if (tabIndex == 1 && !this.model.isSeatTabItem1()) {
                z = true;
            }
            LogUtil.d(str, sbAppend.append(z).toString());
            if ((tabIndex == 0 && !this.model.isSeatTabItem0()) || ((tabIndex == 1 && !this.model.isSeatTabItem1()) || (tabIndex == 2 && !this.model.isSeatTabItem2()))) {
                tabIndex = 4;
                SeatTabChangeListener seatTabChangeListener = this.mOnTabChangeListener;
                if (seatTabChangeListener != null) {
                    seatTabChangeListener.onTabChange(4);
                }
            }
        } else if (this.mTabIndex.get() == tabIndex) {
            return;
        }
        this.mTabIndex.set(tabIndex);
        try {
            this.mSelectTop.set(this.mItems[tabIndex].getTop());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void init(Context context, AttributeSet attrs) {
        this.mBinding = LayoutSeatTabBinding.inflate(LayoutInflater.from(context), this, true);
        AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        this.model = appMainViewModel;
        this.mBinding.setModel(appMainViewModel);
        this.mBinding.setTab(this);
        this.mItems[0] = this.mBinding.item0;
        this.mItems[1] = this.mBinding.item1;
        this.mItems[2] = this.mBinding.item2;
        this.mItems[3] = this.mBinding.item3;
        this.mItems[4] = this.mBinding.item4;
        this.mLines[0] = this.mBinding.line0;
        this.mLines[1] = this.mBinding.line1;
        this.mLines[2] = this.mBinding.line2;
        this.mLines[3] = this.mBinding.line3;
        this.mBinding.item0.post(this::lambda$init$0$SeatTab);
    }

    public /* synthetic */ void lambda$init$0$SeatTab() {
        try {
            View view = this.mItems[this.mTabIndex.get()];
            this.mSelectTop.set(view.getTop() + 1);
            this.mSelectTop.set(view.getTop());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ObservableInt getSelectTop() {
        return this.mSelectTop;
    }

    public boolean isLineVisible(int lineIndex, int selectTop) throws Resources.NotFoundException {
        try {
            View view = this.mLines[lineIndex];
            int top = view.getTop();
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.seat_tab_item_height);
            int i = selectTop - 10;
            int i2 = selectTop + dimensionPixelSize + 10;
            String str = TAG;
            LogUtil.d(str, "isLineVisible: lineIndex:" + lineIndex + ",selectTop:" + selectTop + ",lineTop:" + top + ",minTop:" + i + ",maxTop:" + i2 + ",height:" + this.mBinding.llContainer.getHeight());
            if (this.mBinding.llContainer.getHeight() - view.getBottom() >= dimensionPixelSize) {
                return top < i || top > i2;
            }
            LogUtil.d(str, "the line is the last view:  " + lineIndex);
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void itemClick(View view) {
        int i = this.mTabIndex.get();
        switch (view.getId()) {
            case R.id.item0 /* 2131296613 */:
                i = 0;
                break;
            case R.id.item1 /* 2131296615 */:
                i = 1;
                break;
            case R.id.item2 /* 2131296617 */:
                i = 2;
                break;
            case R.id.item3 /* 2131296619 */:
                i = 3;
                break;
            case R.id.item4 /* 2131296621 */:
                i = 4;
                break;
        }
        if (i == this.mTabIndex.get()) {
            return;
        }
        try {
            this.mSelectTop.set(this.mItems[i].getTop());
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mTabIndex.set(i);
        SeatTabChangeListener seatTabChangeListener = this.mOnTabChangeListener;
        if (seatTabChangeListener != null) {
            seatTabChangeListener.onTabChange(i);
        }
    }
}
