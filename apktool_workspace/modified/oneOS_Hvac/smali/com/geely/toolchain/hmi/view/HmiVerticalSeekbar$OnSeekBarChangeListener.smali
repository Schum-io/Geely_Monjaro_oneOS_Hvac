.class public interface abstract Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;
.super Ljava/lang/Object;
.source "HmiVerticalSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSeekBarChangeListener"
.end annotation


# virtual methods
.method public abstract onProgressChanged(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seekbar",
            "progress"
        }
    .end annotation
.end method

.method public abstract onStartTrackingTouch(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekbar"
        }
    .end annotation
.end method

.method public abstract onStopTrackingTouch(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekbar"
        }
    .end annotation
.end method
