package com.geely.hvac.psd.component;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import com.geely.hvac.R;
import com.geely.os.bt.GlyBtDef;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.Objects;

/* loaded from: classes.dex */
public class GlyRadioGroup extends LinearLayout {
    private GlyOnCheckedChangeListener mGlyOnCheckedChangeListener;
    private int mLastSelectIndex;
    private final OnClickListener mOnRadioButtonClickListener;
    private Paint mPaint;
    private Paint mPaintBg;
    private float mPercent;
    private long mRgAnimDuration;
    private int mRgBackgroundColor;
    private int mRgButtonColor;
    private float mRgCorner;
    private int mRgSeparateLineColor;
    private float mRgSeparateLineLength;
    private int mRgShadeColor;
    private int mSelectIndex;

    public interface GlyOnCheckedChangeListener {
        void onCheckedChanged(GlyRadioGroup glyRadioGroup, int checkedId);
    }

    public void setOnCheckedChangeListener(GlyOnCheckedChangeListener glyRadioGroupSelectListener) {
        this.mGlyOnCheckedChangeListener = glyRadioGroupSelectListener;
    }

    public /* synthetic */ void lambda$new$1$GlyRadioGroup(final View view) {
        if (view.isSelected()) {
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        int i = 0;
        int childCount = getChildCount();
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (getChildAt(i) == view) {
                setSelectIndex(i, true);
                postDelayed(() -> lambda$new$0$GlyRadioGroup(view), this.mRgAnimDuration);
                break;
            }
            i++;
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$new$0$GlyRadioGroup(View view) {
        GlyOnCheckedChangeListener glyOnCheckedChangeListener = this.mGlyOnCheckedChangeListener;
        if (glyOnCheckedChangeListener != null) {
            glyOnCheckedChangeListener.onCheckedChanged(this, view.getId());
        }
    }

    public GlyRadioGroup(Context context) {
        super(context);
        this.mLastSelectIndex = 0;
        this.mSelectIndex = -1;
        this.mRgAnimDuration = 300L;
        this.mOnRadioButtonClickListener = this::lambda$new$1$GlyRadioGroup;
        init();
    }

    public GlyRadioGroup(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mLastSelectIndex = 0;
        this.mSelectIndex = -1;
        this.mRgAnimDuration = 300L;
        this.mOnRadioButtonClickListener = this::lambda$new$1$GlyRadioGroup;
        initAttrs(attrs);
        init();
    }

    public GlyRadioGroup(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mLastSelectIndex = 0;
        this.mSelectIndex = -1;
        this.mRgAnimDuration = 300L;
        this.mOnRadioButtonClickListener = this::lambda$new$1$GlyRadioGroup;
        initAttrs(attrs);
        init();
    }

    private void initAttrs(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.GlyRadioGroup);
        this.mRgCorner = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        this.mRgBackgroundColor = typedArrayObtainStyledAttributes.getColor(1, 0);
        this.mRgButtonColor = typedArrayObtainStyledAttributes.getColor(2, 0);
        this.mRgShadeColor = typedArrayObtainStyledAttributes.getColor(7, 0);
        this.mRgSeparateLineLength = typedArrayObtainStyledAttributes.getDimension(6, 0.0f);
        this.mRgSeparateLineColor = typedArrayObtainStyledAttributes.getColor(5, 0);
        int color = typedArrayObtainStyledAttributes.getColor(4, -1);
        this.mSelectIndex = color;
        this.mLastSelectIndex = color;
        this.mRgAnimDuration = typedArrayObtainStyledAttributes.getInt(0, GlyBtDef.BT_STATE_OFF);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void init() {
        setBackgroundColor(0);
        this.mPaintBg = new Paint(1);
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setColor(this.mRgButtonColor);
        this.mPaint.setShadowLayer(2.0f, 0.0f, 0.0f, this.mRgShadeColor);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mPaintBg.setColor(this.mRgBackgroundColor);
        float width = getWidth();
        float height = getHeight();
        float f = this.mRgCorner;
        canvas.drawRoundRect(0.0f, 0.0f, width, height, f, f, this.mPaintBg);
        if (getOrientation() == 1) {
            drawVertical(canvas);
        } else {
            drawHorizontal(canvas);
        }
    }

    private void drawHorizontal(Canvas canvas) {
        int i;
        int i2;
        int childCount = getChildCount();
        if (childCount <= 0 || (i = this.mSelectIndex) < 0 || i >= childCount) {
            return;
        }
        this.mPaintBg.setColor(this.mRgSeparateLineColor);
        int width = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            width += getChildAt(i3).getWidth();
            if ((this.mPercent != 1.0f || ((i2 = this.mSelectIndex) != i3 && i2 - 1 != i3)) && i3 < childCount - 1) {
                float f = width;
                canvas.drawRect(f - 0.5f, (getHeight() / 2.0f) - (this.mRgSeparateLineLength / 2.0f), f + 0.5f, (getHeight() / 2.0f) + (this.mRgSeparateLineLength / 2.0f), this.mPaintBg);
            }
        }
        View lastChild = getChildAt(this.mLastSelectIndex);
        View currentChild = getChildAt(this.mSelectIndex);
        if ((currentChild instanceof GlyRadioButton) && (lastChild instanceof GlyRadioButton)) {
            float left = lastChild.getLeft() + ((currentChild.getLeft() - lastChild.getLeft()) * this.mPercent) + 1.0f;
            float top = lastChild.getTop() + ((currentChild.getTop() - lastChild.getTop()) * this.mPercent) + 1.0f;
            float right = (lastChild.getRight() + ((currentChild.getRight() - lastChild.getRight()) * this.mPercent)) - 1.0f;
            float bottom = (lastChild.getBottom() + ((currentChild.getBottom() - lastChild.getBottom()) * this.mPercent)) - 1.0f;
            float f2 = this.mRgCorner;
            canvas.drawRoundRect(left, top, right, bottom, f2, f2, this.mPaint);
        }
    }

    private void drawVertical(Canvas canvas) {
        int i;
        int i2;
        int childCount = getChildCount();
        if (childCount <= 0 || (i = this.mSelectIndex) < 0 || i >= childCount) {
            return;
        }
        this.mPaintBg.setColor(this.mRgSeparateLineColor);
        int height = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            height += getChildAt(i3).getHeight();
            if ((this.mPercent != 1.0f || ((i2 = this.mSelectIndex) != i3 && i2 - 1 != i3)) && i3 < childCount - 1) {
                float f = height;
                canvas.drawRect((getWidth() / 2.0f) - (this.mRgSeparateLineLength / 2.0f), f - 0.5f, (this.mRgSeparateLineLength / 2.0f) + (getWidth() / 2.0f), f + 0.5f, this.mPaintBg);
            }
        }
        View lastChild = getChildAt(this.mLastSelectIndex);
        View currentChild = getChildAt(this.mSelectIndex);
        if ((currentChild instanceof GlyRadioButton) && (lastChild instanceof GlyRadioButton)) {
            float left = lastChild.getLeft() + ((currentChild.getLeft() - lastChild.getLeft()) * this.mPercent) + 1.0f;
            float top = lastChild.getTop() + ((currentChild.getTop() - lastChild.getTop()) * this.mPercent) + 1.0f;
            float right = (lastChild.getRight() + ((currentChild.getRight() - lastChild.getRight()) * this.mPercent)) - 1.0f;
            float bottom = (lastChild.getBottom() + ((currentChild.getBottom() - lastChild.getBottom()) * this.mPercent)) - 1.0f;
            float f2 = this.mRgCorner;
            canvas.drawRoundRect(left, top, right, bottom, f2, f2, this.mPaint);
        }
    }

