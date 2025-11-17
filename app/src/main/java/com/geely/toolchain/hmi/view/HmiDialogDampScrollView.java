package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class HmiDialogDampScrollView extends HmiDampScrollView {
    private static final String TAG = "HmiDialogDampScrollView";
    private boolean isScrolledToBottom;
    private boolean isScrolledToTop;
    private int mMaxHeight;
    private ISmartScrollChangedListener mSmartScrollChangedListener;
    public ScrollViewListener scrollViewListener;

    public interface ISmartScrollChangedListener {
        void onBottom();

        void onMiddle();

        void onTop();
    }

    public interface ScrollViewListener {
        void onScrollChanged(HmiDialogDampScrollView scrollView, int x, int y, int oldx, int oldy);
    }

    public HmiDialogDampScrollView(Context context) {
        this(context, null);
    }

    public HmiDialogDampScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.isScrolledToTop = true;
        this.isScrolledToBottom = false;
        this.scrollViewListener = null;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiDialogDampScrollView);
        this.mMaxHeight = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiDialogDampScrollView_hmiMaxHeight, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setScanScrollChangedListener(ISmartScrollChangedListener smartScrollChangedListener) {
        this.mSmartScrollChangedListener = smartScrollChangedListener;
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        super.onOverScrolled(scrollX, scrollY, clampedX, clampedY);
        if (scrollY == 0) {
            this.isScrolledToTop = clampedY;
            this.isScrolledToBottom = false;
            Log.i(TAG, "onOverScrolled isScrolledToTop:" + this.isScrolledToTop);
        } else {
            this.isScrolledToTop = false;
            this.isScrolledToBottom = clampedY;
            Log.i(TAG, "onOverScrolled isScrolledToBottom:" + this.isScrolledToBottom);
        }
        notifyScrollChangedListeners();
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        ScrollViewListener scrollViewListener = this.scrollViewListener;
        if (scrollViewListener != null) {
            scrollViewListener.onScrollChanged(this, l, t, oldl, oldt);
        }
        if (Build.VERSION.SDK_INT < 9) {
            if (getScrollY() == 0) {
                this.isScrolledToTop = true;
                this.isScrolledToBottom = false;
                Log.i(TAG, "onScrollChanged isScrolledToTop:" + this.isScrolledToTop);
            } else if (((getScrollY() + getHeight()) - getPaddingTop()) - getPaddingBottom() == getChildAt(0).getHeight()) {
                this.isScrolledToBottom = true;
                this.isScrolledToTop = false;
                Log.i(TAG, "onScrollChanged isScrolledToBottom:" + this.isScrolledToBottom);
            } else {
                this.isScrolledToTop = false;
                this.isScrolledToBottom = false;
            }
            notifyScrollChangedListeners();
        }
    }

    private void notifyScrollChangedListeners() {
        if (this.isScrolledToTop) {
            ISmartScrollChangedListener iSmartScrollChangedListener = this.mSmartScrollChangedListener;
            if (iSmartScrollChangedListener != null) {
                iSmartScrollChangedListener.onTop();
                return;
            }
            return;
        }
        if (this.isScrolledToBottom) {
            ISmartScrollChangedListener iSmartScrollChangedListener2 = this.mSmartScrollChangedListener;
            if (iSmartScrollChangedListener2 != null) {
                iSmartScrollChangedListener2.onBottom();
                return;
            }
            return;
        }
        ISmartScrollChangedListener iSmartScrollChangedListener3 = this.mSmartScrollChangedListener;
        if (iSmartScrollChangedListener3 != null) {
            iSmartScrollChangedListener3.onMiddle();
        }
    }

    public boolean isScrolledToTop() {
        return this.isScrolledToTop;
    }

    public boolean isScrolledToBottom() {
        return this.isScrolledToBottom;
    }

    @Override // androidx.core.widget.NestedScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, MeasureSpec.makeMeasureSpec(this.mMaxHeight, Integer.MIN_VALUE));
    }

    public void setHmiMaxHeight(int maxHeight) {
        this.mMaxHeight = maxHeight;
    }

    public int getHmiMaxHeight() {
        return this.mMaxHeight;
    }

    public void setScrollViewListener(ScrollViewListener scrollViewListener) {
        this.scrollViewListener = scrollViewListener;
    }
}
