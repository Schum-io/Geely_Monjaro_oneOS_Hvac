.class public interface abstract Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener;
.super Ljava/lang/Object;
.source "IMapWidgetChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener$Stub;,
        Lcom/geely/lib/oneosapi/launcher/listener/IMapWidgetChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onMapWidgetChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
