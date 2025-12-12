.class public interface abstract Lcom/geely/os/diminteraction/IGlyVrInteraction;
.super Ljava/lang/Object;
.source "IGlyVrInteraction.java"


# virtual methods
.method public abstract notifyVoiceToTextCompleted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation
.end method

.method public abstract notifyVrSearchStates(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract notifyVrStatusChanged(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vrStatusBefore",
            "vrStatusCurrent"
        }
    .end annotation
.end method

.method public abstract notifyVrTTSText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttsText"
        }
    .end annotation
.end method

.method public abstract registerVrCallback(Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unRegisterVrCallback(Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
