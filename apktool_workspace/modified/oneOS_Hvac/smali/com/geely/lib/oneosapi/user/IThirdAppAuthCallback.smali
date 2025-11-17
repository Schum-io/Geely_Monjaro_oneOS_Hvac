.class public interface abstract Lcom/geely/lib/oneosapi/user/IThirdAppAuthCallback;
.super Ljava/lang/Object;
.source "IThirdAppAuthCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/user/IThirdAppAuthCallback$Stub;,
        Lcom/geely/lib/oneosapi/user/IThirdAppAuthCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract isThirdAppAuthorized(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completeMobile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
