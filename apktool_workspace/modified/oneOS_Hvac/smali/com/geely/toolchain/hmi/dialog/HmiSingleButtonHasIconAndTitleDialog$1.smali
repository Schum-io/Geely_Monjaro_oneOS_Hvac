.class Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;
.super Ljava/lang/Object;
.source "HmiSingleButtonHasIconAndTitleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;)Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;)Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    :cond_0
    const-string v0, "HmiSingleButtonHasIconAndTitleDialog"

    const-string v1, "onClick: mHmiCloseListener is null"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->dismiss()V

    .line 100
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
