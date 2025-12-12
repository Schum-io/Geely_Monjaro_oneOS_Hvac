.class public interface abstract Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;
.super Ljava/lang/Object;
.source "AutoFanLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/AutoFanLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFanLevelChangeListener"
.end annotation


# virtual methods
.method public abstract onProgressChanged(Lcom/geely/hvac/component/AutoFanLevel;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "manualFanLevel",
            "progress",
            "fromUser"
        }
    .end annotation
.end method

.method public abstract onStartTrackingTouch(Lcom/geely/hvac/component/AutoFanLevel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manualFanLevel"
        }
    .end annotation
.end method

.method public abstract onStopTrackingTouch(Lcom/geely/hvac/component/AutoFanLevel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manualFanLevel"
        }
    .end annotation
.end method
