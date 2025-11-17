.class Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$1;
.super Ljava/lang/Object;
.source "HmiMiddleCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;

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
            "view"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->access$100(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->access$100(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;->onClick(Landroid/view/View;)V

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
