package com.geely.hvac.component;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.LottieListener;
import com.geely.hvac.R;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class AcFrontBehindSwitch extends LottieAnimationView {
    private static final String TAG = "AcFrontBehindSwitch";
    String currentResPath;
    private boolean mActivityVisible;
    private int mBehindStaticPicBgRes;
    private volatile String mCurrentResPath;
    private int mFrontStaticPicBgRes;
    private boolean mIsFront;

    public static void bindActivityVisible(AcFrontBehindSwitch v, boolean visible) {
        LogUtil.d(TAG, "bindActivityVisible, visible:" + visible);
        v.mActivityVisible = visible;
        if (visible) {
            v.setRes();
        } else {
            v.clear();
        }
    }

    private void clear() {
        setVisibility(8);
        cancelAnimation();
        setComposition(null);
    }

    public static void bindAcFrontBehindSwitchFront(AcFrontBehindSwitch v, boolean front) {
        LogUtil.d(TAG, "bindAcFrontBehindSwitchFront, front:" + front);
        v.setFront(front);
    }

    public static void bindAcFrontBehindSwitchPath(AcFrontBehindSwitch v, String path) {
        LogUtil.d(TAG, "bindAcFrontBehindSwitchPath, path:" + path);
        v.currentResPath = path;
        v.setRes();
    }

    public AcFrontBehindSwitch(Context context) {
        super(context);
        this.mCurrentResPath = "";
        this.mIsFront = true;
        this.mActivityVisible = false;
        init(context, (AttributeSet) null);
    }

    public AcFrontBehindSwitch(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mCurrentResPath = "";
        this.mIsFront = true;
        this.mActivityVisible = false;
        init(context, attrs);
    }

    public AcFrontBehindSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mCurrentResPath = "";
        this.mIsFront = true;
        this.mActivityVisible = false;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.AcFrontBehindSwitch);
        this.mBehindStaticPicBgRes = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.mFrontStaticPicBgRes = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        LogUtil.d(TAG, "init, mBehindStaticPicBgRes:" + this.mBehindStaticPicBgRes + ", mFrontStaticPicBgRes:" + this.mFrontStaticPicBgRes);
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        try {
            View viewFindViewById = ((ViewGroup) getParent()).findViewById(this.mFrontStaticPicBgRes);
            View viewFindViewById2 = ((ViewGroup) getParent()).findViewById(this.mBehindStaticPicBgRes);
            LogUtil.d(TAG, "setVisibility, frontV:" + viewFindViewById + ", behindV:" + viewFindViewById2);
            if (visibility == 0) {
                viewFindViewById.setAlpha(0.0f);
                viewFindViewById2.setAlpha(0.0f);
            } else {
                viewFindViewById.setAlpha(1.0f);
                viewFindViewById2.setAlpha(1.0f);
            }
        } catch (Exception e) {
            LogUtil.d(TAG, "setVisibility, \n" + StackPrinter.getExceptionStack(e));
            e.printStackTrace();
        }
    }

    public void setFront(boolean isFront) {
        this.mIsFront = isFront;
        if (getVisibility() != 0) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = isFront ? ValueAnimator.ofFloat(1.0f, 0.0f) : ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.component.AcFrontBehindSwitch.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                AcFrontBehindSwitch.this.setProgress(((Float) animation.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.start();
    }

    public void setRes() {
        updateAnimateRes();
    }

    private void updateAnimateRes() {
        try {
            String str = this.currentResPath + "/" + (DayNightUtil.isLight() ? "light" : "night");
            String str2 = str + "/animate.json";
            if (!new File(str2).exists()) {
                setVisibility(8);
                LogUtil.d(TAG, "updateAnimateRes, res not bukeyong");
                return;
            }
            setVisibility(0);
            this.mCurrentResPath = str;
            final FileInputStream fileInputStream = new FileInputStream(str2);
            setImageAssetDelegate(new ImageAssetDelegate() { // from class: com.geely.hvac.component.AcFrontBehindSwitch.2
                @Override // com.airbnb.lottie.ImageAssetDelegate
                public Bitmap fetchBitmap(LottieImageAsset asset) {
                    try {
                        return BitmapFactory.decodeFile(AcFrontBehindSwitch.this.mCurrentResPath + "/images/" + asset.getFileName());
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                }
            });
            LottieCompositionFactory.fromJsonInputStream(fileInputStream, this.mCurrentResPath).addListener(new LottieListener() { // from class: com.geely.hvac.component.-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    try {
                        AcFrontBehindSwitch.this.lambda$updateAnimateRes$0$AcFrontBehindSwitch(fileInputStream, (LottieComposition) obj);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public /* synthetic */ void lambda$updateAnimateRes$0$AcFrontBehindSwitch(FileInputStream fileInputStream, LottieComposition lottieComposition) throws IOException {
        setComposition(lottieComposition);
        cancelAnimation();
        if (this.mIsFront) {
            setProgress(0.0f);
        } else {
            setProgress(1.0f);
        }
        try {
            fileInputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
