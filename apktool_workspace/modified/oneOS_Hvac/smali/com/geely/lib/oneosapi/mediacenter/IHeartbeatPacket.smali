.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket;
.super Ljava/lang/Object;
.source "IHeartbeatPacket.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket$Stub;,
        Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket$Default;
    }
.end annotation


# virtual methods
.method public abstract getPackageName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
