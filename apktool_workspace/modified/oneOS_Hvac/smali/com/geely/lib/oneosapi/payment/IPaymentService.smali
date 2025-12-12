.class public interface abstract Lcom/geely/lib/oneosapi/payment/IPaymentService;
.super Ljava/lang/Object;
.source "IPaymentService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/payment/IPaymentService$Stub;,
        Lcom/geely/lib/oneosapi/payment/IPaymentService$Default;
    }
.end annotation


# virtual methods
.method public abstract isPaySuccessCallback(ILjava/lang/String;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startPayment(Lcom/geely/lib/oneosapi/payment/OrderRenderParam;Lcom/geely/lib/oneosapi/payment/IPaymentCallback;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
