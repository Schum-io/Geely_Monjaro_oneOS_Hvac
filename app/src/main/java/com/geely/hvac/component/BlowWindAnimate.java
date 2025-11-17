package com.geely.hvac.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import com.geely.hvac.utils.LogUtil;
import com.geely.livewallpager.lotties.ImageAssetDelegate;
import com.geely.livewallpager.lotties.LottieAnimationView;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.LottieImageAsset;
import com.geely.livewallpager.lotties.OnCompositionLoadedListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public class BlowWindAnimate extends LottieAnimationView {
    private static final String TAG = "BlowWindAnimate";
    private boolean mActivityVisible;
    private volatile boolean mAnimateEnable;
    private volatile String mCurrentResPath;
    private boolean mPagerItemVisible;

    public static void bindActivityVisibility(BlowWindAnimate v, boolean visible) {
        v.setActivityVisible(visible);
    }

    public static void bindPagerItemVisible(BlowWindAnimate v, boolean visible) {
        v.setPagerItemVisible(visible);
    }

    public static void bindBlowWindAnimateRes(BlowWindAnimate v, String path) {
        v.setCurrentResPath(path);
    }

    public BlowWindAnimate(Context context) {
        super(context);
        this.mCurrentResPath = "";
        this.mAnimateEnable = false;
        this.mActivityVisible = false;
        this.mPagerItemVisible = false;
        init(context, null);
    }

    public BlowWindAnimate(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mCurrentResPath = "";
        this.mAnimateEnable = false;
        this.mActivityVisible = false;
        this.mPagerItemVisible = false;
        init(context, attrs);
    }

    public BlowWindAnimate(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mCurrentResPath = "";
        this.mAnimateEnable = false;
        this.mActivityVisible = false;
        this.mPagerItemVisible = false;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        setRepeatCount(-1);
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        LogUtil.d(TAG, "setVisibility, visibility:" + visibility);
        updateAnimateEnable();
    }

    @Override // com.geely.livewallpager.lotties.LottieAnimationView, android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateAnimateEnable();
    }

    @Override // com.geely.livewallpager.lotties.LottieAnimationView, android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateAnimateEnable();
    }

    public void setActivityVisible(boolean activityVisible) {
        LogUtil.d(TAG, "setActivityVisible, activityVisible:" + activityVisible);
        this.mActivityVisible = activityVisible;
        updateAnimateEnable();
    }

    public void setPagerItemVisible(boolean pagerItemVisible) {
        LogUtil.d(TAG, "setPagerItemVisible: pagerItemVisible:" + pagerItemVisible);
        this.mPagerItemVisible = pagerItemVisible;
        updateAnimateEnable();
    }

    public void setCurrentResPath(String currentResPath) {
        LogUtil.d(TAG, "setCurrentResPath: currentResPath:" + currentResPath);
        updateAnimateRes(currentResPath);
        updateAnimateEnable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getAnimateEnable() {
        return isAttachedToWindow() && this.mActivityVisible && getVisibility() == 0 && this.mPagerItemVisible && checkRes(this.mCurrentResPath);
    }

    private void updateAnimateEnable() {
        boolean animateEnable = getAnimateEnable();
        LogUtil.d(TAG, "updateAnimateEnable, newEnableState:" + animateEnable + ", mAnimateEnable:" + this.mAnimateEnable);
        if (animateEnable == this.mAnimateEnable) {
            return;
        }
        this.mAnimateEnable = animateEnable;
        if (animateEnable) {
            playAnimation();
        } else {
            pauseAnimation();
        }
    }

    private void updateAnimateRes(final String currentResPath) {
        String str = currentResPath + "/animate.json";
        if (!checkRes(currentResPath)) {
            setVisibility(8);
            LogUtil.d(TAG, "updateAnimateRes, res not bukeyong");
        } else {
            if (currentResPath.equals(this.mCurrentResPath)) {
                LogUtil.d(TAG, "updateAnimateRes, same res");
                return;
            }
            this.mCurrentResPath = currentResPath;
            try {
                final FileInputStream fileInputStream = new FileInputStream(str);
                setImageAssetDelegate(new ImageAssetDelegate() { // from class: com.geely.hvac.component.BlowWindAnimate.1
                    @Override // com.geely.livewallpager.lotties.ImageAssetDelegate
                    public Bitmap fetchBitmap(LottieImageAsset asset) {
                        try {
                            return BitmapFactory.decodeFile(currentResPath + "/images/" + asset.getFileName());
                        } catch (Exception e) {
                            e.printStackTrace();
                            return null;
                        }
                    }
                });
                LottieComposition.Factory.fromInputStream(fileInputStream, new OnCompositionLoadedListener() { // from class: com.geely.hvac.component.BlowWindAnimate.2
                    @Override // com.geely.livewallpager.lotties.OnCompositionLoadedListener
                    public void onCompositionLoaded(LottieComposition composition) {
                        BlowWindAnimate.this.setComposition(composition);
                        BlowWindAnimate.this.cancelAnimation();
                        BlowWindAnimate.this.setProgress(0.0f);
                        BlowWindAnimate.this.setRepeatCount(-1);
                        if (BlowWindAnimate.this.getAnimateEnable()) {
                            BlowWindAnimate.this.playAnimation();
                        }
                        try {
                            fileInputStream.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    private boolean checkRes(String path) {
        try {
            boolean zExists = new File(path + "/animate.json").exists();
            LogUtil.d(TAG, "checkRes: res:" + zExists + ",path:" + path);
            return zExists;
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.d(TAG, "checkRes: res:false");
            return false;
        }
    }
}
