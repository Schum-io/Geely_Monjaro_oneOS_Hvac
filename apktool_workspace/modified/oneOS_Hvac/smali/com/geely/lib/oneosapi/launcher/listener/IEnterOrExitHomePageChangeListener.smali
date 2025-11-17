.class public interface abstract Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener;
.super Ljava/lang/Object;
.source "IEnterOrExitHomePageChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener$Stub;,
        Lcom/geely/lib/oneosapi/launcher/listener/IEnterOrExitHomePageChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onHomePageChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHome"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
