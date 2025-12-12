package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;

/* loaded from: classes.dex */
public class HmiSquareToggleButton extends HmiBaseToggleButton {
    private static final String TAG = "HmiToggleButton";
    Rect bounds;
    protected int drawableHeight;
    protected DrawablePositions drawablePosition;
    protected int iconPadding;

    private enum DrawablePositions {
        NONE,
        TOP_AND_BOTTOM,
        TOP,
        BOTTOM
    }

    public HmiSquareToggleButton(Context context) {
        super(context);
        this.bounds = new Rect();
    }

    public HmiSquareToggleButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.bounds = new Rect();
        applyAttributes(attrs);
    }

    public HmiSquareToggleButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.bounds = new Rect();
        applyAttributes(attrs);
    }

    @Override // com.geely.toolchain.hmi.view.HmiBaseToggleButton
    protected void setIconDrawable() {
        setCompoundDrawablesWithIntrinsicBounds((Drawable) null, UiUtil.createCheckDrawableStateList(this.mOnIcon, this.mOffIcon), (Drawable) null, (Drawable) null);
    }

    protected void applyAttributes(AttributeSet attrs) {
        if (this.bounds == null) {
            this.bounds = new Rect();
        }
        this.iconPadding = getCompoundDrawablePadding();
        setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_selector_toggle_button_bg));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        TextPaint paint = getPaint();
        String string = getText().toString();
        paint.getTextBounds(string, 0, string.length(), this.bounds);
        int height = (int) ((getHeight() / 2.0d) - (((this.drawableHeight + (this.iconPadding * (this.drawablePosition == DrawablePositions.TOP_AND_BOTTOM ? 2 : 1))) + this.bounds.height()) / 2.0d));
        setCompoundDrawablePadding((-height) + this.iconPadding);
        int i = AnonymousClass1.$SwitchMap$com$geely$toolchain$hmi$view$HmiSquareToggleButton$DrawablePositions[this.drawablePosition.ordinal()];
        if (i == 1) {
            setPadding(getPaddingLeft(), height, getPaddingRight(), 0);
            return;
        }
        if (i == 2) {
            setPadding(getPaddingLeft(), 0, getPaddingRight(), height);
        } else if (i == 3) {
            setPadding(getPaddingLeft(), height, getPaddingRight(), height);
        } else {
            setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
        }
    }

    /* renamed from: com.geely.toolchain.hmi.view.HmiSquareToggleButton$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$toolchain$hmi$view$HmiSquareToggleButton$DrawablePositions;

        static {
            int[] iArr = new int[DrawablePositions.values().length];
            $SwitchMap$com$geely$toolchain$hmi$view$HmiSquareToggleButton$DrawablePositions = iArr;
            try {
                iArr[DrawablePositions.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$toolchain$hmi$view$HmiSquareToggleButton$DrawablePositions[DrawablePositions.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$toolchain$hmi$view$HmiSquareToggleButton$DrawablePositions[DrawablePositions.TOP_AND_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable left, Drawable top, Drawable right, Drawable bottom) {
        super.setCompoundDrawablesWithIntrinsicBounds(left, top, right, bottom);
        if (top != null && bottom != null) {
            this.drawableHeight = top.getIntrinsicHeight() + bottom.getIntrinsicHeight();
            this.drawablePosition = DrawablePositions.TOP_AND_BOTTOM;
        } else if (top != null) {
            this.drawableHeight = top.getIntrinsicHeight();
            this.drawablePosition = DrawablePositions.TOP;
        } else if (bottom != null) {
            this.drawableHeight = bottom.getIntrinsicHeight();
            this.drawablePosition = DrawablePositions.BOTTOM;
        } else {
            this.drawablePosition = DrawablePositions.NONE;
        }
        requestLayout();
    }
}
