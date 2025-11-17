.class Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$1;
.super Ljava/lang/Object;
.source "HmiScanQrCodeSingleBtnDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;->refresh()V

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
