.class public interface abstract Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;
.super Ljava/lang/Object;
.source "ImageViewWithUpDown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/ImageViewWithUpDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpDownListener"
.end annotation


# virtual methods
.method public abstract onDown(Landroid/widget/ImageView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation
.end method

.method public abstract onUp(Landroid/widget/ImageView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation
.end method
