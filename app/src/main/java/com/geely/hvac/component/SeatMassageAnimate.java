package com.geely.hvac.component;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.livewallpager.lotties.ImageAssetDelegate;
import com.geely.livewallpager.lotties.LottieAnimationView;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.LottieImageAsset;
import com.geely.livewallpager.lotties.OnCompositionLoadedListener;
import com.geely.os.car.GlyCarPropertyValue;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class SeatMassageAnimate extends LottieAnimationView {
    private static final String TAG = "SeatMassageAnimate";
    public static final Map<Integer, String> TYPE_ANIMATE_PATH_MAP = new HashMap() { // from class: com.geely.hvac.component.SeatMassageAnimate.1
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1), "spa");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2), "cat");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3), "snake");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4), "vortex");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5), "ladder");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6), "bamboo");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_7), "blend");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_8), "annular");
        }
    };
    private int leftOrRight;
    private String mPath;

    public SeatMassageAnimate(Context context) {
        super(context);
    }

    public SeatMassageAnimate(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public SeatMassageAnimate(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public static void bindMassageAnimateType(SeatMassageAnimate v, int type) {
        LogUtil.d(TAG, "bindMassageAnimateType v:" + v + ",type:" + type);
        v.setType(type);
    }

    public static void bindSeatMassageAnimateRes(SeatMassageAnimate v, String path) {
        LogUtil.d(TAG, "bindSeatMassageAnimateRes v:" + v + ",path:" + path);
        v.setPath(path);
    }

    public static void bindSeatMassageAnimateLeftOrRight(SeatMassageAnimate v, int zone) {
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
            str = "/storage/emulated/0/hvac/massage_type_right/" + str2;
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
            setImageAssetDelegate(new ImageAssetDelegate() { // from class: com.geely.hvac.component.SeatMassageAnimate.2
                @Override // com.geely.livewallpager.lotties.ImageAssetDelegate
                public Bitmap fetchBitmap(LottieImageAsset asset) {
                    try {
                        return BitmapFactory.decodeFile(typePath + "/images/" + asset.getFileName());
                    } catch (Exception e) {
                        e.printStackTrace();
                        return null;
                    }
                }
            });
            LottieComposition.Factory.fromInputStream(fileInputStream, new OnCompositionLoadedListener() { // from class: com.geely.hvac.component.SeatMassageAnimate.3
                @Override // com.geely.livewallpager.lotties.OnCompositionLoadedListener
                public void onCompositionLoaded(LottieComposition composition) {
                    SeatMassageAnimate.this.setComposition(composition);
                    SeatMassageAnimate.this.cancelAnimation();
                    SeatMassageAnimate.this.setProgress(0.0f);
                    SeatMassageAnimate.this.playAnimation();
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
