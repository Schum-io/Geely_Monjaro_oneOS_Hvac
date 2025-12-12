package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import com.geely.hvac.databinding.LayoutPhysiotherapyTypeItemBinding;
import com.geely.hvac.util.PhysiotherapyUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;

/* loaded from: classes.dex */
public class PhysiotherapyTypeItem extends ConstraintLayout {
    private final String TAG;
    private final ObservableBoolean mActive;
    private LayoutPhysiotherapyTypeItemBinding mBinding;
    private int mType;

    public PhysiotherapyTypeItem(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        init(context, null);
    }

    public PhysiotherapyTypeItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        init(context, attrs);
    }

    public PhysiotherapyTypeItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        LayoutPhysiotherapyTypeItemBinding layoutPhysiotherapyTypeItemBindingInflate = LayoutPhysiotherapyTypeItemBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutPhysiotherapyTypeItemBindingInflate;
        layoutPhysiotherapyTypeItemBindingInflate.setView(this);
    }

    public ObservableBoolean getActive() {
        return this.mActive;
    }

    public void setActive(boolean active) {
        this.mActive.set(active);
        updateIcon();
    }

    private void updateIcon() {
        try {
            this.mBinding.icon.setImageResource(PhysiotherapyUtil.getTypeDrawableId(this.mType, this.mActive.get()));
        } catch (Exception e) {
            LogUtil.d(this.TAG, StackPrinter.getExceptionStack(e));
        }
    }

    public void setType(int type) {
        this.mType = type;
        this.mBinding.tv.setText(PhysiotherapyUtil.formatType(type));
        updateIcon();
    }
}
