package com.geely.hvac.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import com.geely.livewallpager.lotties.ImageAssetDelegate;
import com.geely.livewallpager.lotties.LottieAnimationView;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.LottieCompositionFactory;
import com.geely.livewallpager.lotties.LottieImageAsset;
import com.geely.livewallpager.lotties.LottieListener;
import com.geely.livewallpager.lotties.LottieTask;
import java.io.FileInputStream;

/* loaded from: classes.dex */
public class SeatLottieAnimationView extends LottieAnimationView {
    public SeatLottieAnimationView(Context context) {
        super(context);
    }

    public SeatLottieAnimationView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatLottieAnimationView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setAnimationPath(String localJsonPath, final String imagesPath, final Runnable runnable, LottieListener<Throwable> throwableLottieListener) {
        try {
            setImageAssetDelegate(new ImageAssetDelegate() {
                @Override // com.geely.livewallpager.lotties.ImageAssetDelegate
                public final Bitmap fetchBitmap(LottieImageAsset lottieImageAsset) {
                    return SeatLottieAnimationView.lambda$setAnimationPath$0(imagesPath, lottieImageAsset);
                }
            });
            LottieTask<LottieComposition> lottieTaskFromJsonInputStream = LottieCompositionFactory.fromJsonInputStream(new FileInputStream(localJsonPath), null);
            lottieTaskFromJsonInputStream.addListener(new LottieListener<LottieComposition>() {
                @Override // com.geely.livewallpager.lotties.LottieListener
                public final void onResult(LottieComposition obj) {
                    SeatLottieAnimationView.this.lambda$setAnimationPath$1$SeatLottieAnimationView(runnable, obj);
                }
            });
            lottieTaskFromJsonInputStream.addFailureListener(throwableLottieListener);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static Bitmap lambda$setAnimationPath$0(String str, LottieImageAsset lottieImageAsset) {
        try {
            return BitmapFactory.decodeFile(str + lottieImageAsset.getFileName());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void lambda$setAnimationPath$1$SeatLottieAnimationView(Runnable runnable, LottieComposition lottieComposition) {
        setComposition(lottieComposition);
        runnable.run();
    }
}
