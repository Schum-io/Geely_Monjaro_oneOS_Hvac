package com.geely.hvac.psd.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.databinding.ObservableBoolean;
import com.geely.hvac.databinding.LayoutPsdPhysiotherapyTypeItemBinding;
import com.geely.hvac.trackballview.TrackballConstraintLayout;
import com.geely.hvac.util.PhysiotherapyUtil;
import com.geely.hvac.util.TrackballHelper;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;

/* loaded from: classes.dex */
public class PsdPhysiotherapyTypeItem extends TrackballConstraintLayout {
    private final String TAG;
    private final ObservableBoolean mActive;
    private LayoutPsdPhysiotherapyTypeItemBinding mBinding;
    private int mType;
    TrackballHelper trackballHelper;

    public PsdPhysiotherapyTypeItem(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        this.trackballHelper = new TrackballHelper();
        init(context, null);
    }

    public PsdPhysiotherapyTypeItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        this.trackballHelper = new TrackballHelper();
        init(context, attrs);
    }

    public PsdPhysiotherapyTypeItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mActive = new ObservableBoolean(false);
        TrackballHelper trackballHelper = new TrackballHelper();
        this.trackballHelper = trackballHelper;
        trackballHelper.resolveAttrs(this, context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        LayoutPsdPhysiotherapyTypeItemBinding layoutPsdPhysiotherapyTypeItemBindingInflate = LayoutPsdPhysiotherapyTypeItemBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutPsdPhysiotherapyTypeItemBindingInflate;
        layoutPsdPhysiotherapyTypeItemBindingInflate.setView(this);
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
            LogUtil.i(this.TAG, StackPrinter.getExceptionStack(e));
        }
    }

    public void setType(int type) {
        this.mType = type;
        this.mBinding.tv.setText(PhysiotherapyUtil.formatType(type));
        updateIcon();
    }
}
