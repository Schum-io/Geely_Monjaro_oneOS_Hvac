.class public interface abstract Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener;
.super Ljava/lang/Object;
.source "IModemCallStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener$Stub;,
        Lcom/geely/lib/oneosapi/linkmanager/IModemCallStateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onModemCallStateChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
