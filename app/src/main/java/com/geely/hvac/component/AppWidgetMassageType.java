package com.geely.hvac.component;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.geely.hvac.R;
import com.geely.hvac.activity.AppWidgetMassageDetailActivity;
import com.geely.hvac.component.intf.MassageTypeChangeListener;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Arrays;

/* loaded from: classes.dex */
public class AppWidgetMassageType extends FlowLayout {
    private static final String TAG = "AppWidgetMassageType";
    private int mActiveIndex;
    private final OnClickListener mItemClickListener;
    private MassageTypeChangeListener mListener;
    private int mType;
    private int[] mTypes;

    public /* synthetic */ void lambda$new$0$AppWidgetMassageType(View view) {
        try {
            int iIntValue = ((Integer) view.getTag()).intValue();
            setActiveIndex(iIntValue);
            MassageTypeChangeListener massageTypeChangeListener = this.mListener;
            if (massageTypeChangeListener != null) {
                massageTypeChangeListener.onTypeChange(this, this.mTypes[iIntValue]);
                if (getContext() instanceof AppWidgetMassageDetailActivity) {
                    ((AppWidgetMassageDetailActivity) getContext()).finish();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public static void bind(AppWidgetMassageType v, int[] types) throws Resources.NotFoundException {
        if (types != null) {
            LogUtil.d(TAG, "bindMassageTypes v:" + v + ", types:" + Arrays.toString(types));
            v.setTypes(types);
            v.setMassageType(v.mType);
            return;
        }
        LogUtil.d(TAG, "bindMassageTypes v:" + v + ", types null");
    }

    public static void bind(AppWidgetMassageType v, MassageTypeChangeListener listener) {
        v.mListener = listener;
    }

    public static void bind(AppWidgetMassageType v, int type) {
        LogUtil.d(TAG, "bindMassageType v:" + v + ",type:" + type);
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

    public AppWidgetMassageType(Context context) {
        super(context);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = new OnClickListener() { // from class: com.geely.hvac.component.-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                lambda$new$0$AppWidgetMassageType(view);
            }
        };
    }

    public AppWidgetMassageType(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = new OnClickListener() { // from class: com.geely.hvac.component.-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                lambda$new$0$AppWidgetMassageType(view);
            }
        };
    }

    public AppWidgetMassageType(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTypes = new int[]{GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6};
        this.mType = 0;
        this.mListener = null;
        this.mActiveIndex = 0;
        this.mItemClickListener = new OnClickListener() { // from class: com.geely.hvac.component.-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                lambda$new$0$AppWidgetMassageType(view);
            }
        };
    }

    public void setActiveIndex(int index) {
        int childCount = getChildCount();
        int i = 0;
        while (i < childCount) {
            ((AppWidgetMassageTypeItem) getChildAt(i)).setActive(index == i);
            i++;
        }
    }

    public void setTypes(int[] types) throws Resources.NotFoundException {
        this.mTypes = types;
        removeAllViews();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.app_widget_massage_set_type_item_width);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.app_widget_massage_set_type_item_height);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.app_widget_massage_set_type_item_margin_left);
        int dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.app_widget_massage_set_type_item_margin_start);
        int dimensionPixelSize5 = getResources().getDimensionPixelSize(R.dimen.app_widget_massage_set_type_item_margin_top);
        int i = 0;
        while (i < types.length && i <= 5) {
            LayoutParams layoutParams = new LayoutParams(dimensionPixelSize, dimensionPixelSize2);
            layoutParams.setMarginStart((i == 0 || i == 3 || i == 6) ? dimensionPixelSize4 : dimensionPixelSize3);
            layoutParams.topMargin = i <= 2 ? dimensionPixelSize4 : dimensionPixelSize5;
            AppWidgetMassageTypeItem appWidgetMassageTypeItem = new AppWidgetMassageTypeItem(getContext());
            if (i == this.mActiveIndex) {
                appWidgetMassageTypeItem.setActive(true);
            } else {
                appWidgetMassageTypeItem.setActive(false);
            }
            appWidgetMassageTypeItem.setTag(Integer.valueOf(i));
            appWidgetMassageTypeItem.setOnClickListener(this.mItemClickListener);
            appWidgetMassageTypeItem.setType(types[i]);
            addView(appWidgetMassageTypeItem, layoutParams);
            i++;
        }
    }
}
