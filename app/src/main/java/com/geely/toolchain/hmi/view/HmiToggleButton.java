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
public class HmiToggleButton extends HmiBaseToggleButton {
    private static final String TAG = "HmiToggleButton";
    Rect bounds;
    protected DrawablePositions drawablePosition;
    protected int drawableWidth;
    protected int iconPadding;

    private enum DrawablePositions {
        NONE,
        LEFT_AND_RIGHT,
        LEFT,
        RIGHT
    }

    public HmiToggleButton(Context context) {
        super(context);
        this.bounds = new Rect();
    }

    public HmiToggleButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.bounds = new Rect();
        applyAttributes(attrs);
    }

    public HmiToggleButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.bounds = new Rect();
        applyAttributes(attrs);
    }

    @Override // com.geely.toolchain.hmi.view.HmiBaseToggleButton
    protected void setIconDrawable() {
        setCompoundDrawablesWithIntrinsicBounds(UiUtil.createCheckDrawableStateList(this.mOnIcon, this.mOffIcon), (Drawable) null, (Drawable) null, (Drawable) null);
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
        if (this.drawablePosition == DrawablePositions.NONE) {
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            setCompoundDrawablesWithIntrinsicBounds(compoundDrawablesRelative[0], compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        paint.getTextBounds(string, 0, string.length(), this.bounds);
        int width = (int) ((getWidth() / 2.0d) - (((this.drawableWidth + (this.iconPadding * (this.drawablePosition == DrawablePositions.LEFT_AND_RIGHT ? 2 : 1))) + this.bounds.width()) / 2.0d));
        setCompoundDrawablePadding((-width) + this.iconPadding);
        int i = AnonymousClass1.$SwitchMap$com$geely$toolchain$hmi$view$HmiToggleButton$DrawablePositions[this.drawablePosition.ordinal()];
        if (i == 1) {
            setPadding(width, getPaddingTop(), 0, getPaddingBottom());
            return;
        }
        if (i == 2) {
            setPadding(0, getPaddingTop(), width, getPaddingBottom());
        } else if (i == 3) {
            setPadding(width, getPaddingTop(), width, getPaddingBottom());
        } else {
            setPadding(0, getPaddingTop(), 0, getPaddingBottom());
        }
    }

    /* renamed from: com.geely.toolchain.hmi.view.HmiToggleButton$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$toolchain$hmi$view$HmiToggleButton$DrawablePositions;

        static {
            int[] iArr = new int[DrawablePositions.values().length];
            $SwitchMap$com$geely$toolchain$hmi$view$HmiToggleButton$DrawablePositions = iArr;
            try {
                iArr[DrawablePositions.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$toolchain$hmi$view$HmiToggleButton$DrawablePositions[DrawablePositions.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$toolchain$hmi$view$HmiToggleButton$DrawablePositions[DrawablePositions.LEFT_AND_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable left, Drawable top, Drawable right, Drawable bottom) {
        super.setCompoundDrawablesWithIntrinsicBounds(left, top, right, bottom);
        if (left != null && right != null) {
            this.drawableWidth = left.getIntrinsicWidth() + right.getIntrinsicWidth();
            this.drawablePosition = DrawablePositions.LEFT_AND_RIGHT;
        } else if (left != null) {
            this.drawableWidth = left.getIntrinsicWidth();
            this.drawablePosition = DrawablePositions.LEFT;
        } else if (right != null) {
            this.drawableWidth = right.getIntrinsicWidth();
            this.drawablePosition = DrawablePositions.RIGHT;
        } else {
            this.drawablePosition = DrawablePositions.NONE;
        }
        requestLayout();
    }
}
