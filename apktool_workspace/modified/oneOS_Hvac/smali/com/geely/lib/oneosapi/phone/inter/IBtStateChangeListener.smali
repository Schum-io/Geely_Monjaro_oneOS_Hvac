.class public interface abstract Lcom/geely/lib/oneosapi/phone/inter/IBtStateChangeListener;
.super Ljava/lang/Object;
.source "IBtStateChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/phone/inter/IBtStateChangeListener$Stub;,
        Lcom/geely/lib/oneosapi/phone/inter/IBtStateChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onBtProfileChange(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profrle",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
