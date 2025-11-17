.class public interface abstract Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo;
.super Ljava/lang/Object;
.source "IElectricSocketInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo$Stub;,
        Lcom/geely/lib/oneosapi/smart/IElectricSocketInfo$Default;
    }
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSwitchOpen()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
