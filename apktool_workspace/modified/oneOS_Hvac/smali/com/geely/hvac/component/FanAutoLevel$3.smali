.class Lcom/geely/hvac/component/FanAutoLevel$3;
.super Ljava/lang/Object;
.source "FanAutoLevel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/FanAutoLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/FanAutoLevel;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/FanAutoLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/geely/hvac/component/FanAutoLevel$3;->this$0:Lcom/geely/hvac/component/FanAutoLevel;

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

    .line 60
    iget-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel$3;->this$0:Lcom/geely/hvac/component/FanAutoLevel;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/geely/hvac/component/FanAutoLevel;->access$000(Lcom/geely/hvac/component/FanAutoLevel;I)V

    .line 61
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
