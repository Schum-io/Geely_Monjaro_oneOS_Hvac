package com.geely.hvac.component;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableField;
import com.geely.hvac.R;
import com.geely.hvac.component.Switch;
import com.geely.hvac.databinding.LayoutAcSetItemBinding;
import com.geely.hvac.utils.LogUtil;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class AcSetItem extends ConstraintLayout {
    private static final String TAG = "AcSetItem";
    private LayoutAcSetItemBinding mBinding;
    private final ObservableField<String> mDesc;
    private ObservableField<Switch.OnSwitchChangeListener> mListener;
    private final ObservableBoolean mState;
    private final ObservableField<String> mTitle;

    public AcSetItem(Context context) {
        super(context);
        this.mTitle = new ObservableField<>();
        this.mDesc = new ObservableField<>();
        this.mState = new ObservableBoolean();
        this.mListener = new ObservableField<>();
        init(context);
    }

    public AcSetItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTitle = new ObservableField<>();
        this.mDesc = new ObservableField<>();
        this.mState = new ObservableBoolean();
        this.mListener = new ObservableField<>();
        init(context);
    }

    public AcSetItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTitle = new ObservableField<>();
        this.mDesc = new ObservableField<>();
        this.mState = new ObservableBoolean();
        this.mListener = new ObservableField<>();
        init(context);
    }

    private void init(Context context) {
        LayoutAcSetItemBinding layoutAcSetItemBindingInflate = LayoutAcSetItemBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutAcSetItemBindingInflate;
        layoutAcSetItemBindingInflate.setModel(this);
        this.mBinding.switcherBottomClick.setOnClickListener(new OnClickListener() { // from class: com.geely.hvac.component.AcSetItem.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AcSetItem.this.mBinding.switcher.toggle();
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
    }

    public ObservableField<String> getTitle() {
        return this.mTitle;
    }

    public ObservableField<String> getDesc() {
        return this.mDesc;
    }

    public ObservableBoolean getState() {
        return this.mState;
    }

    public ObservableField<Switch.OnSwitchChangeListener> getListener() {
        return this.mListener;
    }

    public static void bind(AcSetItem acSetItem, String title, String desc, boolean state, Switch.OnSwitchChangeListener listener) {
        LogUtil.d(TAG, "title:" + title + ",desc:" + desc + ",state:" + state);
        acSetItem.getTitle().set(title);
        acSetItem.getDesc().set(desc);
        acSetItem.getState().set(state);
        acSetItem.getListener().set(listener);
    }

    public static void bind(AcSetItem item, boolean enable) {
        item.setEnable(enable);
    }

    private void setEnable(boolean enable) {
        HmiTextView hmiTextView = this.mBinding.title;
        Resources resources = getResources();
        int i = R.color.ac_set_item_text_disable;
        hmiTextView.setTextColor(resources.getColor(enable ? R.color.ac_set_item_title : R.color.ac_set_item_text_disable));
        HmiTextView hmiTextView2 = this.mBinding.desc;
        Resources resources2 = getResources();
        if (enable) {
            i = R.color.ac_set_item_desc;
        }
        hmiTextView2.setTextColor(resources2.getColor(i));
        this.mBinding.switcher.setEnable(enable);
    }
}
