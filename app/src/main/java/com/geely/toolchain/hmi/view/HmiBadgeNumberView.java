package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiBadgeNumberView extends HmiTextView {
    public static final int DEFAULT_TEXT_SIZE = 28;
    public static final int MAX_SHOW_NUMBER = 99;
    public static final String MAX_SHOW_TEXT = "99+";
    public static final String TAG = "HmiBadgeNumberView";
    private int mBadgeNumber;

    public HmiBadgeNumberView(Context context) {
        this(context, null);
    }

    public HmiBadgeNumberView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiBadgeNumberView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiBadgeNumberView);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiBadgeNumberView_hmi_badge_number, 0);
        typedArrayObtainStyledAttributes.recycle();
        setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oneoshmi_badge_view_bg));
        setGravity(17);
        setBadgeNumber(color);
    }

    public void setBadgeNumber(int badgeNumber) {
        Log.i(TAG, "setBadgeNumber: " + badgeNumber);
        this.mBadgeNumber = badgeNumber;
        if (badgeNumber > 99) {
            setText(MAX_SHOW_TEXT);
        } else {
            setText(String.valueOf(badgeNumber));
        }
    }

    public int getBadgeNumber() {
        return this.mBadgeNumber;
    }

    public void setShowBadge(boolean isShow) {
        Log.i(TAG, "isShowBadge: " + isShow);
        setVisibility(isShow ? 0 : 8);
    }
}