    private void setSelectIndex(int selectIndex, boolean anim) {
        int i = this.mSelectIndex;
        if (selectIndex == i) {
            return;
        }
        this.mLastSelectIndex = i;
        this.mSelectIndex = selectIndex;
        if (selectIndex == -1) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                getChildAt(i2).setSelected(false);
            }
            invalidate();
            return;
        }
        if (i == -1) {
            this.mLastSelectIndex = selectIndex;
        }
        this.mPercent = 0.0f;
        if (isAttachedToWindow() && anim) {
            setPercentAnim(1.0f);
        } else {
            setPercent(1.0f);
        }
        int i3 = 0;
        while (i3 < getChildCount()) {
            View childAt = getChildAt(i3);
            if (childAt instanceof GlyRadioButton) {
                childAt.setSelected(i3 == selectIndex);
            }
            i3++;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (child instanceof GlyRadioButton) {
            child.setOnClickListener(this.mOnRadioButtonClickListener);
            super.addView(child, index, params);
            setSelectIndex(this.mSelectIndex, false);
        }
    }

    public void check(int checkId) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i).getId() == checkId) {
                setSelectIndex(i, false);
                return;
            }
        }
    }

    public void clearCheck() {
        setSelectIndex(-1, false);
    }

    public int getCheckId() {
        int i = this.mSelectIndex;
        if (i < 0 || i >= getChildCount()) {
            return -1;
        }
        return getChildAt(this.mSelectIndex).getId();
    }

    private void setPercent(float percent) {
        this.mPercent = percent;
        invalidate();
    }

    private void setPercentAnim(float percent) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "percent", this.mPercent, percent);
        objectAnimatorOfFloat.setDuration(this.mRgAnimDuration);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.start();
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).setEnabled(enabled);
        }
    }

    public void setEnabledAlpha(boolean enabled) {
        super.setEnabled(enabled);
        setAlpha(enabled ? 1.0f : 0.3f);
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).setEnabled(enabled);
            getChildAt(i).setClickable(enabled);
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        return o != null && getClass() == o.getClass() && ((GlyRadioGroup) o).getId() == getId();
    }

    public int hashCode() {
        return getId() == -1 ? super.hashCode() : Objects.hash(Integer.valueOf(getId()));
    }
}
