package com.geely.toolchain.hmi.blur2;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
class NoOpController implements BlurController {
    @Override // com.geely.toolchain.hmi.blur2.BlurController
    public void destroy() {
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurController
    public boolean draw(Canvas canvas) {
        return true;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setBlurAutoUpdate(boolean enabled) {
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setBlurEnabled(boolean enabled) {
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setBlurRadius(float radius) {
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setFrameClearDrawable(Drawable windowBackground) {
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurViewFacade
    public BlurViewFacade setOverlayColor(int overlayColor) {
        return this;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurController
    public void updateBlurViewSize() {
    }

    NoOpController() {
    }
}
