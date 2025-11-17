.class public interface abstract Lcom/geely/lib/oneosapi/theme/IApplyByLauncherCallback;
.super Ljava/lang/Object;
.source "IApplyByLauncherCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/theme/IApplyByLauncherCallback$Stub;,
        Lcom/geely/lib/oneosapi/theme/IApplyByLauncherCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract applyByLauncherCallback(IF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "downLoadProgress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
