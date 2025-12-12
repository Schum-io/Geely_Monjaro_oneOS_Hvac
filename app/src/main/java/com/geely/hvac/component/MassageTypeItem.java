package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import com.geely.hvac.databinding.LayoutMassageTypeItemBinding;
import com.geely.hvac.util.MassageUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;

/* loaded from: classes.dex */
public class MassageTypeItem extends ConstraintLayout {
    private final String TAG;
    private final ObservableBoolean mActive;
    private LayoutMassageTypeItemBinding mBinding;
    private int mType;

    public MassageTypeItem(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        init(context, null);
    }

    public MassageTypeItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        init(context, attrs);
    }

    public MassageTypeItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        LayoutMassageTypeItemBinding layoutMassageTypeItemBindingInflate = LayoutMassageTypeItemBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutMassageTypeItemBindingInflate;
        layoutMassageTypeItemBindingInflate.setView(this);
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
            this.mBinding.icon.setImageResource(MassageUtil.getTypeDrawableId(this.mType, this.mActive.get()));
        } catch (Exception e) {
            LogUtil.i(this.TAG, StackPrinter.getExceptionStack(e));
        }
    }

    public void setType(int type) {
        this.mType = type;
        this.mBinding.tv.setText(MassageUtil.formatType(type));
        updateIcon();
    }
}
