.class public interface abstract Lcom/geely/lib/oneosapi/user/ILaunchLoginResultCallback;
.super Ljava/lang/Object;
.source "ILaunchLoginResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/user/ILaunchLoginResultCallback$Stub;,
        Lcom/geely/lib/oneosapi/user/ILaunchLoginResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onLoginResult(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
