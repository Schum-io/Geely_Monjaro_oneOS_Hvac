.class public interface abstract Lcom/geely/lib/oneosapi/recommendation/IRecommendService;
.super Ljava/lang/Object;
.source "IRecommendService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/recommendation/IRecommendService$Stub;,
        Lcom/geely/lib/oneosapi/recommendation/IRecommendService$Default;
    }
.end annotation


# virtual methods
.method public abstract getAnalyticsManager()Lcom/geely/lib/oneosapi/recommendation/IAnalyticsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCsdManager()Lcom/geely/lib/oneosapi/recommendation/ICsdManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPsdManager()Lcom/geely/lib/oneosapi/recommendation/IPsdManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribeWithdrawCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IWithdrawCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unSubscribeWithdrawCallback(Lcom/geely/lib/oneosapi/recommendation/callback/IWithdrawCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
