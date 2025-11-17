.class public interface abstract Lcom/geely/os/wifiap/IGlyWifiAp;
.super Ljava/lang/Object;
.source "IGlyWifiAp.java"


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getMaxConnections()I
.end method

.method public abstract getWifiAPHost()Lcom/geely/os/wifiap/IGlyWifiAPHost;
.end method

.method public abstract getWifiApClients()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/wifiap/IGlyWifiApClient;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isWifi5GModeSupported()I
.end method

.method public abstract isWifiAPSupported()I
.end method

.method public abstract isWifiSupported()I
.end method

.method public abstract query5GMode()Z
.end method

.method public abstract registerConnectWatcher(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation
.end method

.method public abstract set5GMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMaxConnections(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public abstract setWifiApClientCallback(Lcom/geely/os/wifiap/IGlyWifiApClientCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterConnectWatcher(Lcom/geely/os/wifiap/IGlyWifiApConnectWatcher;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation
.end method

.method public abstract unsetWifiApClientCallback(Lcom/geely/os/wifiap/IGlyWifiApClientCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
