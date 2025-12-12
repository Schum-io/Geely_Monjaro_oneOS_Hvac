.class public interface abstract Lcom/geely/lib/oneosapi/IServiceManagerCallback;
.super Ljava/lang/Object;
.source "IServiceManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/IServiceManagerCallback$Stub;,
        Lcom/geely/lib/oneosapi/IServiceManagerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onServiceChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
