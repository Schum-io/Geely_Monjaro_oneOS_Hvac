.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/callback/IScanPathCallback;
.super Ljava/lang/Object;
.source "IScanPathCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/callback/IScanPathCallback$Stub;,
        Lcom/geely/lib/oneosapi/mediacenter/callback/IScanPathCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onScanPathFinish(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "musicFileDataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MusicFileData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
