.class public interface abstract Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;
.super Ljava/lang/Object;
.source "IGestureEventNotifyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback$Stub;,
        Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback$Default;
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

.method public abstract onGestureNotify(Lcom/geely/lib/oneosapi/gesture/GestureModel;)V
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
