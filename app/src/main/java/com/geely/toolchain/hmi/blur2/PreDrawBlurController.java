package com.geely.toolchain.hmi.blur2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.geely.toolchain.hmi.blur2.SizeScaler;

/* loaded from: classes.dex */
final class PreDrawBlurController implements BlurController {
    private static final String TAG = "PreDrawBlurController";
    static final int TRANSPARENT = 0;
    private final BlurAlgorithm blurAlgorithm;
    final BlurView blurView;
    private Drawable frameClearDrawable;
    private boolean initialized;
    private Bitmap internalBitmap;
    private BlurViewCanvas internalCanvas;
    private int overlayColor;
    private final ViewGroup rootView;
    private float blurRadius = 16.0f;
    private final int[] rootLocation = new int[2];
    private final int[] blurViewLocation = new int[2];
    private final ViewTreeObserver.OnPreDrawListener drawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.geely.toolchain.hmi.blur2.-$$Lambda$PreDrawBlurController$uC_DR5bSNjn_Dn_Tf9XjWMgyH_s
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            return PreDrawBlurController.this.lambda$new$0$PreDrawBlurController();
        }
    };
    private boolean blurEnabled = true;

    public /* synthetic */ boolean lambda$new$0$PreDrawBlurController() {
        updateBlur();
        return true;
    }

    PreDrawBlurController(BlurView blurView, ViewGroup rootView, BlurAlgorithm algorithm) {
        this.rootView = rootView;
        this.blurView = blurView;
        this.blurAlgorithm = algorithm;
        init(blurView.getMeasuredWidth(), blurView.getMeasuredHeight());
    }

    void init(int measuredWidth, int measuredHeight) {
        setBlurAutoUpdate(true);
        SizeScaler sizeScaler = new SizeScaler(this.blurAlgorithm.scaleFactor());
        if (sizeScaler.isZeroSized(measuredWidth, measuredHeight)) {
            this.blurView.setWillNotDraw(true);
            return;
        }
        this.blurView.setWillNotDraw(false);
        SizeScaler.Size sizeScale = sizeScaler.scale(measuredWidth, measuredHeight);
        this.internalBitmap = Bitmap.createBitmap(sizeScale.width, sizeScale.height, this.blurAlgorithm.getSupportedBitmapConfig());
        this.internalCanvas = new BlurViewCanvas(this.internalBitmap);
        this.initialized = true;
        updateBlur();
    }

    void updateBlur() {
        if (this.blurEnabled && this.initialized) {
            Drawable drawable = this.frameClearDrawable;
            if (drawable == null) {
                this.internalBitmap.eraseColor(0);
            } else {
                drawable.draw(this.internalCanvas);
            }
            this.internalCanvas.save();
            setupInternalCanvasMatrix();
            this.rootView.draw(this.internalCanvas);
            this.internalCanvas.restore();
            blurAndSave();
        }
    }

    private void setupInternalCanvasMatrix() {
        this.rootView.getLocationOnScreen(this.rootLocation);
        this.blurView.getLocationOnScreen(this.blurViewLocation);
        int[] iArr = this.blurViewLocation;
        int i = iArr[0];
        int[] iArr2 = this.rootLocation;
        int i2 = i - iArr2[0];
        int i3 = iArr[1] - iArr2[1];
        float height = this.blurView.getHeight() / this.internalBitmap.getHeight();
        float width = this.blurView.getWidth() / this.internalBitmap.getWidth();
        this.internalCanvas.translate((-i2) / width, (-i3) / height);
        this.internalCanvas.scale(1.0f / width, 1.0f / height);
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurController
    public boolean draw(Canvas canvas) {
        if (this.blurEnabled && this.initialized) {
            if (canvas instanceof BlurViewCanvas) {
                return false;
            }
            float width = this.blurView.getWidth() / this.internalBitmap.getWidth();
            canvas.save();
            canvas.scale(width, this.blurView.getHeight() / this.internalBitmap.getHeight());
            this.blurAlgorithm.render(canvas, this.internalBitmap);
            canvas.restore();
            int i = this.overlayColor;
            if (i != 0) {
                canvas.drawColor(i);
            }
        }
        return true;
    }

    private void blurAndSave() {
        this.internalBitmap = this.blurAlgorithm.blur(this.internalBitmap, this.blurRadius);
        if (this.blurAlgorithm.canModifyBitmap()) {
            return;
        }
        this.internalCanvas.setBitmap(this.internalBitmap);
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurController
    public void updateBlurViewSize() {
        init(this.blurView.getMeasuredWidth(), this.blurView.getMeasuredHeight());
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurController
    public void destroy() {
        setBlurAutoUpdate(false);
        this.blurAlgorithm.destroy();
        this.initialized = false;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setBlurRadius(float radius) {
        this.blurRadius = radius;
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setFrameClearDrawable(Drawable frameClearDrawable) {
        this.frameClearDrawable = frameClearDrawable;
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setBlurEnabled(boolean enabled) {
        this.blurEnabled = enabled;
        setBlurAutoUpdate(enabled);
        this.blurView.invalidate();
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setBlurAutoUpdate(final boolean enabled) {
        this.rootView.getViewTreeObserver().removeOnPreDrawListener(this.drawListener);
        if (enabled) {
            this.rootView.getViewTreeObserver().addOnPreDrawListener(this.drawListener);
        }
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setOverlayColor(int overlayColor) {
        if (this.overlayColor != overlayColor) {
            this.overlayColor = overlayColor;
            this.blurView.invalidate();
        }
        return this;
    }
}
