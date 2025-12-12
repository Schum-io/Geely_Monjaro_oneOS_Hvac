.class public interface abstract Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener;
.super Ljava/lang/Object;
.source "IWidgetListDisplayChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener$Stub;,
        Lcom/geely/lib/oneosapi/launcher/listener/IWidgetListDisplayChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract psdWidgetListDisplay(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract widgetListDisplay(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
