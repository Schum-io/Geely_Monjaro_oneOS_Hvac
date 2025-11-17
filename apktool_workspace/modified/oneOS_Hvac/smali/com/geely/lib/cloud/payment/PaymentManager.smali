.class public Lcom/geely/lib/cloud/payment/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/payment/IPayment;


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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p2}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/payment/IPayment;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    return-void
.end method


# virtual methods
.method public getGoodsChange(Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "goodsChangeParam",
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getGoodsChange"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$6;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$6;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getGoodsChange(Lcom/geely/lib/cloud/payment/bean/GoodsChangeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getGoodsDetail(Lcom/geely/lib/cloud/payment/bean/ItemIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "itemIdParam",
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getGoodsDetail"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$5;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$5;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getGoodsDetail(Lcom/geely/lib/cloud/payment/bean/ItemIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getGoodsPoint(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getGoodsPoint"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 211
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$7;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/payment/PaymentManager$7;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getGoodsPoint(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 228
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getIOrderDetail(Lcom/geely/lib/cloud/payment/bean/OrderIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "orderIdParam",
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getIOrderDetail"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 239
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$8;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$8;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getIOrderDetail(Lcom/geely/lib/cloud/payment/bean/OrderIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 256
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getLearJudge(Lcom/geely/lib/cloud/payment/bean/LearJudgeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "learJudgeParam",
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getLearJudge"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 266
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$9;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$9;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getLearJudge(Lcom/geely/lib/cloud/payment/bean/LearJudgeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 283
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getOrderCancel(Lcom/geely/lib/cloud/payment/bean/OrderIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "orderIdParam",
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getOrderCancel"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$3;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getOrderCancel(Lcom/geely/lib/cloud/payment/bean/OrderIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 116
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getOrderCreate(Lcom/geely/lib/cloud/payment/bean/OrderCreateDto;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "orderCreateDto",
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getOrderCreate"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$2;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getOrderCreate(Lcom/geely/lib/cloud/payment/bean/OrderCreateDto;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getOrderPay(Lcom/geely/lib/cloud/payment/bean/OrderPayParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
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

    const-string v0, "PaymentManager"

    const-string v1, "getOrderPay"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 127
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$4;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getOrderPay(Lcom/geely/lib/cloud/payment/bean/OrderPayParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 144
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getOrderRender(Lcom/geely/lib/cloud/payment/bean/OrderRenderParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "orderRenderParam",
            "callback"
        }
    .end annotation

    const-string v0, "PaymentManager"

    const-string v1, "getOrderRender"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/geely/lib/cloud/payment/PaymentManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/payment/PaymentManager$1;-><init>(Lcom/geely/lib/cloud/payment/PaymentManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/payment/IPayment;->getOrderRender(Lcom/geely/lib/cloud/payment/bean/OrderRenderParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

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

    .line 35
    invoke-static {p1}, Lcom/geely/lib/cloud/payment/IPayment$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/payment/IPayment;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/payment/PaymentManager;->mService:Lcom/geely/lib/cloud/payment/IPayment;

    :cond_0
    return-void
.end method
