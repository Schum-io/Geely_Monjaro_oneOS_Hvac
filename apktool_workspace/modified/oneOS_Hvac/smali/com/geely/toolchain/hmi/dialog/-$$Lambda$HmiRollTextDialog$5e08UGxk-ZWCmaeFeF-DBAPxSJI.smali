.class public final synthetic Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$5e08UGxk-ZWCmaeFeF-DBAPxSJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$5e08UGxk-ZWCmaeFeF-DBAPxSJI;->f$0:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$5e08UGxk-ZWCmaeFeF-DBAPxSJI;->f$0:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->lambda$setHmiListener$2$HmiRollTextDialog()V

    return-void
.end method
