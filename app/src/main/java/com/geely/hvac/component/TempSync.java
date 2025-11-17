package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.UiUtil;

/* loaded from: classes.dex */
public class TempSync extends TextViewWithBg {
    private static final String TAG = "TempSync";
    private int mBgActiveColor;
    private int mBgDisableColor;
    private int mBgUnActiveColor;
    private boolean mEnable;
    private boolean mState;
    private int mTxtActiveColor;
    private int mTxtDisableColor;
    private int mTxtUnActiveColor;

    public static void bindState(TempSync view, boolean state) {
        LogUtil.d(TAG, "bindSyncState, state:" + state);
        view.mState = state;
        view.refresh();
    }

    public static void bindEnable(TempSync view, boolean enable) {
        LogUtil.d(TAG, "bindSyncEnable, state:" + enable);
        view.mEnable = enable;
        view.refresh();
    }

    public static void bind(TempSync view, int txtActiveColor, int txtUnActiveColor, int bgActiveColor, int bgUnActiveColor, int bgDisableColor, int txtDisableColor) {
        LogUtil.d(TAG, "bindSyncColor, txtActiveColor:" + txtActiveColor + ",txtUnActiveColor" + txtUnActiveColor + ",bgActiveColor" + bgActiveColor + ",bgUnActiveColor" + bgUnActiveColor);
        view.mTxtActiveColor = txtActiveColor;
        view.mTxtUnActiveColor = txtUnActiveColor;
        view.mBgActiveColor = bgActiveColor;
        view.mBgUnActiveColor = bgUnActiveColor;
        view.mBgDisableColor = bgDisableColor;
        view.mTxtDisableColor = txtDisableColor;
        view.refresh();
    }

    private void refresh() {
        if (!this.mEnable) {
            UiUtil.setHandTextColor(this, this.mTxtDisableColor);
            setHandBackColor(this.mBgDisableColor);
        } else if (this.mState) {
            UiUtil.setHandTextColor(this, this.mTxtActiveColor);
            setHandBackColor(this.mBgActiveColor);
        } else {
            UiUtil.setHandTextColor(this, this.mTxtUnActiveColor);
            setHandBackColor(this.mBgUnActiveColor);
        }
    }

    public TempSync(Context context) {
        super(context);
        this.mState = false;
        this.mEnable = true;
        this.mTxtActiveColor = 0;
        this.mTxtUnActiveColor = 0;
        this.mBgActiveColor = 0;
        this.mBgUnActiveColor = 0;
        this.mBgDisableColor = 0;
        this.mTxtDisableColor = 0;
    }

    public TempSync(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mState = false;
        this.mEnable = true;
        this.mTxtActiveColor = 0;
        this.mTxtUnActiveColor = 0;
        this.mBgActiveColor = 0;
        this.mBgUnActiveColor = 0;
        this.mBgDisableColor = 0;
        this.mTxtDisableColor = 0;
    }

    public TempSync(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mState = false;
        this.mEnable = true;
        this.mTxtActiveColor = 0;
        this.mTxtUnActiveColor = 0;
        this.mBgActiveColor = 0;
        this.mBgUnActiveColor = 0;
        this.mBgDisableColor = 0;
        this.mTxtDisableColor = 0;
    }
}
