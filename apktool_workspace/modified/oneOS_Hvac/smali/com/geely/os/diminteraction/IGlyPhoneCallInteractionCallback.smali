.class public interface abstract Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;
.super Ljava/lang/Object;
.source "IGlyPhoneCallInteractionCallback.java"


# virtual methods
.method public abstract onAnswerAndEndCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation
.end method

.method public abstract onAnswerAndHoldCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation
.end method

.method public abstract onAnswerCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation
.end method

.method public abstract onCallInfoUpdateRequired()V
.end method

.method public abstract onEndCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation
.end method

.method public abstract onRequestConnectedMobileDeviceInfo()V
.end method

.method public abstract onSwitchCall()V
.end method

.method public abstract onSwitchChannel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voiceChannel"
        }
    .end annotation
.end method

.method public abstract onSwitchMicMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muteStatus"
        }
    .end annotation
.end method

.method public abstract onSwitchRingtoneMuteMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muteMode"
        }
    .end annotation
.end method

.method public abstract placeCall(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation
.end method
