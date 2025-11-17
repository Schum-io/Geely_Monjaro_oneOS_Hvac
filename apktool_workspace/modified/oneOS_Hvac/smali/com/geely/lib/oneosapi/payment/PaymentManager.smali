.class public Lcom/geely/lib/oneosapi/payment/PaymentManager;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/payment/PaymentManager$BasePaymentCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentManager"


# instance fields
.field private mContetx:Landroid/content/Context;

.field private mService:Lcom/geely/lib/oneosapi/payment/IPaymentService;


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/PaymentManager;->mContetx:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/geely/lib/oneosapi/payment/IPaymentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/payment/IPaymentService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/PaymentManager;->mService:Lcom/geely/lib/oneosapi/payment/IPaymentService;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/PaymentManager;->mService:Lcom/geely/lib/oneosapi/payment/IPaymentService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isPaySuccessCallback(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/payment/PaymentManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/PaymentManager;->mService:Lcom/geely/lib/oneosapi/payment/IPaymentService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/payment/IPaymentService;->isPaySuccessCallback(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "PaymentManager"

    const-string p2, "startPayment: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/payment/IPaymentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/payment/IPaymentService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/payment/PaymentManager;->mService:Lcom/geely/lib/oneosapi/payment/IPaymentService;

    return-void
.end method

.method public startPayment(Lcom/geely/lib/oneosapi/payment/OrderRenderParam;Lcom/geely/lib/oneosapi/payment/PaymentManager$BasePaymentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orderInfo",
            "isPaySuccessCallback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/payment/PaymentManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/payment/PaymentManager;->mService:Lcom/geely/lib/oneosapi/payment/IPaymentService;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/payment/IPaymentService;->startPayment(Lcom/geely/lib/oneosapi/payment/OrderRenderParam;Lcom/geely/lib/oneosapi/payment/IPaymentCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "PaymentManager"

    const-string p2, "startPayment: service is not alive"

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
