.class public interface abstract Lcom/geely/os/trackball/IGlyTrackBall;
.super Ljava/lang/Object;
.source "IGlyTrackBall.java"


# virtual methods
.method public abstract getConnectState()Z
.end method

.method public abstract getTrackBallCursorAlpha()I
.end method

.method public abstract getTrackBallCursorStyle()I
.end method

.method public abstract getTrackBallMediaType()I
.end method

.method public abstract getTrackBallSensitivity()I
.end method

.method public abstract getTrackBallVideoType()I
.end method

.method public abstract registerTrackBallCallback(Lcom/geely/os/trackball/IGlyTrackBallListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setTrackBallCursorAlpha(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation
.end method

.method public abstract setTrackBallCursorStyle(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation
.end method

.method public abstract setTrackBallMediaType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setTrackBallSensitivity(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setTrackBallVideoType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract unregisterTrackBallCallBack(Lcom/geely/os/trackball/IGlyTrackBallListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
