#############################################################################
# Row1LeftWindRunnable - Updates LEFT front seat ventilation button
#############################################################################

.class Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftWindRunnable;
.super Ljava/lang/Object;
.source "AirConditionViewHolder.java"

.implements Ljava/lang/Runnable;

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row1LeftWindRunnable"
.end annotation


.field final synthetic this$0:Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;


.method constructor <init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftWindRunnable;->this$0:Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftWindRunnable;->this$0:Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;

    invoke-virtual {v0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftWind()V

    return-void
.end method


