package com.geely.hvac.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.LottieListener;
import com.airbnb.lottie.LottieTask;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.utils.CommonUtils;
import com.geely.hvac.utils.LogUtil;
import java.io.FileInputStream;

/* loaded from: classes.dex */
public abstract class BlowWindAnimateBasic extends LottieAnimationView {
    public static final String TAG = "BlowWindAnimateBasic";
    boolean nextVisiReloadAnimate;
    private boolean visiNeedResumeAni;

    abstract boolean getActivityVisibility();

    abstract boolean getPageVisibility();

    abstract void loadAnimate();

    public BlowWindAnimateBasic(Context context) {
        super(context);
    }

    public BlowWindAnimateBasic(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public BlowWindAnimateBasic(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void onPageVisiChanged() {
        if (getPageVisibility()) {
            if (this.nextVisiReloadAnimate) {
                this.nextVisiReloadAnimate = false;
                this.visiNeedResumeAni = false;
                loadAnimate();
                LogUtil.d(TAG, "loadAnimate:");
                return;
            }
            if (this.visiNeedResumeAni) {
                resumeAnimation();
                LogUtil.d(TAG, "resumeAnimation:");
                this.visiNeedResumeAni = false;
                return;
            }
            LogUtil.d(TAG, "getPageVisibility true");
            return;
        }
        if (isAnimating()) {
            this.visiNeedResumeAni = true;
            pauseAnimation();
            LogUtil.d(TAG, "pauseAnimation:");
        }
        if (!CommonUtils.isKX11_A2() || getActivityVisibility()) {
            return;
        }
        LogUtil.d(TAG, "cancelAnimation");
        cancelAnimation();
        setComposition(null);
        LottieCompositionFactory.clearCache(GlyAcApp.getInstance());
        System.gc();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility != 0) {
            cancelAnimation();
            this.nextVisiReloadAnimate = true;
        } else {
            onPageVisiChanged();
        }
    }

    public void setNextVisiReloadAnimate(boolean nextVisiReloadAnimate) {
        this.nextVisiReloadAnimate = nextVisiReloadAnimate;
    }

    public void setAnimationPath(String localJsonPath, final String imagesPath, final Runnable runnable, LottieListener<Throwable> throwableLottieListener) {
        try {
            setImageAssetDelegate(new ImageAssetDelegate() { // from class: com.geely.hvac.component.-$$Lambda$BlowWindAnimateBasic$jaYAMonqqwKYiE6uTpqRnj5l0NM
                @Override // com.airbnb.lottie.ImageAssetDelegate
                public final Bitmap fetchBitmap(LottieImageAsset lottieImageAsset) {
                    return BlowWindAnimateBasic.lambda$setAnimationPath$0(imagesPath, lottieImageAsset);
                }
            });
            LottieTask<LottieComposition> lottieTaskFromJsonInputStream = LottieCompositionFactory.fromJsonInputStream(new FileInputStream(localJsonPath), null);
            lottieTaskFromJsonInputStream.addListener(new LottieListener() { // from class: com.geely.hvac.component.-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    BlowWindAnimateBasic.this.lambda$setAnimationPath$1$BlowWindAnimateBasic(runnable, (LottieComposition) obj);
                }
            });
            lottieTaskFromJsonInputStream.addFailureListener(throwableLottieListener);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static /* synthetic */ Bitmap lambda$setAnimationPath$0(String str, LottieImageAsset lottieImageAsset) {
        try {
            return BitmapFactory.decodeFile(str + lottieImageAsset.getFileName());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public /* synthetic */ void lambda$setAnimationPath$1$BlowWindAnimateBasic(Runnable runnable, LottieComposition lottieComposition) {
        setComposition(lottieComposition);
        runnable.run();
    }
}
