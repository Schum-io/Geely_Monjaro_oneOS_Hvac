.class public Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog$2;
.super Ljava/lang/Object;
.source "SetDefaultMapDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog$2;->this$0:Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;

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

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog$2;->this$0:Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;->access$100(Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;)Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog$OnCancelClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog$2;->this$0:Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;->access$100(Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog;)Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog$OnCancelClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/navi/utils/SetDefaultMapDialog$OnCancelClickListener;->CancelClick()V

    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
