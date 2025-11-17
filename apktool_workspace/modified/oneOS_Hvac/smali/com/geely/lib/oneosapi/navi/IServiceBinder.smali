.class public interface abstract Lcom/geely/lib/oneosapi/navi/IServiceBinder;
.super Ljava/lang/Object;
.source "IServiceBinder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/IServiceBinder$Stub;,
        Lcom/geely/lib/oneosapi/navi/IServiceBinder$Default;
    }
.end annotation


# virtual methods
.method public abstract getDefaultMap()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNaviServer(IZLcom/geely/lib/oneosapi/navi/IServerCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapVendor",
            "isLaunchMap",
            "initCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDefaultMap(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapVendor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
