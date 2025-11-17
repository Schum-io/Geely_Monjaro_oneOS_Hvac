.class public interface abstract Lcom/geely/lib/cloud/appstore/IAppStore;
.super Ljava/lang/Object;
.source "IAppStore.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/appstore/IAppStore$Stub;,
        Lcom/geely/lib/cloud/appstore/IAppStore$Default;
    }
.end annotation


# virtual methods
.method public abstract getAppInstallAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreBatchCheckUpdate(Lcom/geely/lib/cloud/appstore/bean/PdsnAppListParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnAppListParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreCategory(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreCategoryList(Lcom/geely/lib/cloud/appstore/bean/PdsnIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnIdParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreDetails(Lcom/geely/lib/cloud/appstore/bean/VinPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vinPackageParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreDownRanking(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreDownUp(Lcom/geely/lib/cloud/appstore/bean/AppPackageParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appPackageParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreGameHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vinVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreGameSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnKeyParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreGroupList(Lcom/geely/lib/cloud/appstore/bean/IdPdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idPdsnParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnKeyParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppStoresHome(Lcom/geely/lib/cloud/appstore/bean/PdsnVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pasnVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppVersionAdd(Lcom/geely/lib/cloud/appstore/bean/AppVersionParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appVersionParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNewAppStoreSearch(Lcom/geely/lib/cloud/appstore/bean/PdsnKeyNewParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnKeyNewParam",
            "callBack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
