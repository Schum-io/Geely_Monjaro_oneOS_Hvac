.class public interface abstract Lcom/geely/lib/oneosapi/ota/IOtaVersionChangedListener;
.super Ljava/lang/Object;
.source "IOtaVersionChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/ota/IOtaVersionChangedListener$Stub;,
        Lcom/geely/lib/oneosapi/ota/IOtaVersionChangedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onOtaVersionChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasNewVersion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
