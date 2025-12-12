.class public interface abstract Lcom/geely/lib/oneosapi/smart/api/ISmartApi;
.super Ljava/lang/Object;
.source "ISmartApi.java"


# virtual methods
.method public abstract controlACTemp(Ljava/lang/String;Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/api/IResultCallback;)V
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
.end method

.method public abstract controlDeviceMode(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/api/IResultCallback;)V
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
.end method

.method public abstract controlDeviceSpeed(Ljava/lang/String;IILcom/geely/lib/oneosapi/smart/api/IResultCallback;)V
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
.end method

.method public abstract controlDeviceSwitch(Ljava/lang/String;IZLcom/geely/lib/oneosapi/smart/api/IResultCallback;)V
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
.end method

.method public abstract controlSceneMode(ZLjava/lang/String;Lcom/geely/lib/oneosapi/smart/api/IResultCallback;)V
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
.end method
