package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.airbnb.lottie.LottieAnimationView;
import com.geely.hvac.R;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class OneStateLottieView extends LottieAnimationView {
    private static final String TAG = "OneStateLottieView";
    private String mLight;
    private String mNight;
    private String mPath;

    public OneStateLottieView(Context context) {
        super(context);
        init(context, (AttributeSet) null);
    }

    public OneStateLottieView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public OneStateLottieView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            LogUtil.d(TAG, "init, attr is null");
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.OneStateLottieView);
        this.mNight = typedArrayObtainStyledAttributes.getString(1);
        this.mLight = typedArrayObtainStyledAttributes.getString(0);
        typedArrayObtainStyledAttributes.recycle();
        updateAnimate(false);
    }

    private void updateAnimate(boolean animate) {
        String path = getPath(getContext());
        if (!path.equals(this.mPath)) {
            this.mPath = path;
            setImageAssetsFolder(path + "/images");
            setAnimation(path + "/animate.json");
        }
        if (animate) {
            playAnimation();
        } else {
            setProgress(1.0f);
        }
    }

    private String getPath(Context context) {
        return DayNightUtil.isLight() ? this.mLight : this.mNight;
    }

    @Override // android.view.View
    public boolean performClick() {
        updateAnimate(true);
        return super.performClick();
    }
}
