#############################################################################
# Row1SteeringWheelHeatRunnable - Updates row1 steering wheel heat button
#
# This Runnable is posted to the UI thread when:
# - row1SteeringWheelHeatLevelObservable changes (heat level 0-3)
# - row1SteeringWheelHeatSupportedObservable changes (feature supported state)
#
# It calls AcPanelController.updateRow1SteeringWheelHeat() to update the view.
#############################################################################

.class Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1SteeringWheelHeatRunnable;
.super Ljava/lang/Object;
.source "AirConditionViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row1SteeringWheelHeatRunnable"
.end annotation


# instance fields
# Reference to the outer AcPanelController
.field final synthetic this$0:Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;


# direct methods
# Constructor - stores reference to outer class
.method constructor <init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    .locals 0

    # Store outer class reference (required for synthetic field - set before super)
    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1SteeringWheelHeatRunnable;->this$0:Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;

    # Call Object constructor
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
# run() - Called on UI thread to update row1 steering wheel heat view
.method public run()V
    .locals 1

    # Get outer class reference
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1SteeringWheelHeatRunnable;->this$0:Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;

    # Call updateRow1SteeringWheelHeat() on the controller
    invoke-virtual {v0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1SteeringWheelHeat()V

    return-void
.end method

