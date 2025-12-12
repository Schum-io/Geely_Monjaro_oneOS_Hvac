.class public interface abstract Lcom/geely/os/wifiap/IGlyWifiApClientCallback;
.super Ljava/lang/Object;
.source "IGlyWifiApClientCallback.java"


# virtual methods
.method public abstract onWifiApClientChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iApClients"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/os/wifiap/IGlyWifiApClient;",
            ">;)V"
        }
    .end annotation
.end method
