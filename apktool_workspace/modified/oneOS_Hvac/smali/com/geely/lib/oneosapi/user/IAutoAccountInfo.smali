.class public interface abstract Lcom/geely/lib/oneosapi/user/IAutoAccountInfo;
.super Ljava/lang/Object;
.source "IAutoAccountInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/user/IAutoAccountInfo$Stub;,
        Lcom/geely/lib/oneosapi/user/IAutoAccountInfo$Default;
    }
.end annotation


# virtual methods
.method public abstract getAutoUserAvatar()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAutoUserId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAutoUserName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isBindingSuccess()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
