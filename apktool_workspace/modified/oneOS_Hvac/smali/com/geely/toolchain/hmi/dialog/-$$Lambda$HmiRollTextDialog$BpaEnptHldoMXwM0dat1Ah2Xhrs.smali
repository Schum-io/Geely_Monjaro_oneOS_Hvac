.class public final synthetic Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs;->f$0:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 7

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs;->f$0:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs;->f$1:Landroid/view/View;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->lambda$setHmiListener$3$HmiRollTextDialog(Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method
