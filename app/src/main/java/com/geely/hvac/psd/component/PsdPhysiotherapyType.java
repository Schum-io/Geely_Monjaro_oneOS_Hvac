package com.geely.hvac.psd.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.geely.hvac.component.FlowLayout;
import com.geely.hvac.component.intf.PhysiotherapyTypeChangeListener;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PsdPhysiotherapyType extends FlowLayout {
    private static final String TAG = "PsdPhysiotherapyType";
    private int mActiveIndex;
    private final OnClickListener mItemClickListener;
    private PhysiotherapyTypeChangeListener mListener;
    private int mType;
    private int[] mTypes;

    private void onItemClick(View view) {
        try {
            int iIntValue = ((Integer) view.getTag()).intValue();
            setActiveIndex(iIntValue);
            PhysiotherapyTypeChangeListener physiotherapyTypeChangeListener = this.mListener;
            if (physiotherapyTypeChangeListener != null) {
                physiotherapyTypeChangeListener.onTypeChange(this, this.mTypes[iIntValue]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public static void bind(PsdPhysiotherapyType v, int[] types) {
        if (types != null) {
            LogUtil.i(TAG, "bindPhysiotherapyTypes v:" + v + ", types:" + Arrays.toString(types));
            v.setTypes(types);
            v.setPhysiotherapyType(v.mType);
            return;
        }
        LogUtil.i(TAG, "bindPhysiotherapyTypes v:" + v + ", types null");
    }

    public static void bind(PsdPhysiotherapyType v, PhysiotherapyTypeChangeListener listener) {
        v.mListener = listener;
    }

    public static void bind(PsdPhysiotherapyType v, int type) {
        LogUtil.i(TAG, "bindPhysiotherapyType v:" + v + ",type:" + type);
        v.setPhysiotherapyType(type);
    }

    private void setPhysiotherapyType(int type) {
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

    public PsdPhysiotherapyType(Context context) {
        super(context);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public PsdPhysiotherapyType(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public PsdPhysiotherapyType(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public void setActiveIndex(int index) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            ((PsdPhysiotherapyTypeItem) getChildAt(i)).setActive(index == i);
            i++;
        }
    }

    public void setTypes(int[] types) {
        this.mTypes = types;
        removeAllViews();
        int i = 0;
        while (i < types.length && i <= 5) {
            LayoutParams layoutParams = new LayoutParams(288, 96);
            layoutParams.setMarginStart(40);
            layoutParams.topMargin = 40;
            layoutParams.setMarginEnd((i == 1 || i == 3 || i == 5) ? 40 : 0);
            layoutParams.bottomMargin = i < 4 ? 0 : 40;
            PsdPhysiotherapyTypeItem psdPhysiotherapyTypeItem = new PsdPhysiotherapyTypeItem(getContext());
            if (i == this.mActiveIndex) {
                psdPhysiotherapyTypeItem.setActive(true);
            } else {
                psdPhysiotherapyTypeItem.setActive(false);
            }
            psdPhysiotherapyTypeItem.setTag(Integer.valueOf(i));
            psdPhysiotherapyTypeItem.setOnClickListener(this.mItemClickListener);
            psdPhysiotherapyTypeItem.setType(types[i]);
            addView(psdPhysiotherapyTypeItem, layoutParams);
            i++;
        }
    }
}
