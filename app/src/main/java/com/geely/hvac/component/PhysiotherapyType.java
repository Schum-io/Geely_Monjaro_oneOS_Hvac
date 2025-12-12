package com.geely.hvac.component;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.geely.hvac.R;
import com.geely.hvac.component.intf.PhysiotherapyTypeChangeListener;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PhysiotherapyType extends FlowLayout {
    private static final String TAG = "PhysiotherapyType";
    private int mActiveIndex;
    private final OnClickListener mItemClickListener;
    private PhysiotherapyTypeChangeListener mListener;
    private int mType;
    private int[] mTypes;

    public /* synthetic */ void lambda$new$0$PhysiotherapyType(View view) {
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

    public static void bind(PhysiotherapyType v, int[] types) throws Resources.NotFoundException {
        if (types != null) {
            LogUtil.d(TAG, "bindPhysiotherapyTypes v:" + v + ", types:" + Arrays.toString(types));
            v.setTypes(types);
            v.setPhysiotherapyType(v.mType);
            return;
        }
        LogUtil.d(TAG, "bindPhysiotherapyTypes v:" + v + ", types null");
    }

    public static void bind(PhysiotherapyType v, PhysiotherapyTypeChangeListener listener) {
        v.mListener = listener;
    }

    public static void bind(PhysiotherapyType v, int type) {
        LogUtil.d(TAG, "bindPhysiotherapyType v:" + v + ",type:" + type);
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

    public PhysiotherapyType(Context context) {
        super(context);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = new OnClickListener() { // from class: com.geely.hvac.component.-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                lambda$new$0$PhysiotherapyType(view);
            }
        };
    }

    public PhysiotherapyType(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = new OnClickListener() { // from class: com.geely.hvac.component.-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                lambda$new$0$PhysiotherapyType(view);
            }
        };
    }

    public PhysiotherapyType(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = new OnClickListener() { // from class: com.geely.hvac.component.-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                lambda$new$0$PhysiotherapyType(view);
            }
        };
    }

    public void setActiveIndex(int index) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            ((PhysiotherapyTypeItem) getChildAt(i)).setActive(index == i);
            i++;
        }
    }

    public void setTypes(int[] types) throws Resources.NotFoundException {
        this.mTypes = types;
        removeAllViews();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.massage_set_type_item_width);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.massage_set_type_item_height);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.massage_set_type_item_left1);
        int i = 0;
        while (i < types.length && i <= 5) {
            LayoutParams layoutParams = new LayoutParams(dimensionPixelSize, dimensionPixelSize2);
            layoutParams.setMarginStart((i == 0 || i == 3 || i == 6) ? 0 : dimensionPixelSize3);
            layoutParams.topMargin = i >= 3 ? dimensionPixelSize3 : 0;
            PhysiotherapyTypeItem physiotherapyTypeItem = new PhysiotherapyTypeItem(getContext());
            if (i == this.mActiveIndex) {
                physiotherapyTypeItem.setActive(true);
            } else {
                physiotherapyTypeItem.setActive(false);
            }
            physiotherapyTypeItem.setTag(Integer.valueOf(i));
            physiotherapyTypeItem.setOnClickListener(this.mItemClickListener);
            physiotherapyTypeItem.setType(types[i]);
            addView(physiotherapyTypeItem, layoutParams);
            i++;
        }
    }
}
