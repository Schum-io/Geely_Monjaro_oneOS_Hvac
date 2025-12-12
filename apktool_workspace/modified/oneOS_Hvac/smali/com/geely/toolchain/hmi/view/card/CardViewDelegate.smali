.class public interface abstract Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;
.super Ljava/lang/Object;
.source "CardViewDelegate.java"


# virtual methods
.method public abstract getCardBackground()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCardView()Landroid/view/View;
.end method

.method public abstract getPreventCornerOverlap()Z
.end method

.method public abstract getUseCompatPadding()Z
.end method

.method public abstract setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation
.end method

.method public abstract setMinWidthHeightInternal(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "i2"
        }
    .end annotation
.end method

.method public abstract setShadowPadding(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "i2",
            "i3",
            "i4"
        }
    .end annotation
.end method
