.class public interface abstract Lcom/geely/lib/oneosapi/payment/IPaymentCallback;
.super Ljava/lang/Object;
.source "IPaymentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/payment/IPaymentCallback$Stub;,
        Lcom/geely/lib/oneosapi/payment/IPaymentCallback$Default;
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
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
