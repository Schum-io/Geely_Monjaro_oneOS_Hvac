package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableInt;
import com.geely.hvac.databinding.LayoutFragranceTypeBinding;
import com.geely.hvac.util.ClickUtils;
import com.geely.hvac.utils.FragranceParser;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class FragranceType extends ConstraintLayout {
    private static final String TAG = "FragranceType";
    private static Boolean mFragranceState;
    private LayoutFragranceTypeBinding mBinding;
    private int[] mFragranceImages;
    private int[] mFragranceTypeIds;
    private String[] mFragranceTypes;
    private int mIndex;
    private ObservableBoolean mLevelEnable;
    private OnFragranceTypeChangeListener mOnFragranceTypeChangeListener;
    private ObservableInt mSlotIndex;
    private ObservableBoolean mSlotIndexEnable;

    public interface OnFragranceTypeChangeListener {
        void onTypeChange(int type);
    }

    public static void bindFragranceState(FragranceType view, boolean state) {
        LogUtil.i(TAG, "bindFragranceState, state:" + state);
        mFragranceState = Boolean.valueOf(state);
        view.setFragranceState(state);
    }

    public static void bind(FragranceType view, int type, OnFragranceTypeChangeListener listener) {
        LogUtil.i(TAG, "bindFragranceSlotIndex, type:" + type);
        view.setIndex(FragranceParser.slotIndexToIndex(type));
        view.mOnFragranceTypeChangeListener = listener;
    }

    public static void bind(FragranceType view, boolean enable) {
        LogUtil.i(TAG, "bindFragranceTypeEnable, enable:" + enable);
        view.setEnabled(enable);
    }

    public static void bindFragranceLevelEnable(FragranceType view, boolean enable) {
        LogUtil.i(TAG, "bindFragranceLevelEnable, enable:" + enable);
        view.setFragranceLevelEnable(enable);
    }

    public static void bind(FragranceType view, int[] fragranceTypeIds, String[] fragranceTypes, int[] fragranceImages) {
        LogUtil.i(TAG, "bindFragranceTypeIds, ids:" + Arrays.toString(fragranceTypeIds) + ", types:" + Arrays.toString(fragranceTypes));
        view.setFragranceTypes(fragranceTypes);
        view.setFragranceTypeIds(fragranceTypeIds);
        view.setFragranceImages(fragranceImages);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        this.mSlotIndexEnable.set(enabled);
        updateItemEnable();
    }

    public void setFragranceLevelEnable(boolean enable) {
        this.mLevelEnable.set(enable);
        updateItemEnable();
    }

    private void updateItemEnable() {
        int i = this.mSlotIndex.get();
        boolean z = this.mLevelEnable.get();
        boolean z2 = this.mSlotIndexEnable.get();
        this.mBinding.type1.setEnabled(i == 0 ? z && z2 : z2);
        this.mBinding.type2.setEnabled(i == 1 ? z && z2 : z2);
        FragranceTypeItem fragranceTypeItem = this.mBinding.type3;
        if (i == 2) {
            z2 = z && z2;
        }
        fragranceTypeItem.setEnabled(z2);
    }

    public void setFragranceTypeIds(int[] fragranceTypeIds) {
        this.mFragranceTypeIds = fragranceTypeIds;
        if (fragranceTypeIds == null || fragranceTypeIds.length == 0) {
            return;
        }
        for (int i = 0; i < fragranceTypeIds.length; i++) {
            if (i == 0) {
                this.mBinding.type1.setTypeId(fragranceTypeIds[0]);
            } else if (i == 1) {
                this.mBinding.type2.setTypeId(fragranceTypeIds[1]);
            } else if (i == 2) {
                this.mBinding.type3.setTypeId(fragranceTypeIds[2]);
            }
        }
    }

    public void setFragranceTypes(String[] fragranceTypes) {
        this.mFragranceTypes = fragranceTypes;
        if (fragranceTypes == null || fragranceTypes.length == 0) {
            return;
        }
        for (int i = 0; i < fragranceTypes.length; i++) {
            if (i == 0) {
                this.mBinding.type1.setTypeName(this.mFragranceTypes[0]);
            } else if (i == 1) {
                this.mBinding.type2.setTypeName(this.mFragranceTypes[1]);
            } else if (i == 2) {
                this.mBinding.type3.setTypeName(this.mFragranceTypes[2]);
            }
        }
    }

    public void setFragranceImages(int[] fragranceImages) {
        this.mFragranceImages = fragranceImages;
        if (fragranceImages == null || fragranceImages.length == 0) {
            return;
        }
        for (int i = 0; i < fragranceImages.length; i++) {
            if (i == 0) {
                this.mBinding.type1.setTypeImage(this.mFragranceImages[0]);
            } else if (i == 1) {
                this.mBinding.type2.setTypeImage(this.mFragranceImages[1]);
            } else if (i == 2) {
                this.mBinding.type3.setTypeImage(this.mFragranceImages[2]);
            }
        }
    }

    public FragranceType(Context context) {
        super(context);
        this.mIndex = 0;
        this.mSlotIndexEnable = new ObservableBoolean(true);
        this.mLevelEnable = new ObservableBoolean(true);
        this.mSlotIndex = new ObservableInt(0);
        init(context, null);
    }

    public FragranceType(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mIndex = 0;
        this.mSlotIndexEnable = new ObservableBoolean(true);
        this.mLevelEnable = new ObservableBoolean(true);
        this.mSlotIndex = new ObservableInt(0);
        init(context, attrs);
    }

    public FragranceType(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIndex = 0;
        this.mSlotIndexEnable = new ObservableBoolean(true);
        this.mLevelEnable = new ObservableBoolean(true);
        this.mSlotIndex = new ObservableInt(0);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        this.mBinding = LayoutFragranceTypeBinding.inflate(LayoutInflater.from(context), this, true);
        setIndex(this.mIndex, false);
        this.mBinding.type1.setOnClickListener(this::lambda$init$0$FragranceType);
        this.mBinding.type2.setOnClickListener(this::lambda$init$1$FragranceType);
        this.mBinding.type3.setOnClickListener(this::lambda$init$2$FragranceType);
    }

    public /* synthetic */ void lambda$init$0$FragranceType(View view) {
        typeClick(0);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$init$1$FragranceType(View view) {
        typeClick(1);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$init$2$FragranceType(View view) {
        typeClick(2);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void setIndex(int index) {
        setIndex(index, true);
    }

    private void typeClick(int index) {
        if (ClickUtils.isFastClick()) {
            LogUtil.i(TAG, "typeClick fast click, index:" + index);
        } else {
            LogUtil.i(TAG, "typeClick, index:" + index);
            setIndex(index);
        }
    }

    private void setIndex(int index, boolean checkRepeat) {
        LogUtil.i(TAG, "index:" + index + " , checkRepeat:" + checkRepeat + " , mFragranceState:" + mFragranceState);
        this.mSlotIndex.set(index);
        updateItemEnable();
        if (checkRepeat && this.mIndex == index && mFragranceState.booleanValue()) {
            return;
        }
        OnFragranceTypeChangeListener onFragranceTypeChangeListener = this.mOnFragranceTypeChangeListener;
        if (onFragranceTypeChangeListener != null && index != 255) {
            onFragranceTypeChangeListener.onTypeChange(FragranceParser.indexToSlotIndex(index));
        }
        this.mIndex = index;
        if (index == 0) {
            this.mBinding.type1.setActive(true);
            this.mBinding.type2.setActive(false);
            this.mBinding.type3.setActive(false);
            return;
        }
        if (index == 1) {
            this.mBinding.type1.setActive(false);
            this.mBinding.type2.setActive(true);
            this.mBinding.type3.setActive(false);
        } else if (index == 2) {
            this.mBinding.type1.setActive(false);
            this.mBinding.type2.setActive(false);
            this.mBinding.type3.setActive(true);
        } else {
            if (index != 255) {
                return;
            }
            this.mBinding.type1.setActive(false);
            this.mBinding.type2.setActive(false);
            this.mBinding.type3.setActive(false);
        }
    }

    private void setFragranceState(boolean state) {
        this.mBinding.type1.setFragranceState(state);
        this.mBinding.type2.setFragranceState(state);
        this.mBinding.type3.setFragranceState(state);
    }
}
