.class public interface abstract Lcom/geely/lib/cloud/wallpaper/IWallpaper;
.super Ljava/lang/Object;
.source "IWallpaper.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/wallpaper/IWallpaper$Stub;,
        Lcom/geely/lib/cloud/wallpaper/IWallpaper$Default;
    }
.end annotation


# virtual methods
.method public abstract getQueryList(Lcom/geely/lib/cloud/wallpaper/bean/QueryListParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "queryListParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getQueryOne(Lcom/geely/lib/cloud/wallpaper/bean/QueryOneParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "queryOneParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStsAccess(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sysKey",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract postStsSave(Lcom/geely/lib/cloud/wallpaper/bean/StsSaveParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stsSaveParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract userFaceAdd(Lcom/geely/lib/cloud/wallpaper/bean/FaceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faceParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract userFaceRemove(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "faceId",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract userFaceShow(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
