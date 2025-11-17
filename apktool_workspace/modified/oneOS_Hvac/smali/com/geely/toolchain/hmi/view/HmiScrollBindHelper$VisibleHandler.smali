.class Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;
.super Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;
.source "HmiScrollBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibleHandler"
.end annotation


# instance fields
.field private helper:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;


# direct methods
.method public constructor <init>(Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "helper"
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/dialog/AbstractHmiLastMsgHandler;-><init>(Landroid/os/Looper;)V

    .line 120
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;->helper:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    return-void
.end method


# virtual methods
.method protected handleLastMessage(Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 129
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;->helper:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->access$000(Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;->sendMsgDelayed(J)V

    return-void
.end method
