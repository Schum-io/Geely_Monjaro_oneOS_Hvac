.class public interface abstract Lcom/geely/os/audio/IGlyFaderBalanceStateListener;
.super Ljava/lang/Object;
.source "IGlyFaderBalanceStateListener.java"


# virtual methods
.method public abstract onBalanceChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "balanceLevel"
        }
    .end annotation
.end method

.method public abstract onFaderBalanceStateChanger(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportStatus"
        }
    .end annotation
.end method

.method public abstract onFaderChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faderLevel"
        }
    .end annotation
.end method
