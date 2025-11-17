.class Lcom/geely/toolchain/hmi/blur2/NoOpController;
.super Ljava/lang/Object;
.source "NoOpController.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/blur2/BlurController;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-object p0
.end method

.method public setBlurEnabled(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-object p0
.end method

.method public setBlurRadius(F)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowBackground"
        }
    .end annotation

    return-object p0
.end method

.method public setOverlayColor(I)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlayColor"
        }
    .end annotation

    return-object p0
.end method

.method public updateBlurViewSize()V
    .locals 0

    return-void
.end method
