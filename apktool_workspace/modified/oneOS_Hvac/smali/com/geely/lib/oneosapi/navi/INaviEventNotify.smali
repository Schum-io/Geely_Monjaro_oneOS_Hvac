.class public interface abstract Lcom/geely/lib/oneosapi/navi/INaviEventNotify;
.super Ljava/lang/Object;
.source "INaviEventNotify.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/INaviEventNotify$Stub;,
        Lcom/geely/lib/oneosapi/navi/INaviEventNotify$Default;
    }
.end annotation


# virtual methods
.method public abstract getUID()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNaviNotify(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
