.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback;
.super Ljava/lang/Object;
.source "IContentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback$Stub;,
        Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onContentResult(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
