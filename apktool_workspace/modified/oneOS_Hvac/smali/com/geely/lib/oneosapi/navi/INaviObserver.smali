.class public interface abstract Lcom/geely/lib/oneosapi/navi/INaviObserver;
.super Ljava/lang/Object;
.source "INaviObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/INaviObserver$Stub;,
        Lcom/geely/lib/oneosapi/navi/INaviObserver$Default;
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

.method public abstract onNaviAPICallback(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbackModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
