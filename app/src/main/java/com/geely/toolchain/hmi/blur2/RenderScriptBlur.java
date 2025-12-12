package com.geely.toolchain.hmi.blur2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;

/* loaded from: classes.dex */
public final class RenderScriptBlur implements BlurAlgorithm {
    private ScriptIntrinsicBlur blurScript;
    private Allocation outAllocation;
    private final RenderScript renderScript;
    private final Paint paint = new Paint(2);
    private int lastBitmapWidth = -1;
    private int lastBitmapHeight = -1;

    @Override // com.geely.toolchain.hmi.blur2.BlurAlgorithm
    public boolean canModifyBitmap() {
        return true;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurAlgorithm
    public float scaleFactor() {
        return 6.0f;
    }

    public RenderScriptBlur(Context context, float blur2CornerRadius) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.renderScript = RenderScript.createMultiContext(context.getApplicationContext(), RenderScript.ContextType.NORMAL, 0, Build.VERSION.SDK_INT);
        } else {
            this.renderScript = RenderScript.create(context.getApplicationContext());
        }
        RenderScript renderScript = this.renderScript;
        if (renderScript != null) {
            this.blurScript = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
        }
    }

    private boolean canReuseAllocation(Bitmap bitmap) {
        return bitmap.getHeight() == this.lastBitmapHeight && bitmap.getWidth() == this.lastBitmapWidth;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurAlgorithm
    public final Bitmap blur(Bitmap bitmap, float blurRadius) {
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(this.renderScript, bitmap);
        if (!canReuseAllocation(bitmap)) {
            Allocation allocation = this.outAllocation;
            if (allocation != null) {
                allocation.destroy();
            }
            this.outAllocation = Allocation.createTyped(this.renderScript, allocationCreateFromBitmap.getType());
            this.lastBitmapWidth = bitmap.getWidth();
            this.lastBitmapHeight = bitmap.getHeight();
        }
        this.blurScript.setRadius(blurRadius);
        this.blurScript.setInput(allocationCreateFromBitmap);
        this.blurScript.forEach(this.outAllocation);
        this.outAllocation.copyTo(bitmap);
        allocationCreateFromBitmap.destroy();
        return bitmap;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurAlgorithm
    public final void destroy() {
        this.blurScript.destroy();
        this.renderScript.destroy();
        Allocation allocation = this.outAllocation;
        if (allocation != null) {
            allocation.destroy();
        }
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurAlgorithm
    public Bitmap.Config getSupportedBitmapConfig() {
        return Bitmap.Config.ARGB_8888;
    }

    @Override // com.geely.toolchain.hmi.blur2.BlurAlgorithm
    public void render(Canvas canvas, Bitmap bitmap) {
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.paint);
    }
}
