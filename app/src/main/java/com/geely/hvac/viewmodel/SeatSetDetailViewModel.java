package com.geely.hvac.viewmodel;

import androidx.databinding.Observable;
import androidx.databinding.ObservableInt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.component.SeatDetailType;
import com.geely.hvac.utils.AdaptUtil;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class SeatSetDetailViewModel extends ViewModel {
    private AppMainViewModel mMainViewModel;
    private final String TAG = getClass().getSimpleName();
    private final ObservableInt mLeft1TypeIndex = new ObservableInt(0);
    private final ObservableInt mLeft2TypeIndex = new ObservableInt(0);
    private final ObservableInt mRight1TypeIndex = new ObservableInt(0);
    private final ObservableInt mRight2TypeIndex = new ObservableInt(0);
    // Replace the old block with this correct version
    private final SeatDetailType.OnTabChangeListener mOnTabChangeListener = i -> {
        int i2 = this.mMainViewModel.getSeatDetailPositionIndex().get();
        if (i2 == 0) {
            this.mLeft1TypeIndex.set(i);
        } else if (i2 == 1) {
            this.mLeft2TypeIndex.set(i);
        } else if (i2 == 2) {
            this.mRight1TypeIndex.set(i);
        } else if (i2 == 3) {
            this.mRight2TypeIndex.set(i);
        }
    };

    public boolean getSeatTypeVisibility(int seatIndex, int left1Index, int left2Index, int right1Index, int right2Index, int targetIndex) {
        return seatIndex != 0 ? seatIndex != 1 ? seatIndex != 2 ? seatIndex == 3 && right2Index == targetIndex : right1Index == targetIndex : left2Index == targetIndex : left1Index == targetIndex;
    }

    public int getTagByIndex(int index) {
        if (index == 0) {
            return 1;
        }
        if (index == 1) {
            return 4;
        }
        if (index != 2) {
            return index != 3 ? -1 : 64;
        }
        return 16;
    }

    public int getTypeSelectType(int seatIndex, int left1Index, int left2Index, int right1Index, int right2Index) {
        if (seatIndex == 0) {
            return left1Index;
        }
        if (seatIndex == 1) {
            return left2Index;
        }
        if (seatIndex == 2) {
            return right1Index;
        }
        if (seatIndex != 3) {
            return 0;
        }
        return right2Index;
    }

    public /* synthetic */ void lambda$new$0$SeatSetDetailViewModel(int i) {
        int i2 = this.mMainViewModel.getSeatDetailPositionIndex().get();
        if (i2 == 0) {
            this.mLeft1TypeIndex.set(i);
            return;
        }
        if (i2 == 1) {
            this.mLeft2TypeIndex.set(i);
        } else if (i2 == 2) {
            this.mRight1TypeIndex.set(i);
        } else {
            if (i2 != 3) {
                return;
            }
            this.mRight2TypeIndex.set(i);
        }
    }

    public SeatSetDetailViewModel() {
        AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        this.mMainViewModel = appMainViewModel;
        appMainViewModel.getRow1LeftSeatLumbarSupport().addOnPropertyChangedCallback(new Observable.OnPropertyChangedCallback() { // from class: com.geely.hvac.viewmodel.SeatSetDetailViewModel.1
            @Override // androidx.databinding.Observable.OnPropertyChangedCallback
            public void onPropertyChanged(Observable sender, int propertyId) {
                LogUtil.i(SeatSetDetailViewModel.this.TAG, "腰托support变化");
                if (SeatSetDetailViewModel.this.mMainViewModel.getRow1LeftSeatLumbarSupport().get()) {
                    return;
                }
                SeatSetDetailViewModel.this.mLeft1TypeIndex.set(0);
            }
        });
        this.mMainViewModel.getRow2RightSeatLegSupport().addOnPropertyChangedCallback(new Observable.OnPropertyChangedCallback() { // from class: com.geely.hvac.viewmodel.SeatSetDetailViewModel.2
            @Override // androidx.databinding.Observable.OnPropertyChangedCallback
            public void onPropertyChanged(Observable sender, int propertyId) {
                LogUtil.i(SeatSetDetailViewModel.this.TAG, "腿托support变化");
                if (SeatSetDetailViewModel.this.mMainViewModel.getRow2RightSeatLegSupport().get()) {
                    return;
                }
                SeatSetDetailViewModel.this.mLeft2TypeIndex.set(0);
            }
        });
    }

    public SeatDetailType.OnTabChangeListener getOnTabChangeListener() {
        return this.mOnTabChangeListener;
    }

    public String formatSeatSetLabel(int index) {
        LogUtil.i(this.TAG, "formatSeatSetLabel, index:" + index);
        int i = R.string.main_seat;
        if (index != 0) {
            if (index == 1) {
                i = R.string.right1_seat;
            } else if (index == 2) {
                i = R.string.left2_seat;
            } else if (index == 3) {
                i = R.string.right2_seat;
            }
        }
        return GlyAcApp.getInstance().getString(i);
    }

    public boolean isTypeAvailable(int seatDetailPosition, int left1LengthSupport, int left1HeightSupport, int right1LengthSupport, int right1HeightSupport, int left2LengthSupport, int left2HeightSupport, int right2LengthSupport, int right2HeightSupport, int left1LumbarLengthSupport, int left1LumbarHeightSupport, int right1LumbarLengthSupport, int right1LumbarHeightSupport, int left2LumbarLengthSupport, int left2LumbarHeightSupport, int right2LumbarLengthSupport, int right2LumbarHeightSupport, int left1CushionExtensionSupport, int left1CushionTitlSupport, int right1CushionExtensionSupport, int right1CushionTitlSupport, int left1Support, int right1Support) {
        if (seatDetailPosition == 0) {
            return AdaptUtil.isFunctionAvailable(left1LengthSupport) || AdaptUtil.isFunctionAvailable(left1HeightSupport) || AdaptUtil.isFunctionAvailable(left1LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(left1LumbarHeightSupport) || AdaptUtil.isFunctionAvailable(left1CushionExtensionSupport) || AdaptUtil.isFunctionAvailable(left1CushionTitlSupport) || AdaptUtil.isFunctionAvailable(left1Support);
        }
        if (seatDetailPosition == 1) {
            return AdaptUtil.isFunctionAvailable(right1LengthSupport) || AdaptUtil.isFunctionAvailable(right1HeightSupport) || AdaptUtil.isFunctionAvailable(right1LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(right1LumbarHeightSupport) || AdaptUtil.isFunctionAvailable(right1CushionExtensionSupport) || AdaptUtil.isFunctionAvailable(right1CushionTitlSupport) || AdaptUtil.isFunctionAvailable(right1Support);
        }
        if (seatDetailPosition == 2) {
            return AdaptUtil.isFunctionAvailable(left2LengthSupport) || AdaptUtil.isFunctionAvailable(left2HeightSupport) || AdaptUtil.isFunctionAvailable(left2LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(left2LumbarHeightSupport);
        }
        if (seatDetailPosition != 3) {
            return false;
        }
        return AdaptUtil.isFunctionAvailable(right2LengthSupport) || AdaptUtil.isFunctionAvailable(right2HeightSupport) || AdaptUtil.isFunctionAvailable(right2LumbarLengthSupport) || AdaptUtil.isFunctionAvailable(right2LumbarHeightSupport);
    }

    public ObservableInt getLeft1TypeIndex() {
        return this.mLeft1TypeIndex;
    }

    public ObservableInt getLeft2TypeIndex() {
        return this.mLeft2TypeIndex;
    }

    public ObservableInt getRight1TypeIndex() {
        return this.mRight1TypeIndex;
    }

    public ObservableInt getRight2TypeIndex() {
        return this.mRight2TypeIndex;
    }
}
