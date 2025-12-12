package com.geely.hvac.psd.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.geely.hvac.component.FlowLayout;
import com.geely.hvac.component.intf.MassageTypeChangeListener;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PsdMassageType extends FlowLayout {
    private static final String TAG = "PsdMassageType";
    private int mActiveIndex;
    private final OnClickListener mItemClickListener;
    private MassageTypeChangeListener mListener;
    private int mType;
    private int[] mTypes;

    private void onItemClick(View view) {
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

    public static void bind(PsdMassageType v, int[] types) {
        if (types != null) {
            LogUtil.i(TAG, "bindMassageTypes v:" + v + ", types:" + Arrays.toString(types));
            v.setTypes(types);
            v.setMassageType(v.mType);
            return;
        }
        LogUtil.i(TAG, "bindMassageTypes v:" + v + ", types null");
    }

    public static void bind(PsdMassageType v, MassageTypeChangeListener listener) {
        v.mListener = listener;
    }

    public static void bind(PsdMassageType v, int type) {
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

    public PsdMassageType(Context context) {
        super(context);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public PsdMassageType(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = this::onItemClick;
    }

    public PsdMassageType(Context context, AttributeSet attrs, int defStyleAttr) {
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
            ((PsdMassageTypeItem) getChildAt(i)).setActive(index == i);
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
            PsdMassageTypeItem psdMassageTypeItem = new PsdMassageTypeItem(getContext());
            if (i == this.mActiveIndex) {
                psdMassageTypeItem.setActive(true);
            } else {
                psdMassageTypeItem.setActive(false);
            }
            psdMassageTypeItem.setTag(Integer.valueOf(i));
            psdMassageTypeItem.setOnClickListener(this.mItemClickListener);
            psdMassageTypeItem.setType(types[i]);
            addView(psdMassageTypeItem, layoutParams);
            i++;
        }
    }
}
