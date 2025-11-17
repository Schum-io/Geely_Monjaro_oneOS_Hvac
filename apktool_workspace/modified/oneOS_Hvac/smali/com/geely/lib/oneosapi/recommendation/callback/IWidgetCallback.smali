.class public interface abstract Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback;
.super Ljava/lang/Object;
.source "IWidgetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback$Stub;,
        Lcom/geely/lib/oneosapi/recommendation/callback/IWidgetCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
