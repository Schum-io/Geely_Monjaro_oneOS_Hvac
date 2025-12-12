package com.geely.hvac.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.OnCompositionLoadedListener;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCarPropertyValue;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SeatPhysiotherapyAnimate extends LottieAnimationView {
    private static final String TAG = "SeatPhysiotherapyAnimate";
    public static final Map<Integer, String> TYPE_ANIMATE_PATH_MAP = new HashMap() { // from class: com.geely.hvac.component.SeatPhysiotherapyAnimate.1
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6), "motion");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8), "thai");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7), "relief");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4), "shoulder");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5), "waist");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2), "back");
        }
    };
    private int leftOrRight;
    private String mPath;

    public SeatPhysiotherapyAnimate(Context context) {
        super(context);
    }

    public SeatPhysiotherapyAnimate(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatPhysiotherapyAnimate(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public static void bindPhysiotherapyAnimateType(SeatPhysiotherapyAnimate v, int type) {
        LogUtil.d(TAG, "bindPhysiotherapyAnimateType v:" + v + ",type:" + type);
        v.setType(type);
    }

    public static void bindSeatPhysiotherapyAnimateRes(SeatPhysiotherapyAnimate v, String path) {
        LogUtil.d(TAG, "bindSeatPhysiotherapyAnimateRes v:" + v + ",path:" + path);
        v.setPath(path);
    }

    public static void bindSeatMassageAnimateLeftOrRight(SeatPhysiotherapyAnimate v, int zone) {
        v.leftOrRight = zone;
    }

    public void setPath(String path) {
        try {
            this.mPath = path;
            setVisibility(new File(path).exists() ? 0 : 8);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String getTypePath(int type) {
        String str;
        String str2 = DayNightUtil.isLight() ? "light/" : "night/";
        if (this.leftOrRight == 1) {
            str = this.mPath + "/" + str2;
        } else {
            str = "/storage/emulated/0/hvac/physiotherapy_type_right/" + str2;
        }
        return str + TYPE_ANIMATE_PATH_MAP.getOrDefault(Integer.valueOf(type), "unknow");
    }

    public void setType(int type) {
        try {
            final String typePath = getTypePath(type);
            String str = typePath + "/animate.json";
            File file = new File(str);
            String str2 = TAG;
            LogUtil.d(str2, "setType, jsonPath:" + str);
            if (!file.exists()) {
                LogUtil.d(str2, "setType, jsonPath not exist");
                return;
            }
            final FileInputStream fileInputStream = new FileInputStream(str);
            setImageAssetDelegate(new ImageAssetDelegate() { // from class: com.geely.hvac.component.SeatPhysiotherapyAnimate.2
                @Override // com.airbnb.lottie.ImageAssetDelegate
                public Bitmap fetchBitmap(LottieImageAsset asset) {
                    try {
                        return BitmapFactory.decodeFile(typePath + "/images/" + asset.getFileName());
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                }
            });
            LottieComposition.Factory.fromInputStream(fileInputStream, new OnCompositionLoadedListener() { // from class: com.geely.hvac.component.SeatPhysiotherapyAnimate.3
                @Override // com.airbnb.lottie.OnCompositionLoadedListener
                public void onCompositionLoaded(LottieComposition composition) {
                    SeatPhysiotherapyAnimate.this.setComposition(composition);
                    SeatPhysiotherapyAnimate.this.cancelAnimation();
                    SeatPhysiotherapyAnimate.this.setProgress(0.0f);
                    SeatPhysiotherapyAnimate.this.playAnimation();
                    try {
                        fileInputStream.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
