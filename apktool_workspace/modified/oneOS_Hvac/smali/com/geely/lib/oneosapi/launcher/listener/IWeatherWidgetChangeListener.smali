.class public interface abstract Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener;
.super Ljava/lang/Object;
.source "IWeatherWidgetChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener$Stub;,
        Lcom/geely/lib/oneosapi/launcher/listener/IWeatherWidgetChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onWeatherWidgetChanged(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "widgetId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
