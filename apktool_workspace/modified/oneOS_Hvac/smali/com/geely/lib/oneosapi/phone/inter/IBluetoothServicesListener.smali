.class public interface abstract Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener;
.super Ljava/lang/Object;
.source "IBluetoothServicesListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Stub;,
        Lcom/geely/lib/oneosapi/phone/inter/IBluetoothServicesListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCallAdded(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallAddedOther(Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;Lcom/geely/lib/oneosapi/phone/telecom/GlyCallItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callItem",
            "otherCallItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallViewStateChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
