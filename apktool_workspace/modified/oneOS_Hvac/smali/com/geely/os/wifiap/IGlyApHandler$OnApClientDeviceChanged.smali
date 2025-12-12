.class public interface abstract Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;
.super Ljava/lang/Object;
.source "IGlyApHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/wifiap/IGlyApHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnApClientDeviceChanged"
.end annotation


# virtual methods
.method public abstract onApClientDeviceChanged()V
.end method

.method public abstract onApStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract onStartApResult(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method
