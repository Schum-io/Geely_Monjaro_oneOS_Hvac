.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/listener/ICarSpeedListener;
.super Ljava/lang/Object;
.source "ICarSpeedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/listener/ICarSpeedListener$Stub;,
        Lcom/geely/lib/oneosapi/mediacenter/listener/ICarSpeedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onVehicleSpeedChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTrad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
