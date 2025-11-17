.class public interface abstract Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;
.super Ljava/lang/Object;
.source "IGlyWlanHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/wlan/IGlyWlanHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IGlyWlanCallback"
.end annotation


# virtual methods
.method public abstract onScanResultAvailable()V
.end method

.method public abstract onWifiInfoStatusChanged()V
.end method

.method public abstract onWlanStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
