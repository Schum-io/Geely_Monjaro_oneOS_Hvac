package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.MainViewModel;
import java.io.File;

/* loaded from: classes.dex */
public class BlowWindAnimateEco2Normal extends BlowWindAnimateBasic {
    private static final String LOTTIE_PREFIX = "lottie/";
    protected static final String TAG = "BlowWindAnimateEco2Normal";
    String currentResPath;
    Boolean ecoState;
    boolean mActivityVisible;
    boolean mPagerVisible;

    public static void bindActivityVisible(BlowWindAnimateEco2Normal v, boolean visible) {
        LogUtil.d(TAG, "bindActivityVisible, visible:" + visible);
        v.mActivityVisible = visible;
        if (visible) {
            v.loadAnimate();
        }
        v.onPageVisiChanged();
    }

    public static void bindPagerVisible(BlowWindAnimateEco2Normal v, boolean visible) {
        LogUtil.d(TAG, "bindPagerVisible, visible:" + visible);
        v.mPagerVisible = visible;
        v.onPageVisiChanged();
    }

    public static void bindVisible(final BlowWindAnimateEco2Normal v, final boolean visible) {
        LogUtil.d(TAG, "bindPagerVisible, visible:" + visible);
        v.setVisibility(8);
        Executor.MAIN.postDelayed(new Runnable() { // from class: com.geely.hvac.component.BlowWindAnimateEco2Normal.1
            @Override // java.lang.Runnable
            public void run() {
                if (visible) {
                    v.setVisibility(0);
                } else {
                    v.setVisibility(8);
                }
            }
        }, 200L);
    }

    public static void bindLottiePath(BlowWindAnimateEco2Normal v, String path) {
        LogUtil.d(TAG, "bindLottieAniPath, path:" + path);
        v.currentResPath = path;
        v.loadAnimate();
    }

    public static void bindEcoState(BlowWindAnimateEco2Normal v, boolean ecoState) {
        LogUtil.d(TAG, "bindEcoState, ecoState:" + ecoState);
        v.ecoState = Boolean.valueOf(ecoState);
        v.loadAnimate();
    }

    public BlowWindAnimateEco2Normal(Context context) {
        super(context);
        this.mPagerVisible = false;
        this.mActivityVisible = false;
    }

    public BlowWindAnimateEco2Normal(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPagerVisible = false;
        this.mActivityVisible = false;
    }

    public BlowWindAnimateEco2Normal(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mPagerVisible = false;
        this.mActivityVisible = false;
    }

    @Override // com.geely.hvac.component.BlowWindAnimateBasic
    boolean getPageVisibility() {
        return getVisibility() == 0 && this.mPagerVisible;
    }

    @Override // com.geely.hvac.component.BlowWindAnimateBasic
    boolean getActivityVisibility() {
        LogUtil.i(TAG, "getActivityVisibility  --   :" + this.mActivityVisible);
        return this.mActivityVisible;
    }

    @Override // com.geely.hvac.component.BlowWindAnimateBasic
    public void loadAnimate() {
        if (!getPageVisibility()) {
            LogUtil.i(TAG, "getPageVisibility:false");
            setNextVisiReloadAnimate(true);
            return;
        }
        String strFindAnimatePath = findAnimatePath();
        String str = TAG;
        LogUtil.i(str, "updateAnimateRes path:" + strFindAnimatePath);
        if (!new File(strFindAnimatePath).exists()) {
            LogUtil.i(str, "File(path).exists():false");
            setNextVisiReloadAnimate(true);
            return;
        }
        if (this.currentResPath == null) {
            LogUtil.i(str, "currentResPath null!");
            return;
        }
        if (this.ecoState == null) {
            LogUtil.i(str, "frontWindUpState ecoState null!");
            return;
        }
        String str2 = strFindAnimatePath + "/animate.json";
        String str3 = strFindAnimatePath + "/images/";
        LogUtil.d(str, "jsonPath:" + str2);
        if (!new File(str2).exists()) {
            LogUtil.i(str, "File(jsonPath).exists():false");
            setNextVisiReloadAnimate(true);
        } else if (!new File(str3).exists()) {
            LogUtil.i(str, "File(imageFolder).exists():false");
            setNextVisiReloadAnimate(true);
        } else {
            cancelAnimation();
            setAnimationPath(str2, str3, this::onAnimationLoaded, this::onAnimationLoadFailed);
        }
    }

    public void onAnimationLoaded() {
        LogUtil.i(TAG, "动画加载成功");
        setRepeatCount(-1);
        playAnimation();
    }

    public void onAnimationLoadFailed(Throwable th) {
        setNextVisiReloadAnimate(true);
        LogUtil.i(TAG, th);
    }

    private String findAnimatePath() {
        StringBuilder sb = new StringBuilder();
        sb.append(MainViewModel.AIR_FRONT_BLOWING_RES);
        sb.append(LOTTIE_PREFIX);
        sb.append(DayNightUtil.isLight() ? "light/" : "night/");
        sb.append(this.currentResPath);
        if (this.ecoState.booleanValue()) {
            sb.append("_eco");
        }
        return sb.toString();
    }
}
