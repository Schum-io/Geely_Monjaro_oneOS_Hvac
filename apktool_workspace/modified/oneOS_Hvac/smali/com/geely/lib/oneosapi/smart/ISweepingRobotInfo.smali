.class public interface abstract Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo;
.super Ljava/lang/Object;
.source "ISweepingRobotInfo.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo$Stub;,
        Lcom/geely/lib/oneosapi/smart/ISweepingRobotInfo$Default;
    }
.end annotation


# virtual methods
.method public abstract getEnergyValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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
