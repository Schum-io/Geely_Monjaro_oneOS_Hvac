.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;
.super Ljava/lang/Object;
.source "QueryUsbMediaListener.java"


# virtual methods
.method public abstract onMediaQueryFinished(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "info"
        }
    .end annotation
.end method

.method public abstract onMediaQueryStarted(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "info"
        }
    .end annotation
.end method
