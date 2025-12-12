.class public interface abstract Lcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback;
.super Ljava/lang/Object;
.source "ITryConnectCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback$Stub;,
        Lcom/geely/lib/oneosapi/linkmanager/ITryConnectCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract denied()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract permitted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
