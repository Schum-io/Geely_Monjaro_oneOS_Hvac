.class public Lcom/geely/lib/cloud/themestore/ThemeStoreManager;
.super Ljava/lang/Object;
.source "ThemeStoreManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeStoreManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/themestore/IThemeStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p2}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    return-void
.end method


# virtual methods
.method public getBuyResource(Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getBuyResource"

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 412
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$16;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$16;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getBuyResource(Lcom/geely/lib/cloud/themestore/bean/BuyResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 428
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getDelResource(Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getDelResource"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 434
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$17;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$17;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getDelResource(Lcom/geely/lib/cloud/themestore/bean/DelResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 450
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsDownloadResource(Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsDownloadResource"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 244
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$9;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$9;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsDownloadResource(Lcom/geely/lib/cloud/themestore/bean/DownResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 261
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsFrames(Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsFrames"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$1;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsFrames(Lcom/geely/lib/cloud/themestore/bean/GetFramsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsGetGoodsCateGory(Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsGetGoodsCateGory"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$4;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsGetGoodsCateGory(Lcom/geely/lib/cloud/themestore/bean/GetGoodsCategoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 141
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsOperateInfo(Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsOperateInfo"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$2;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsOperateInfo(Lcom/geely/lib/cloud/themestore/bean/GetOperateInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 93
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsOperateMoreInfo(Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsOperateMoreInfo"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$3;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsOperateMoreInfo(Lcom/geely/lib/cloud/themestore/bean/OperateMoreInfoParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsPreview(Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsPreview"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 196
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$7;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$7;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsPreview(Lcom/geely/lib/cloud/themestore/bean/GoodsPreviewParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 213
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsPurchaseResource(Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsPurchaseResource"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 220
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$8;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$8;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsPurchaseResource(Lcom/geely/lib/cloud/themestore/bean/PurchaseResourceParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 237
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsSearchGoods(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsSearchGoods"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$5;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$5;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsSearchGoods(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 165
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getGoodsSearchGoodsDetail(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getGoodsSearchGoodsDetail"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$6;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$6;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getGoodsSearchGoodsDetail(Lcom/geely/lib/cloud/themestore/bean/SearchGoodsDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 189
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getOrderCancleOrder(Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getOrderCancleOrder"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$13;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$13;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderCancleOrder(Lcom/geely/lib/cloud/themestore/bean/CancleOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 357
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getOrderCreateOrder(Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getOrderCreateOrder"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$10;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$10;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderCreateOrder(Lcom/geely/lib/cloud/themestore/bean/CreateOrderParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 285
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getOrderPay(Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getOrderPay"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$11;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$11;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderPay(Lcom/geely/lib/cloud/themestore/bean/OrderPayParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 309
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getOrderSearchOrderStatus(Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getOrderSearchOrderStatus"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 316
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$12;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$12;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getOrderSearchOrderStatus(Lcom/geely/lib/cloud/themestore/bean/SearchOrderStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 333
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getThemeGoodsPurchaseCount(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getThemeGoodsPurchaseCount"

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 388
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$15;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$15;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getThemeGoodsPurchaseCount(Lcom/geely/lib/cloud/appstore/bean/PdsnParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 405
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getThemeGoodsPurchaseRecord(Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    const-string v0, "ThemeStoreManager"

    const-string v1, "getThemeGoodsPurchaseRecord"

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    if-eqz v1, :cond_0

    .line 364
    new-instance v0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$14;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/themestore/ThemeStoreManager$14;-><init>(Lcom/geely/lib/cloud/themestore/ThemeStoreManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/themestore/IThemeStore;->getThemeGoodsPurchaseRecord(Lcom/geely/lib/cloud/themestore/bean/PurchaseRecordParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 381
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 44
    invoke-static {p1}, Lcom/geely/lib/cloud/themestore/IThemeStore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/themestore/IThemeStore;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/themestore/ThemeStoreManager;->mService:Lcom/geely/lib/cloud/themestore/IThemeStore;

    :cond_0
    return-void
.end method
