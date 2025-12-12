.class Lcom/geely/hvac/component/AcSetItem$1;
.super Ljava/lang/Object;
.source "AcSetItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/AcSetItem;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/AcSetItem;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/AcSetItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/geely/hvac/component/AcSetItem$1;->this$0:Lcom/geely/hvac/component/AcSetItem;

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

    .line 49
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem$1;->this$0:Lcom/geely/hvac/component/AcSetItem;

    invoke-static {v0}, Lcom/geely/hvac/component/AcSetItem;->access$000(Lcom/geely/hvac/component/AcSetItem;)Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-virtual {v0}, Lcom/geely/hvac/component/Switch;->toggle()V

    .line 50
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
