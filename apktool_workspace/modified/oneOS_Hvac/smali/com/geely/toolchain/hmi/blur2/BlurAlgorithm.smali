.class public interface abstract Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;
.super Ljava/lang/Object;
.source "BlurAlgorithm.java"


# virtual methods
.method public abstract blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "blurRadius"
        }
    .end annotation
.end method

.method public abstract canModifyBitmap()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
.end method

.method public abstract render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "bitmap"
        }
    .end annotation
.end method

.method public abstract scaleFactor()F
.end method
