package com.geely.hvac.component;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.policy.IGlyPolicy;
import com.geely.os.policy.IGlyWindowManagerPolicy;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class Toast {
    private static String TAG = "Toast";
    private static IGlyPolicy mIGlyPolicy = null;
    private static int mWindowType;
    private Context mContext;
    private View mView;
    private boolean mHasShow = false;
    private boolean mHasCancel = false;
    private int mXOffset = 0;
    private int mYOffset = 0;
    private int mGravity = 17;
    private int mDuration = 3000;
    private Runnable mRunnable = new Runnable() { // from class: com.geely.hvac.component.Toast.1
        @Override // java.lang.Runnable
        public void run() {
            Toast.this.cancel();
        }
    };

    static {
        IGlyPolicy iGlyPolicy = null;
        mWindowType = iGlyPolicy.getWindowManagerPolicy().getWindowTypeByCode(IGlyWindowManagerPolicy.CODE_SWIPE_FROM_BOTTOM_VIEW);
        LogUtil.d(TAG, "Toast static, mWindowType:" + mWindowType);
    }

    public Toast(Context context) {
        this.mContext = context;
    }

    public void cancel() {
        Executor.MAIN.post(new Runnable() { // from class: com.geely.hvac.component.-$$Lambda$Toast$dvhNojzjQYKVTKxRfKLfdSgzAvs
            @Override // java.lang.Runnable
            public final void run() {
                lambda$cancel$0$Toast();
            }
        });
    }

    public /* synthetic */ void lambda$cancel$0$Toast() {
        if (!this.mHasShow) {
            LogUtil.d(TAG, "not show return");
            return;
        }
        if (this.mHasCancel) {
            LogUtil.d(TAG, "already canceled, return");
            return;
        }
        this.mHasCancel = true;
        try {
            ((WindowManager) this.mContext.getSystemService("window")).removeView(this.mView);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setGravity(int gravity, int xOffset, int yOffset) {
        this.mGravity = gravity;
        this.mXOffset = xOffset;
        this.mYOffset = yOffset;
    }

    public void setDuration(int duration) {
        this.mDuration = duration;
    }

    public void setView(View v) {
        this.mView = v;
    }

    public void show() {
        Executor.MAIN.post(new Runnable() { // from class: com.geely.hvac.component.-$$Lambda$Toast$-TvBUnJTcj4Hba6zub5kOKEuGwU
            @Override // java.lang.Runnable
            public final void run() {
                lambda$show$2$Toast();
            }
        });
    }

    public /* synthetic */ void lambda$show$2$Toast() {
        if (this.mView == null || this.mHasShow) {
            return;
        }
        this.mHasShow = true;
        LogUtil.d(TAG, "windowType:" + mWindowType);
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.type = mWindowType + 1;
        layoutParams.format = -3;
        layoutParams.flags = 159646792;
        layoutParams.flags &= -17;
        layoutParams.systemUiVisibility |= Integer.MIN_VALUE;
        layoutParams.packageName = this.mContext.getPackageName();
        layoutParams.gravity = this.mGravity;
        layoutParams.x = this.mXOffset;
        layoutParams.y = this.mYOffset;
        windowManager.addView(this.mView, layoutParams);
        this.mView.setOnClickListener(new View.OnClickListener() { // from class: com.geely.hvac.component.-$$Lambda$Toast$cqW7C-XGTrJBqS53BXSr5Dnedr4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                lambda$show$1$Toast(view);
            }
        });
        Executor.MAIN.postDelayed(this.mRunnable, this.mDuration);
    }

    public /* synthetic */ void lambda$show$1$Toast(View view) {
        Executor.MAIN.removeCallbacks(this.mRunnable);
        cancel();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
