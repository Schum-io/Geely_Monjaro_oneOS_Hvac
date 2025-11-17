package com.geely.hvac.component;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.geely.hvac.R;
import com.geely.hvac.component.intf.MassageTypeChangeListener;
import com.geely.hvac.utils.CommonUtils;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class MassageType extends FlowLayout {
    private static final String TAG = "MassageType";
    private int mActiveIndex;
    private final OnClickListener mItemClickListener;
    private MassageTypeChangeListener mListener;
    private int mType;
    private int[] mTypes;

    public void onItemClick(View view) {
        try {
            int iIntValue = ((Integer) view.getTag()).intValue();
            setActiveIndex(iIntValue);
            MassageTypeChangeListener massageTypeChangeListener = this.mListener;
            if (massageTypeChangeListener != null) {
                massageTypeChangeListener.onTypeChange(this, this.mTypes[iIntValue]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public static void bind(MassageType v, int[] types) throws Resources.NotFoundException {
        if (types != null) {
            LogUtil.i(TAG, "bindMassageTypes v:" + v + ", types:" + Arrays.toString(types));
            v.setTypes(types);
            v.setMassageType(v.mType);
            return;
        }
        LogUtil.i(TAG, "bindMassageTypes v:" + v + ", types null");
    }

    public static void bind(MassageType v, MassageTypeChangeListener listener) {
        v.mListener = listener;
    }

    public static void bind(MassageType v, int type) {
        LogUtil.i(TAG, "bindMassageType v:" + v + ",type:" + type);
        v.setMassageType(type);
    }

    private void setMassageType(int type) {
        this.mType = type;
        int i = 0;
        while (true) {
            int[] iArr = this.mTypes;
            if (i >= iArr.length) {
                i = -1;
                break;
            } else if (iArr[i] == type) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        setActiveIndex(i);
    }

    public MassageType(Context context) {
        super(context);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public MassageType(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public MassageType(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public void setActiveIndex(int index) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            ((MassageTypeItem) getChildAt(i)).setActive(index == i);
            i++;
        }
    }

    public void setTypes(int[] types) throws Resources.NotFoundException {
        this.mTypes = types;
        removeAllViews();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.massage_set_type_item_width);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.massage_set_type_item_height);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(CommonUtils.isKX11_A2() ? R.dimen.massage_set_type_item_left : R.dimen.massage_set_type_item_left1);
        int dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.massage_set_type_item_left1);
        int i = 0;
        while (i < types.length && i <= 5) {
            LayoutParams layoutParams = new LayoutParams(dimensionPixelSize, dimensionPixelSize2);
            layoutParams.setMarginStart((i == 0 || i == 3) ? 0 : dimensionPixelSize3);
            layoutParams.topMargin = i >= 3 ? dimensionPixelSize4 : 0;
            MassageTypeItem massageTypeItem = new MassageTypeItem(getContext());
            if (i == this.mActiveIndex) {
                massageTypeItem.setActive(true);
            } else {
                massageTypeItem.setActive(false);
            }
            massageTypeItem.setTag(Integer.valueOf(i));
            massageTypeItem.setOnClickListener(this.mItemClickListener);
            massageTypeItem.setType(types[i]);
            addView(massageTypeItem, layoutParams);
            i++;
        }
    }
}