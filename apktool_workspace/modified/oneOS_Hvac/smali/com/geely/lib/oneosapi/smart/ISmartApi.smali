.class public interface abstract Lcom/geely/lib/oneosapi/smart/ISmartApi;
.super Ljava/lang/Object;
.source "ISmartApi.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/ISmartApi$Stub;,
        Lcom/geely/lib/oneosapi/smart/ISmartApi$Default;
    }
.end annotation


# virtual methods
.method public abstract controlACTemp(Ljava/lang/String;Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "setType",
            "targetTemp",
            "adjustTemp",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract controlDeviceMode(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "mode",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract controlDeviceSpeed(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "speed",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract controlDeviceSpeedNew(Ljava/lang/String;ILjava/lang/String;IILcom/geely/lib/oneosapi/smart/IResultCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "setType",
            "speed",
            "adjustSpeed",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract controlDeviceSwitch(Ljava/lang/String;IZLcom/geely/lib/oneosapi/smart/IResultCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "deviceType",
            "isOpen",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract controlSceneMode(ZLjava/lang/String;Lcom/geely/lib/oneosapi/smart/IResultCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "isOpen",
            "sceneName",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAllSceneList(Lcom/geely/lib/oneosapi/smart/scene/IGetSceneListCallBack;)V
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

.method public abstract registerSceneChangeListener(Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;)V
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

.method public abstract unregisterSceneChangeListener(Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;)V
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
