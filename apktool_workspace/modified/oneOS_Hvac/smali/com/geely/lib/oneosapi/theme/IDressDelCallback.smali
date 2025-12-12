.class public interface abstract Lcom/geely/lib/oneosapi/theme/IDressDelCallback;
.super Ljava/lang/Object;
.source "IDressDelCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/theme/IDressDelCallback$Stub;,
        Lcom/geely/lib/oneosapi/theme/IDressDelCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract delResultCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDelSuccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
