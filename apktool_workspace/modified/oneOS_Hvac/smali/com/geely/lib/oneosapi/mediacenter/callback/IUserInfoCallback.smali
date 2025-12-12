.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback;
.super Ljava/lang/Object;
.source "IUserInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback$Stub;,
        Lcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onUserInfoResult(IILcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "userInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
