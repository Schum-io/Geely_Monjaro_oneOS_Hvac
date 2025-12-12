.class public interface abstract Lcom/geely/os/system/IGlySystemMode;
.super Ljava/lang/Object;
.source "IGlySystemMode.java"


# virtual methods
.method public abstract closeBootUpAnimation()V
.end method

.method public abstract getSystemModeState(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract registerDIMAnimationStateCallback(Lcom/geely/os/system/IGlyDIMAnimationStateCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract registerListener(ILcom/geely/os/system/IGlySystemModeListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "listener"
        }
    .end annotation
.end method

.method public abstract setDisplayWakeState(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zone",
            "state"
        }
    .end annotation
.end method

.method public abstract setProvisionStatus(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentStatus"
        }
    .end annotation
.end method

.method public abstract setProvisionStatus(ILcom/geely/os/system/IGlyDIMAnimationStateCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentStatus",
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterDIMAnimationStateCallback(Lcom/geely/os/system/IGlyDIMAnimationStateCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/geely/os/system/IGlySystemModeListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
