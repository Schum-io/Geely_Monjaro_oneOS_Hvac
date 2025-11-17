.class public interface abstract Lcom/geely/lib/oneosapi/smart/IResultCallback;
.super Ljava/lang/Object;
.source "IResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/IResultCallback$Stub;,
        Lcom/geely/lib/oneosapi/smart/IResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract callback(ILjava/lang/String;)V
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
