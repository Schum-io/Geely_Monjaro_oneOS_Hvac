package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableField;
import androidx.databinding.ObservableInt;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutFragranceTypeItemBinding;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class FragranceTypeItem extends ConstraintLayout {
    private final String TAG;
    private final ObservableBoolean mActive;
    private LayoutFragranceTypeItemBinding mBinding;
    private Context mContext;
    private final ObservableBoolean mEnable;
    private final ObservableBoolean mFragranceState;
    private final ObservableBoolean mInstalledFragrance;
    private Drawable mTypeIcon;
    private final ObservableInt mTypeId;
    private final ObservableField<Drawable> mTypeImage;
    private final ObservableField<String> mTypeName;
    private final ObservableBoolean mUnKnowFragrance;

    public FragranceTypeItem(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mTypeId = new ObservableInt(0);
        this.mTypeName = new ObservableField<>("");
        this.mTypeImage = new ObservableField<>();
        this.mActive = new ObservableBoolean(true);
        this.mEnable = new ObservableBoolean(true);
        this.mInstalledFragrance = new ObservableBoolean(true);
        this.mUnKnowFragrance = new ObservableBoolean(true);
        this.mFragranceState = new ObservableBoolean(true);
        init(context, null);
    }

    public FragranceTypeItem(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mTypeId = new ObservableInt(0);
        this.mTypeName = new ObservableField<>("");
        this.mTypeImage = new ObservableField<>();
        this.mActive = new ObservableBoolean(true);
        this.mEnable = new ObservableBoolean(true);
        this.mInstalledFragrance = new ObservableBoolean(true);
        this.mUnKnowFragrance = new ObservableBoolean(true);
        this.mFragranceState = new ObservableBoolean(true);
        init(context, attrs);
    }

    public FragranceTypeItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mTypeId = new ObservableInt(0);
        this.mTypeName = new ObservableField<>("");
        this.mTypeImage = new ObservableField<>();
        this.mActive = new ObservableBoolean(true);
        this.mEnable = new ObservableBoolean(true);
        this.mInstalledFragrance = new ObservableBoolean(true);
        this.mUnKnowFragrance = new ObservableBoolean(true);
        this.mFragranceState = new ObservableBoolean(true);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        this.mContext = context;
        LayoutFragranceTypeItemBinding layoutFragranceTypeItemBindingInflate = LayoutFragranceTypeItemBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutFragranceTypeItemBindingInflate;
        layoutFragranceTypeItemBindingInflate.setView(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.FragranceTypeItem);
        this.mTypeIcon = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        this.mBinding.icon.setImageDrawable(this.mTypeIcon);
        setActive(false);
        refreshClickable();
    }

    public ObservableBoolean getInstalledFragrance() {
        return this.mInstalledFragrance;
    }

    public ObservableBoolean getUnKnowFragrance() {
        return this.mUnKnowFragrance;
    }

    public ObservableInt getTypeId() {
        return this.mTypeId;
    }

    public ObservableField<String> getTypeName() {
        return this.mTypeName;
    }

    public ObservableField<Drawable> getTypeImage() {
        return this.mTypeImage;
    }

    public ObservableBoolean getActive() {
        return this.mActive;
    }

    public ObservableBoolean getEnable() {
        return this.mEnable;
    }

    public ObservableBoolean getFragranceState() {
        return this.mFragranceState;
    }

    public void setTypeId(int id) {
        LogUtil.i(this.TAG, "setTypeId, id:" + id);
        this.mInstalledFragrance.set(id != 0);
        refreshClickable();
        this.mTypeId.set(id);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        LogUtil.i(this.TAG, "setEnabled, enable:" + enabled);
        this.mEnable.set(enabled);
        refreshClickable();
    }

    private void refreshClickable() {
        LogUtil.i(this.TAG, "refreshClickable, enable:" + this.mEnable.get() + ", installFragrance" + this.mInstalledFragrance.get());
        boolean z = this.mEnable.get() && this.mInstalledFragrance.get();
        setClickable(z);
        setFocusable(z);
    }

    public void setTypeName(String typeName) {
        LogUtil.i(this.TAG, "setTypeName, typeName:" + typeName);
        this.mTypeName.set(typeName);
        this.mUnKnowFragrance.set(getResources().getString(R.string.default_fragrance).equals(typeName));
    }

    public void setTypeImage(int res) {
        LogUtil.i(this.TAG, "setTypeImage, setTypeImage:" + res);
        this.mTypeImage.set(this.mContext.getDrawable(res));
    }

    public void setActive(boolean active) {
        LogUtil.i(this.TAG, "setActive, active:" + active);
        this.mActive.set(active);
    }

    public void setFragranceState(boolean state) {
        LogUtil.i(this.TAG, "setFragranceState, state:" + state);
        this.mFragranceState.set(state);
    }
}
