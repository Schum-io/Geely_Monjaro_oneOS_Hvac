.class public interface abstract Lcom/geely/os/wlan/IGlyWlanHandler;
.super Ljava/lang/Object;
.source "IGlyWlanHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;
    }
.end annotation


# static fields
.field public static final EAP:Ljava/lang/String; = "EAP"

.field public static final PSK:Ljava/lang/String; = "PSK"

.field public static final WEP:Ljava/lang/String; = "WEP"

.field public static final WPA:Ljava/lang/String; = "WPA"


# virtual methods
.method public abstract connectEncryptWifi(Lcom/geely/os/wlan/GlyWifiInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wifiInfo",
            "password"
        }
    .end annotation
.end method

.method public abstract connectOpenWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation
.end method

.method public abstract connectSavedWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation
.end method

.method public abstract disconnectWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation
.end method

.method public abstract forgetWifi(Lcom/geely/os/wlan/GlyWifiInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wifiInfo"
        }
    .end annotation
.end method

.method public abstract getAvailableWifiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wlan/GlyWifiInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSavedWifiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wlan/GlyWifiInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isWlanFuncSupported()Z
.end method

.method public abstract isWlanOpen()Z
.end method

.method public abstract registerWlanCallback(Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setWlanOnOff(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation
.end method

.method public abstract startScan()V
.end method

.method public abstract unregisterWlanCallback(Lcom/geely/os/wlan/IGlyWlanHandler$IGlyWlanCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
