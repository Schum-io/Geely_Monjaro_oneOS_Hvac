.class Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$1;
.super Ljava/lang/Object;
.source "HmiSingleButtonHasTitleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->initView(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;

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

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;->closeDialog()V

    goto :goto_0

    :cond_0
    const-string v0, "HmiSingleButtonHasTitleDialog"

    const-string v1, "mHmiCloseListener is null"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
