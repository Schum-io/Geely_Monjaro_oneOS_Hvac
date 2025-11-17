.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;
.super Ljava/lang/Object;
.source "ICarSpeedManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager$Stub;,
        Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager$Default;
    }
.end annotation


# virtual methods
.method public abstract addVehicleSpeedChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/ICarSpeedListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isTrad()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeVehicleSpeedChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/ICarSpeedListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
