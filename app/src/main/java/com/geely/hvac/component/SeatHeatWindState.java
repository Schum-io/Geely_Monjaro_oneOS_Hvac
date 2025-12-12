package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutSeatHeatWindStateBinding;

/* loaded from: classes.dex */
public abstract class SeatHeatWindState extends ConstraintLayout {
    private static final String TAG = "SeatHeatWindState";
    private LayoutSeatHeatWindStateBinding mBinding;
    private int mDisableBgColor;
    private int mDisableSrcId;
    private boolean mEnable;
    private int mLevel;
    private int mLevel0BgColor;
    private int mLevel0SrcId;
    private int mLevel1SrcId;
    private int mLevel2SrcId;
    private int mLevel3SrcId;
    private int mOpenBgColor;

    protected abstract int parseLevel(int level);

    public static void bind(SeatHeatWindState view, boolean enable) {
        view.setEnable(enable);
    }

    public static void bind(SeatHeatWindState view, int level) {
        view.setLevel(level);
    }

    public SeatHeatWindState(Context context) {
        super(context);
        this.mDisableBgColor = 0;
        this.mLevel0BgColor = 0;
        this.mOpenBgColor = 0;
        this.mEnable = true;
        this.mLevel = 0;
        init(context, null);
    }

    public SeatHeatWindState(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mDisableBgColor = 0;
        this.mLevel0BgColor = 0;
        this.mOpenBgColor = 0;
        this.mEnable = true;
        this.mLevel = 0;
        init(context, attrs);
    }

    public SeatHeatWindState(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDisableBgColor = 0;
        this.mLevel0BgColor = 0;
        this.mOpenBgColor = 0;
        this.mEnable = true;
        this.mLevel = 0;
        init(context, attrs);
    }

    private void setEnable(boolean enable) {
        this.mEnable = enable;
        updateUi();
    }

    private void setLevel(int level) {
        this.mLevel = parseLevel(level);
        updateUi();
    }

    private void setImg(ImageView img, int resId) {
        if (resId == 0) {
            return;
        }
        img.setImageResource(resId);
    }

    private void updateUi() {
        int i;
        if (!this.mEnable) {
            this.mBinding.bg.setNormalColor(this.mDisableBgColor);
            setImg(this.mBinding.img, this.mDisableSrcId);
            return;
        }
        int i2 = this.mLevel;
        int i3 = 0;
        if (i2 == 0) {
            i3 = this.mLevel0SrcId;
            i = this.mLevel0BgColor;
        } else if (i2 == 1) {
            i3 = this.mLevel1SrcId;
            i = this.mOpenBgColor;
        } else if (i2 == 2) {
            i3 = this.mLevel2SrcId;
            i = this.mOpenBgColor;
        } else if (i2 != 3) {
            i = 0;
        } else {
            i3 = this.mLevel3SrcId;
            i = this.mOpenBgColor;
        }
        setImg(this.mBinding.img, i3);
        this.mBinding.bg.setNormalColor(i);
    }

    private void init(Context context, AttributeSet attrs) {
        this.mBinding = LayoutSeatHeatWindStateBinding.inflate(LayoutInflater.from(context), this, true);
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.SeatHeatWindState);
        this.mDisableSrcId = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        this.mDisableBgColor = typedArrayObtainStyledAttributes.getColor(0, 0);
        this.mLevel0SrcId = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.mLevel0BgColor = typedArrayObtainStyledAttributes.getColor(2, 0);
        this.mOpenBgColor = typedArrayObtainStyledAttributes.getColor(7, 0);
        this.mLevel1SrcId = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.mLevel2SrcId = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.mLevel3SrcId = typedArrayObtainStyledAttributes.getResourceId(6, 0);
        typedArrayObtainStyledAttributes.recycle();
        updateUi();
    }
}
