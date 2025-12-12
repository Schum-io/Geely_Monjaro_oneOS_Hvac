.class public interface abstract Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService;
.super Ljava/lang/Object;
.source "IControlBoardDialogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService$Stub;,
        Lcom/geely/lib/oneosapi/systemui/IControlBoardDialogService$Default;
    }
.end annotation


# virtual methods
.method public abstract showMirrorDialog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showVolumeDialog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
