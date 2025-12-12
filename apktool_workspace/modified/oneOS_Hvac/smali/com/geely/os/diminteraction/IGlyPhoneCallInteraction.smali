.class public interface abstract Lcom/geely/os/diminteraction/IGlyPhoneCallInteraction;
.super Ljava/lang/Object;
.source "IGlyPhoneCallInteraction.java"


# virtual methods
.method public abstract registerPhoneCallback(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unRegisterPhoneCallback(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract updateCallInfo(Lcom/geely/os/diminteraction/IGlyCallInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callInfo"
        }
    .end annotation
.end method

.method public abstract updateConnectedMobileDeviceState(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceName",
            "batteryLevel",
            "signalLevel"
        }
    .end annotation
.end method

.method public abstract updateSecondCallInfo(Lcom/geely/os/diminteraction/IGlyCallInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callInfo"
        }
    .end annotation
.end method

.method public abstract writeCallLog2DBCompleted()V
.end method

.method public abstract writeContact2DBCompleted()V
.end method
