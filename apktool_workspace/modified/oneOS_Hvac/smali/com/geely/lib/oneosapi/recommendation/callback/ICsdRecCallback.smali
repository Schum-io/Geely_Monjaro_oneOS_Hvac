.class public interface abstract Lcom/geely/lib/oneosapi/recommendation/callback/ICsdRecCallback;
.super Ljava/lang/Object;
.source "ICsdRecCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/recommendation/callback/ICsdRecCallback$Stub;,
        Lcom/geely/lib/oneosapi/recommendation/callback/ICsdRecCallback$Default;
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
