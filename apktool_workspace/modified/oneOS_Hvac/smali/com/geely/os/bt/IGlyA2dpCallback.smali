.class public interface abstract Lcom/geely/os/bt/IGlyA2dpCallback;
.super Ljava/lang/Object;
.source "IGlyA2dpCallback.java"


# virtual methods
.method public abstract onA2dpServiceReady()V
.end method

.method public abstract onA2dpStateChanged(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "prevState",
            "newState"
        }
    .end annotation
.end method
