.class public interface abstract Lcom/geely/os/rescue/IGlyRescueHandler;
.super Ljava/lang/Object;
.source "IGlyRescueHandler.java"


# static fields
.field public static final CALL_TYPE_ECALL:I = 0x1

.field public static final HEADSET_CLIENT:I = 0x10


# virtual methods
.method public abstract callRescue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation
.end method

.method public abstract callSOS()V
.end method

.method public abstract initBluetooth()V
.end method

.method public abstract initOnCall(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract isConnectedBTPhone()Z
.end method

.method public abstract isSupportSOS()Z
.end method

.method public abstract startBtPanel()V
.end method
