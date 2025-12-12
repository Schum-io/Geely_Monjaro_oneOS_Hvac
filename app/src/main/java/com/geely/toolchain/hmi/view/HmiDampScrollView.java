package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.TranslateAnimation;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public class HmiDampScrollView extends NestedScrollView {
    private View innerView;
    private float mLastY;
    private Rect normal;

    public HmiDampScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.normal = new Rect();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        initView();
        super.onFinishInflate();
    }

    private void initView() {
        setOverScrollMode(2);
        if (getChildAt(0) != null) {
            this.innerView = getChildAt(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    @Override // androidx.core.widget.NestedScrollView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            int r0 = r9.getAction()
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L69
            r1 = 2
            if (r0 == r1) goto Lf
            r1 = 3
            if (r0 == r1) goto L69
            goto L7b
        Lf:
            float r0 = r9.getY()
            float r3 = r8.mLastY
            float r3 = r3 - r0
            int r3 = (int) r3
            boolean r4 = r8.isNeedTranslate()
            if (r4 == 0) goto L66
            float r4 = r8.mLastY
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 == 0) goto L66
            android.graphics.Rect r2 = r8.normal
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L48
            android.graphics.Rect r2 = r8.normal
            android.view.View r4 = r8.innerView
            int r4 = r4.getLeft()
            android.view.View r5 = r8.innerView
            int r5 = r5.getTop()
            android.view.View r6 = r8.innerView
            int r6 = r6.getRight()
            android.view.View r7 = r8.innerView
            int r7 = r7.getBottom()
            r2.set(r4, r5, r6, r7)
        L48:
            android.view.View r2 = r8.innerView
            int r4 = r2.getLeft()
            android.view.View r5 = r8.innerView
            int r5 = r5.getTop()
            int r3 = r3 / r1
            int r5 = r5 - r3
            android.view.View r1 = r8.innerView
            int r1 = r1.getRight()
            android.view.View r6 = r8.innerView
            int r6 = r6.getBottom()
            int r6 = r6 - r3
            r2.layout(r4, r5, r1, r6)
        L66:
            r8.mLastY = r0
            goto L7b
        L69:
            android.graphics.Rect r0 = r8.normal
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L7b
            r8.planAnimation()
            android.graphics.Rect r0 = r8.normal
            r0.setEmpty()
            r8.mLastY = r2
        L7b:
            boolean r9 = super.onTouchEvent(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.toolchain.hmi.view.HmiDampScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void planAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, this.innerView.getTop(), this.normal.top);
        translateAnimation.setDuration(200L);
        this.innerView.startAnimation(translateAnimation);
        this.innerView.layout(this.normal.left, this.normal.top, this.normal.right, this.normal.bottom);
    }

    public boolean isNeedTranslate() {
        int measuredHeight = this.innerView.getMeasuredHeight() - getHeight();
        int scrollY = getScrollY();
        return scrollY == 0 || scrollY == measuredHeight;
    }
}
