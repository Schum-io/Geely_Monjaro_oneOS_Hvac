.class public interface abstract Lcom/geely/lib/cloud/themestore/IThemeStore;
.super Ljava/lang/Object;
.source "IThemeStore.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;,
        Lcom/geely/lib/cloud/themestore/IThemeStore$Default;
    }
.end annotation


# virtual methods
.method public abstract getBuyResource(Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buyResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDelResource(Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsDownloadResource(Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsFrames(Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getFramsParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsGetGoodsCateGory(Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getGoodsCategoryParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsOperateInfo(Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "getOperateInfoParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsOperateMoreInfo(Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "operateMoreInfoParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsPreview(Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "goodsPreviewParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsPurchaseResource(Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "purchaseResourceParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsSearchGoods(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchGoodsParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGoodsSearchGoodsDetail(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchGoodsDetailParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOrderCancleOrder(Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cancleOrderParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOrderCreateOrder(Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "createOrderParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOrderPay(Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orderPayParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOrderSearchOrderStatus(Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchOrderStatusParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getThemeGoodsPurchaseCount(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pdsnParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getThemeGoodsPurchaseRecord(Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "purchaseRecordParam",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
