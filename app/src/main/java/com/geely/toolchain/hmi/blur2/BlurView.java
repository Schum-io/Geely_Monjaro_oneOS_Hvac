package com.geely.toolchain.hmi.blur2;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import com.geely.toolchain.hmi.R;

/* loaded from: classes.dex */
public class BlurView extends FrameLayout {
    private static final String TAG = "BlurView";
    private float blur2CornerRadius;
    BlurController blurController;

    public BlurView(Context context) {
        super(context);
        this.blurController = new NoOpController();
        init(null, 0);
    }

    public BlurView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.blurController = new NoOpController();
        init(attrs, 0);
    }

    public BlurView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.blurController = new NoOpController();
        init(attrs, defStyleAttr);
    }

    private void init(AttributeSet attrs, int defStyleAttr) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.BlurView, defStyleAttr, 0);
        setOverlayColor(typedArrayObtainStyledAttributes.getColor(R.styleable.BlurView_blurOverlayColor, 0));
        setBlurRadius(typedArrayObtainStyledAttributes.getFloat(R.styleable.BlurView_blur2Radius, 16.0f));
        this.blur2CornerRadius = typedArrayObtainStyledAttributes.getFloat(R.styleable.BlurView_blur2CornerRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.blurController.draw(canvas)) {
            super.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.blurController.updateBlurViewSize();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.blurController.setBlurAutoUpdate(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isHardwareAccelerated()) {
            Log.e(TAG, "BlurView can't be used in not hardware-accelerated window!");
        } else {
            this.blurController.setBlurAutoUpdate(true);
        }
    }

    public void setRoot(ViewGroup rootView) {
        Drawable background = rootView.getBackground();
        if (getContext() != null && (getContext() instanceof Activity)) {
            background = ((Activity) getContext()).getWindow().getDecorView().getBackground();
        }
        setupWith(rootView).setFrameClearDrawable(background);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.geely.toolchain.hmi.blur2.BlurView.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), BlurView.this.blur2CornerRadius);
            }
        });
        setClipToOutline(true);
    }

    public BlurViewFacade setupWith(ViewGroup rootView) {
        this.blurController.destroy();
        PreDrawBlurController preDrawBlurController = new PreDrawBlurController(this, rootView, new RenderScriptBlur(rootView.getContext(), this.blur2CornerRadius));
        this.blurController = preDrawBlurController;
        return preDrawBlurController;
    }

    public BlurViewFacade setBlurRadius(float radius) {
        return this.blurController.setBlurRadius(radius);
    }

    public BlurViewFacade setOverlayColor(int overlayColor) {
        return this.blurController.setOverlayColor(overlayColor);
    }

    public BlurViewFacade setBlurAutoUpdate(boolean enabled) {
        return this.blurController.setBlurAutoUpdate(enabled);
    }

    public BlurViewFacade setBlurEnabled(boolean enabled) {
        return this.blurController.setBlurEnabled(enabled);
    }
}
