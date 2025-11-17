package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ObservableBoolean;
import com.geely.hvac.R;
import com.geely.hvac.databinding.SeatFeatureLevelBinding;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.ViewFroze;

/* loaded from: classes.dex */
public abstract class SeatFeatureLevel extends ConstraintLayout {
    private static final String TAG = "SeatFeatureLevel";
    private String mAnimatePath;
    private SeatFeatureLevelBinding mBinding;
    private int mDisableResId;
    private final ObservableBoolean mEnable;
    private int mLevel;
    private String mLevel0LightPath;
    private String mLevel0NightPath;
    private String mLevel1LightPath;
    private String mLevel1NightPath;
    private String mLevel2LightPath;
    private String mLevel2NightPath;
    private String mLevel3LightPath;
    private String mLevel3NightPath;
    private ViewFroze mViewFroze;

    protected abstract int levelToIndex(int level);

    public SeatFeatureLevel(Context context) {
        super(context);
        this.mEnable = new ObservableBoolean(true);
        this.mLevel = 0;
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        init(context, null);
    }

    public SeatFeatureLevel(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mEnable = new ObservableBoolean(true);
        this.mLevel = 0;
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        init(context, attrs);
    }

    public SeatFeatureLevel(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mEnable = new ObservableBoolean(true);
        this.mLevel = 0;
        this.mViewFroze = new ViewFroze(ViewFroze.FROZE_TIME);
        init(context, attrs);
    }

    public static void bindSeatFeatureLevelEnable(SeatFeatureLevel v, boolean enable) {
        Log.d(TAG, "bindSeatFeatureLevelEnable, enable:" + enable);
        v.setEnabled(enable);
    }

    public static void bindSeatFeatureLevelLevel(SeatFeatureLevel v, int level) {
        Log.d(TAG, "bindSeatFeatureLevelLevel, level:" + level);
        v.setLevel(level);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        if (!enabled) {
            this.mBinding.lottie.cancelAnimation();
        }
        this.mEnable.set(enabled);
        updateAnimate();
    }

    public void setLevel(int level) {
        int iLevelToIndex = levelToIndex(level);
        if (this.mLevel == iLevelToIndex) {
            Log.d(TAG, "setLevel repeat, index:" + iLevelToIndex);
        } else {
            this.mLevel = iLevelToIndex;
            updateAnimate();
        }
    }

    public ObservableBoolean getLevelEnable() {
        return this.mEnable;
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        SeatFeatureLevelBinding seatFeatureLevelBindingInflate = SeatFeatureLevelBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = seatFeatureLevelBindingInflate;
        seatFeatureLevelBindingInflate.setView(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.SeatFeatureLevel);
        this.mLevel0LightPath = typedArrayObtainStyledAttributes.getString(0);
        this.mLevel0NightPath = typedArrayObtainStyledAttributes.getString(1);
        this.mLevel1LightPath = typedArrayObtainStyledAttributes.getString(2);
        this.mLevel1NightPath = typedArrayObtainStyledAttributes.getString(3);
        this.mLevel2LightPath = typedArrayObtainStyledAttributes.getString(4);
        this.mLevel2NightPath = typedArrayObtainStyledAttributes.getString(5);
        this.mLevel3LightPath = typedArrayObtainStyledAttributes.getString(6);
        this.mLevel3NightPath = typedArrayObtainStyledAttributes.getString(7);
        int color = typedArrayObtainStyledAttributes.getColor(9, 0);
        this.mDisableResId = typedArrayObtainStyledAttributes.getResourceId(10, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mBinding.disableBg.setNormalColor(color);
        this.mBinding.disableBg.setRadius(dimensionPixelSize);
        if (this.mDisableResId != 0) {
            this.mBinding.disableImg.setImageResource(this.mDisableResId);
        }
    }

    private String getPath(Context context, int index) {
        boolean zIsLight = DayNightUtil.isLight();
        return index != 1 ? index != 2 ? index != 3 ? zIsLight ? this.mLevel0LightPath : this.mLevel0NightPath : zIsLight ? this.mLevel3LightPath : this.mLevel3NightPath : zIsLight ? this.mLevel2LightPath : this.mLevel2NightPath : zIsLight ? this.mLevel1LightPath : this.mLevel1NightPath;
    }

    private void updateAnimate() {
        if (this.mEnable.get()) {
            String path = getPath(getContext(), this.mLevel);
            if (!path.equals(this.mAnimatePath)) {
                LogUtil.d(TAG, "setStatus change path");
                this.mBinding.lottie.setImageAssetsFolder(path + "/images");
                this.mBinding.lottie.setAnimation(path + "/animate.json");
                this.mAnimatePath = path;
            } else {
                LogUtil.d(TAG, "setStatus, not change path");
            }
            String str = TAG;
            LogUtil.d(str, "updateAnimate, attach:" + isAttachedToWindow());
            if (this.mViewFroze.isFroze(true)) {
                LogUtil.d(str, " setProgress(1f)  ");
                this.mBinding.lottie.setProgress(1.0f);
            } else {
                LogUtil.d(str, "  playAnimation  ");
                this.mBinding.lottie.playAnimation();
            }
        }
    }
}
