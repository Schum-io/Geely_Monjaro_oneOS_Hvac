package com.geely.hvac.utils;

import android.content.Context;
import android.graphics.Typeface;
import com.geely.hvac.R;

/* loaded from: classes.dex */
public class FontManager {
    private final String TAG;
    private Typeface mAlibabaPuhuiMedium;
    private Typeface mAlibabaPuhuiRegular;
    private volatile Object mInitFlag;

    private static class FontManagerHolder {
        private static final FontManager instance = new FontManager();

        private FontManagerHolder() {
        }
    }

    private FontManager() {
        this.TAG = FontManager.class.getSimpleName();
    }

    public static FontManager getInstance() {
        return FontManagerHolder.instance;
    }

    public void init(Context context) {
        synchronized (this) {
            this.mAlibabaPuhuiMedium = context.getResources().getFont(R.font.myinghei_18030_h_c);
            this.mAlibabaPuhuiRegular = context.getResources().getFont(R.font.myinghei_18030_m_c);
            this.mInitFlag = new Object();
            notifyAll();
        }
    }

    private void checkInit() {
        if (this.mInitFlag == null) {
            synchronized (this) {
                while (this.mInitFlag == null) {
                    LogUtil.d(this.TAG, this.TAG + " not init");
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public Typeface getmAlibabaPuhuiMedium() {
        checkInit();
        return this.mAlibabaPuhuiMedium;
    }

    public Typeface getmAlibabaPuhuiRegular() {
        checkInit();
        return this.mAlibabaPuhuiRegular;
    }
}
