package com.geely.hvac.component;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableInt;
import com.geely.hvac.databinding.LayoutSeatPhysiotherapyInfoBinding;
import com.geely.hvac.util.PhysiotherapyUtil;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class PhysiotherapyInfo extends ConstraintLayout {
    private static final String TAG = "PhysiotherapyInfo";
    private final ObservableInt mType;

    public static void bindType(PhysiotherapyInfo v, int type) {
        LogUtil.i(TAG, "bindPhysiotherapyInfoType v:" + v + ",type" + type);
        v.mType.set(type);
    }

    public PhysiotherapyInfo(Context context) {
        super(context);
        this.mType = new ObservableInt(0);
        init(context);
    }

    public PhysiotherapyInfo(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mType = new ObservableInt(0);
        init(context);
    }

    public PhysiotherapyInfo(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mType = new ObservableInt(0);
        init(context);
    }

    private void init(Context context) {
        LayoutSeatPhysiotherapyInfoBinding.inflate(LayoutInflater.from(context), this, true).setParent(this);
    }

    public String formatTypeToString(int type) {
        LogUtil.d(TAG, "formatTypeToString, type:" + type);
        return PhysiotherapyUtil.formatType(type);
    }

    public Drawable formatType(int type) {
        LogUtil.d(TAG, "formatType:" + type);
        int typeDrawableId = PhysiotherapyUtil.getTypeDrawableId(type, true);
        return typeDrawableId > 0 ? getResources().getDrawable(typeDrawableId) : new ColorDrawable(0);
    }

    public ObservableInt getType() {
        return this.mType;
    }
}
