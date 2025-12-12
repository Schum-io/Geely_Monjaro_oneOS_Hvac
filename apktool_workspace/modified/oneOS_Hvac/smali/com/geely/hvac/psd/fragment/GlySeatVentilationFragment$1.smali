.class Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment$1;
.super Ljava/lang/Object;
.source "GlySeatVentilationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;


# direct methods
.method constructor <init>(Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment$1;->this$0:Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string v0, "GlySeatVentilationFragment"

    const-string v1, "showSeatSetTipsDialog"

    .line 68
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment$1;->this$0:Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;

    invoke-static {v0}, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;->access$000(Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;)Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment$1;->this$0:Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;

    new-instance v1, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    invoke-static {}, Lcom/geely/hvac/utils/ActivityManager;->getInstance()Lcom/geely/hvac/utils/ActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geely/hvac/utils/ActivityManager;->getCurrentVisibleActivityOrContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/geely/hvac/GlyAcApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-static {v0, v1}, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;->access$002(Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;)Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    .line 72
    iget-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment$1;->this$0:Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;

    invoke-static {v0}, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;->access$000(Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;)Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment$1;->this$0:Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;

    invoke-static {v0}, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;->access$000(Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;)Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment$1;->this$0:Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;

    invoke-static {v0}, Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;->access$000(Lcom/geely/hvac/psd/fragment/GlySeatVentilationFragment;)Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/psd/component/PSDSeatSetTipsDialog;->show()V

    .line 77
    :cond_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
