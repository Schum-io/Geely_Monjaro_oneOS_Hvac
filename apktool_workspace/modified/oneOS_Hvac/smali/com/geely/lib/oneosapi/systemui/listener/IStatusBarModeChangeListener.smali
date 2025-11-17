.class public interface abstract Lcom/geely/lib/oneosapi/systemui/listener/IStatusBarModeChangeListener;
.super Ljava/lang/Object;
.source "IStatusBarModeChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/systemui/listener/IStatusBarModeChangeListener$Stub;,
        Lcom/geely/lib/oneosapi/systemui/listener/IStatusBarModeChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onStatusBarModeChange(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
