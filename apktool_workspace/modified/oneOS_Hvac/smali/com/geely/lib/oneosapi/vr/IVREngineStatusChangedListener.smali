.class public interface abstract Lcom/geely/lib/oneosapi/vr/IVREngineStatusChangedListener;
.super Ljava/lang/Object;
.source "IVREngineStatusChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/vr/IVREngineStatusChangedListener$Stub;,
        Lcom/geely/lib/oneosapi/vr/IVREngineStatusChangedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onVREngineStatusChanged(I)V
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
