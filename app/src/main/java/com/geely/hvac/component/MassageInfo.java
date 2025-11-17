package com.geely.hvac.component;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableInt;
import com.geely.hvac.databinding.LayoutSeatMassageInfoBinding;
import com.geely.hvac.util.MassageUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;

/* loaded from: classes.dex */
public class MassageInfo extends ConstraintLayout {
    private static final String TAG = "MassageInfo";
    private final ObservableInt mLevel;
    private final ObservableInt mType;

    public static void bindType(MassageInfo v, int type) {
        LogUtil.i(TAG, "bindMassageInfoType v:" + v + ",type" + type);
        v.mType.set(type);
    }

    public static void bindLevel(MassageInfo v, int level) {
        LogUtil.i(TAG, "bindMassageInfoLevel v:" + v + ",level" + level);
        v.mLevel.set(level);
    }

    public MassageInfo(Context context) {
        super(context);
        this.mType = new ObservableInt(0);
        this.mLevel = new ObservableInt(GlyCarPropertyValue.AUTO_SEAT_MASSAGE_LEVEL_1);
        init(context);
    }

    public MassageInfo(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mType = new ObservableInt(0);
        this.mLevel = new ObservableInt(GlyCarPropertyValue.AUTO_SEAT_MASSAGE_LEVEL_1);
        init(context);
    }

    public MassageInfo(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mType = new ObservableInt(0);
        this.mLevel = new ObservableInt(GlyCarPropertyValue.AUTO_SEAT_MASSAGE_LEVEL_1);
        init(context);
    }

    private void init(Context context) {
        LayoutSeatMassageInfoBinding.inflate(LayoutInflater.from(context), this, true).setParent(this);
    }

    public String formatLevel(int level) {
        LogUtil.d(TAG, "formatLevel:" + level);
        return MassageUtil.formatLevel(level);
    }

    public String formatTypeToString(int type) {
        LogUtil.i(TAG, "formatTypeToString, type:" + type);
        return MassageUtil.formatType(type);
    }

    public Drawable formatType(int type) {
        LogUtil.i(TAG, "formatType:" + type);
        int typeDrawableId = MassageUtil.getTypeDrawableId(type, true);
        return typeDrawableId > 0 ? getResources().getDrawable(typeDrawableId) : new ColorDrawable(0);
    }

    public ObservableInt getType() {
        return this.mType;
    }

    public ObservableInt getLevel() {
        return this.mLevel;
    }
}
