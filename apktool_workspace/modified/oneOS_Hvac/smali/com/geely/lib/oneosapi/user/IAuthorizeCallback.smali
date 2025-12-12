.class public interface abstract Lcom/geely/lib/oneosapi/user/IAuthorizeCallback;
.super Ljava/lang/Object;
.source "IAuthorizeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/user/IAuthorizeCallback$Stub;,
        Lcom/geely/lib/oneosapi/user/IAuthorizeCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract getAuthorizationStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasAuthorized"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
