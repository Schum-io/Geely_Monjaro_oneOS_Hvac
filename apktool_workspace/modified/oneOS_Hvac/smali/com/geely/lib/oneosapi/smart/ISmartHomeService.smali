.class public interface abstract Lcom/geely/lib/oneosapi/smart/ISmartHomeService;
.super Ljava/lang/Object;
.source "ISmartHomeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Stub;,
        Lcom/geely/lib/oneosapi/smart/ISmartHomeService$Default;
    }
.end annotation


# virtual methods
.method public abstract getAirConditionInfo()Lcom/geely/lib/oneosapi/smart/IAirConditionerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAirPurificationInfo()Lcom/geely/lib/oneosapi/smart/IAirPurificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getElectricSocketInfo()Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLightInfo()Lcom/geely/lib/oneosapi/smart/ILightInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSmartApi()Lcom/geely/lib/oneosapi/smart/ISmartApi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSweepingRobotInfo()Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSmartHomeListener(Lcom/geely/lib/oneosapi/smart/ISmartCallback;)Z
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

.method public abstract unregisterSmartHomeListener(Lcom/geely/lib/oneosapi/smart/ISmartCallback;)Z
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
