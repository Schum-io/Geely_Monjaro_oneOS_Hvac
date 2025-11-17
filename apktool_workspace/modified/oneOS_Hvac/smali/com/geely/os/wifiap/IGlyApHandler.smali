.class public interface abstract Lcom/geely/os/wifiap/IGlyApHandler;
.super Ljava/lang/Object;
.source "IGlyApHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_AP_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final AP_DEFAULT_NAME:Ljava/lang/String; = "Geely"

.field public static final AP_DEFAULT_PSW:Ljava/lang/String; = "12345678"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd


# virtual methods
.method public abstract addToBlacklist(Lcom/geely/os/wifiap/GlyApClient;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation
.end method

.method public abstract disableWifiAp()V
.end method

.method public abstract enableWifiAp()V
.end method

.method public abstract getBlacklist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wifiap/GlyApClient;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxConnectCount()I
.end method

.method public abstract getWifiApClients()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wifiap/GlyApClient;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiApHost()Lcom/geely/os/wifiap/GlyApHost;
.end method

.method public abstract init()V
.end method

.method public abstract isDualBandSupported()Z
.end method

.method public abstract isWifiApOpen()Z
.end method

.method public abstract isWifiApSupport()Z
.end method

.method public abstract registerApCallback(Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;)V
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

.method public abstract removeFromBlackList(Lcom/geely/os/wifiap/GlyApClient;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation
.end method

.method public abstract setWifiApHost(Lcom/geely/os/wifiap/GlyApHost;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation
.end method

.method public abstract unregisterApCallback(Lcom/geely/os/wifiap/IGlyApHandler$OnApClientDeviceChanged;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
