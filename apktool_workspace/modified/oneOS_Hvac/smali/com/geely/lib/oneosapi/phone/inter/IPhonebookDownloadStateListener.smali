.class public interface abstract Lcom/geely/lib/oneosapi/phone/inter/IPhonebookDownloadStateListener;
.super Ljava/lang/Object;
.source "IPhonebookDownloadStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/phone/inter/IPhonebookDownloadStateListener$Stub;,
        Lcom/geely/lib/oneosapi/phone/inter/IPhonebookDownloadStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDownloadStateListener(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
