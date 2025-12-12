.class interface abstract Lcom/geely/toolchain/hmi/blur2/BlurController;
.super Ljava/lang/Object;
.source "BlurController.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;


# static fields
.field public static final DEFAULT_BLUR_RADIUS:F = 16.0f

.field public static final DEFAULT_SCALE_FACTOR:F = 6.0f


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation
.end method

.method public abstract updateBlurViewSize()V
.end method
