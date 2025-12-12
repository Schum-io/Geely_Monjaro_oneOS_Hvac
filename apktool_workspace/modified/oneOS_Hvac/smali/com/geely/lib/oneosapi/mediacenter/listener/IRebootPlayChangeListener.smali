.class public interface abstract Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener;
.super Ljava/lang/Object;
.source "IRebootPlayChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener$Stub;,
        Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRebootPlayChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rebootPlayValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
