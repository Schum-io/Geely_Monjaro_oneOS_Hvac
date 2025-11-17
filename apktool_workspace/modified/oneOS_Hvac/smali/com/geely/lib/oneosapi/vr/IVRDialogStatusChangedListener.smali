.class public interface abstract Lcom/geely/lib/oneosapi/vr/IVRDialogStatusChangedListener;
.super Ljava/lang/Object;
.source "IVRDialogStatusChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/vr/IVRDialogStatusChangedListener$Stub;,
        Lcom/geely/lib/oneosapi/vr/IVRDialogStatusChangedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onVRDialogStatusChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
