.class public interface abstract Lcom/geely/lib/oneosapi/gesture/IGestureManager;
.super Ljava/lang/Object;
.source "IGestureManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/gesture/IGestureManager$Stub;,
        Lcom/geely/lib/oneosapi/gesture/IGestureManager$Default;
    }
.end annotation


# virtual methods
.method public abstract addGestureDetectEventNotify(Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventNotify"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeGestureDetectEventNotify(Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventNotify"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
