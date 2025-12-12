#############################################################################
# AcPanelController - Controller for AC Panel elements on pager_item_aircondition.xml
#
# This class handles:
# 1. Row1 (front) steering wheel heat control (button click + level/enabled state)
# 2. Row1 (front seats) heat/wind control (level/enabled state)
# 3. Row2 (rear seats) heat level/enabled state + visibility control
#
# It implements:
# - OnClickListener: handles clicks on all row1/row2 buttons
# - OnPropertyChangedCallback: reacts to changes in observables (level, supported, panel state)
#
# The controller manages UI updates via Runnables posted to the main thread:
# - ContainerRunnable: updates visibility of all elements based on front/back panel
# - Row1SteeringWheelHeatRunnable: updates row1 steering wheel heat (enabled + level)
# - Row1LeftHeatRunnable: updates row1 left seat heat (enabled + level)
# - Row1RightHeatRunnable: updates row1 right seat heat (enabled + level)
# - Row1LeftWindRunnable: updates row1 left seat wind (enabled + level)
# - Row1RightWindRunnable: updates row1 right seat wind (enabled + level)
# - Row2LeftRunnable: updates row2 left seat heat enabled + level (independent from right)
# - Row2RightRunnable: updates row2 right seat heat enabled + level (independent from left)
#############################################################################

.class public Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "AirConditionViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/adapter/AirConditionViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcPanelController"
.end annotation

# Member classes annotation - lists all inner Runnable classes
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$ContainerRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1SteeringWheelHeatRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftHeatRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1RightHeatRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftWindRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1RightWindRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftMassageRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row2LeftRunnable;,
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row2RightRunnable;
    }
.end annotation


#############################################################################
# INSTANCE FIELDS
#############################################################################

# ViewModel reference - used to get observables and call click handlers
.field private model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

# Row1 Steering wheel heat views
# row1SteeringWheelHeatView - main button showing heat level (SteeringWheelHeatLevel component)
# row1SteeringWheelHeatAutoView - AUTO mode button (reserved for future use)
.field private row1SteeringWheelHeatView:Lcom/geely/hvac/component/SteeringWheelHeatLevel;
.field private row1SteeringWheelHeatAutoView:Landroid/view/View;

# Row1 Steering wheel observables
# row1SteeringWheelHeatLevelObservable - current heat level (0-3)
# row1SteeringWheelHeatSupportedObservable - whether feature is supported (for enabled state)
.field private row1SteeringWheelHeatLevelObservable:Landroidx/databinding/ObservableInt;
.field private row1SteeringWheelHeatSupportedObservable:Landroidx/databinding/ObservableInt;

# Row1 Steering wheel container view - heat_steering_wheel container
# Its visibility is toggled based on front/back panel state
.field private row1SteeringWheelContainerView:Landroid/view/View;

# Panel switch observable - true = front panel (row1), false = back panel (row2)
# When this changes, we update visibility of all seat elements
.field private acPanelFrontObservable:Landroidx/databinding/ObservableBoolean;

# Row2 (rear seats) observables - IMPORTANT for independent updates
# row2LeftLevelObservable - left rear seat heat level (0-3)
# row2LeftSupportedObservable - whether left rear seat heat is supported
# row2RightLevelObservable - right rear seat heat level (0-3)
# row2RightSupportedObservable - whether right rear seat heat is supported
#
# These are separate to allow independent updates when one rear seat
# is activated from the rear passenger console without affecting the other
.field private row2LeftLevelObservable:Landroidx/databinding/ObservableInt;
.field private row2LeftSupportedObservable:Landroidx/databinding/ObservableInt;
.field private row2RightLevelObservable:Landroidx/databinding/ObservableInt;
.field private row2RightSupportedObservable:Landroidx/databinding/ObservableInt;

# Row1 (front seats) views - VISIBILITY ONLY (no level/enabled updates here)
# These views are shown when front panel is active, hidden when back panel is active
# row1LeftSeatHeatView - front left seat heat button (ID: 0x7f090267)
# row1RightSeatHeatView - front right seat heat button (ID: 0x7f09026c)
# row1LeftSeatWindView - front left seat ventilation button (ID: 0x7f090268)
# row1RightSeatWindView - front right seat ventilation button (ID: 0x7f09026d)
# row1LeftSeatHeatAutoView - front left seat heat AUTO button (tag: seat_tag_15)
# row1RightSeatHeatAutoView - front right seat heat AUTO button (tag: seat_tag_14)
# row1LeftSeatWindAutoView - front left seat wind AUTO button (tag: seat_tag_21)
# row1RightSeatWindAutoView - front right seat wind AUTO button (tag: seat_tag_24)
.field private row1LeftSeatHeatView:Landroid/view/View;
.field private row1RightSeatHeatView:Landroid/view/View;
.field private row1LeftSeatWindView:Landroid/view/View;
.field private row1RightSeatWindView:Landroid/view/View;
.field private row1LeftSeatHeatAutoView:Landroid/view/View;
.field private row1RightSeatHeatAutoView:Landroid/view/View;
.field private row1LeftSeatWindAutoView:Landroid/view/View;
.field private row1RightSeatWindAutoView:Landroid/view/View;

# Row2 (rear seats) views - VISIBILITY + LEVEL/ENABLED updates
# These views are shown when back panel is active, hidden when front panel is active
# Additionally, their level and enabled state are updated when observables change
# row2LeftSeatHeatView - rear left seat heat button (ID: 0x7f090270)
# row2RightSeatHeatView - rear right seat heat button (ID: 0x7f090272)
.field private row2LeftSeatHeatView:Landroid/view/View;
.field private row2RightSeatHeatView:Landroid/view/View;

# Row1 (front seats) observables - for LEVEL/ENABLED updates on AC page
# These are needed to update front seat heat/wind buttons when values change
.field private row1LeftHeatLevelObservable:Landroidx/databinding/ObservableInt;
.field private row1LeftHeatSupportedObservable:Landroidx/databinding/ObservableInt;
.field private row1RightHeatLevelObservable:Landroidx/databinding/ObservableInt;
.field private row1RightHeatSupportedObservable:Landroidx/databinding/ObservableInt;
.field private row1LeftWindLevelObservable:Landroidx/databinding/ObservableInt;
.field private row1LeftWindSupportedObservable:Landroidx/databinding/ObservableInt;
.field private row1RightWindLevelObservable:Landroidx/databinding/ObservableInt;
.field private row1RightWindSupportedObservable:Landroidx/databinding/ObservableInt;

# Row1 (front seats) AUTO observables - for AUTO button visual state updates
# When these change, we update the TextViewWithBg button visual (pressed/normal)
.field private row1LeftSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;
.field private row1RightSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;
.field private row1LeftSeatWindAutoObservable:Landroidx/databinding/ObservableInt;
.field private row1RightSeatWindAutoObservable:Landroidx/databinding/ObservableInt;

# Row1 (front) massage button - shown on front panel, hidden on back panel
# row1LeftMassageView - massage button (ID: 0x7f090265)
# row1LeftMassageLevelObservable - massage level (0-3)
# row1LeftMassageStateObservable - massage state (on/off boolean)
# row1LeftMassageSupportedObservable - massage support status
.field private row1LeftMassageView:Landroid/view/View;
.field private row1LeftMassageLevelObservable:Landroidx/databinding/ObservableInt;
.field private row1LeftMassageStateObservable:Landroidx/databinding/ObservableBoolean;
.field private row1LeftMassageSupportedObservable:Landroidx/databinding/ObservableInt;


#############################################################################
# CONSTRUCTOR
#############################################################################

# Default constructor - calls parent OnPropertyChangedCallback constructor
.method public constructor <init>()V
    .locals 0

    # Call parent constructor
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


#############################################################################
# ONCLICK IMPLEMENTATION
#############################################################################

# onClick - handles click events on all seat buttons
# 
# This method determines which view was clicked and calls the appropriate
# method in AppMainViewModel.
#
# Parameters:
#   p1 (v) - the View that was clicked
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

    # v0 = model reference
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    # If model is null, return immediately (cannot handle click)
    if-eqz v0, :cond_end

    # ---- Check ROW1 LEFT HEAT ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_right_heat
    if-ne p1, v1, :cond_check_row1_right_heat
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1LeftSeatHeatClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_right_heat
    # ---- Check ROW1 RIGHT HEAT ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_left_wind
    if-ne p1, v1, :cond_check_row1_left_wind
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1RightSeatHeatClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_left_wind
    # ---- Check ROW1 LEFT WIND ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_right_wind
    if-ne p1, v1, :cond_check_row1_right_wind
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1LeftSeatVentilateClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_right_wind
    # ---- Check ROW1 RIGHT WIND ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_left_heat_auto
    if-ne p1, v1, :cond_check_row1_left_heat_auto
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1RightSeatVentilateClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_left_heat_auto
    # ---- Check ROW1 LEFT HEAT AUTO ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatAutoView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_right_heat_auto
    if-ne p1, v1, :cond_check_row1_right_heat_auto
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1LeftAutoSeatHeatClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_right_heat_auto
    # ---- Check ROW1 RIGHT HEAT AUTO ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatAutoView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_left_wind_auto
    if-ne p1, v1, :cond_check_row1_left_wind_auto
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1RightAutoSeatHeatClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_left_wind_auto
    # ---- Check ROW1 LEFT WIND AUTO ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindAutoView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_right_wind_auto
    if-ne p1, v1, :cond_check_row1_right_wind_auto
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1LeftAutoSeatVentilateClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_right_wind_auto
    # ---- Check ROW1 RIGHT WIND AUTO ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindAutoView:Landroid/view/View;
    if-eqz v1, :cond_check_row1_left_massage
    if-ne p1, v1, :cond_check_row1_left_massage
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row1RightAutoSeatVentilateClick(Landroid/view/View;)V
    return-void

    :cond_check_row1_left_massage
    # ---- Check ROW1 LEFT MASSAGE ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageView:Landroid/view/View;
    if-eqz v1, :cond_check_row2_left
    if-ne p1, v1, :cond_check_row2_left
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->massageLevelClick(Landroid/view/View;)V
    return-void

    :cond_check_row2_left
    # ---- Check ROW2 LEFT seat heat ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftSeatHeatView:Landroid/view/View;
    if-eqz v1, :cond_check_row2_right
    if-ne p1, v1, :cond_check_row2_right
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row2LeftSeatHeatClick(Landroid/view/View;)V
    return-void

    :cond_check_row2_right
    # ---- Check ROW2 RIGHT seat heat ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightSeatHeatView:Landroid/view/View;
    if-eqz v1, :cond_steering
    if-ne p1, v1, :cond_steering
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->row2RightSeatHeatClick(Landroid/view/View;)V
    return-void

    :cond_steering
    # ---- Default: STEERING WHEEL heat click ----
    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->steeringWheelHeatClick(Landroid/view/View;)V

    :cond_end
    return-void
.end method


#############################################################################
# ONPROPERTYCHANGED IMPLEMENTATION
#############################################################################

# onPropertyChanged - called when any subscribed observable changes
#
# This method determines which observable changed and posts the appropriate
# Runnable to the UI thread for updating the corresponding UI elements.
#
# Observable -> Runnable mapping:
# - acPanelFrontObservable -> ContainerRunnable (update visibility of all elements)
# - steeringWheelLevelObservable -> LevelRunnable (update steering wheel level only)
# - row2LeftLevelObservable or row2LeftSupportedObservable -> Row2LeftRunnable (update left rear only)
# - row2RightLevelObservable or row2RightSupportedObservable -> Row2RightRunnable (update right rear only)
# - steeringWheelSupportedObservable -> FullUpdateRunnable (update steering wheel enabled + level)
#
# IMPORTANT: Row2 observables are checked BEFORE steering wheel supported observable
# to ensure independent updates for left and right rear seats.
#
# Parameters:
#   p1 (sender) - the Observable that changed
#   p2 (propertyId) - the property ID (not used, always 0 for ObservableInt/Boolean)
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sender",
            "propertyId"
        }
    .end annotation

    # v0 = row1SteeringWheelHeatView (used to post Runnables to UI thread)
    # All Runnables are posted via this view's post() method
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatView:Lcom/geely/hvac/component/SteeringWheelHeatLevel;

    # If view is null, cannot post Runnables - return immediately
    if-eqz v0, :cond_end

    # ---- CHECK 1: Is it acPanelFrontObservable? ----
    # This observable controls which panel (front/back) is shown
    # When it changes, we need to update visibility of all seat elements
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->acPanelFrontObservable:Landroidx/databinding/ObservableBoolean;

    # If acPanelFrontObservable is null, skip to next check
    if-eqz v1, :cond_check_sw_level

    # If sender (p1) != acPanelFrontObservable, skip to next check
    if-ne p1, v1, :cond_check_sw_level

    # It IS acPanelFrontObservable - post ContainerRunnable
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$ContainerRunnable;

    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$ContainerRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_check_sw_level
    # ---- CHECK 2: Is it row1SteeringWheelHeatLevelObservable or row1SteeringWheelHeatSupportedObservable? ----
    # When either changes, update the steering wheel heat button
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_sw_supported
    if-eq p1, v1, :cond_row1_sw_update

    :cond_check_sw_supported
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row2_left
    if-ne p1, v1, :cond_check_row2_left

    :cond_row1_sw_update
    # Post Row1SteeringWheelHeatRunnable
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1SteeringWheelHeatRunnable;
    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1SteeringWheelHeatRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_check_row2_left
    # ---- CHECK 3: Is it row2 LEFT level or supported observable? ----
    # When either left level or left supported changes, update ONLY the left rear seat
    # This allows independent animation when rear passenger activates their seat heat
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftLevelObservable:Landroidx/databinding/ObservableInt;

    # If row2LeftLevelObservable is null, check row2LeftSupportedObservable
    if-eqz v1, :cond_check_row2_left_sup

    # If sender (p1) == row2LeftLevelObservable, jump to update
    if-eq p1, v1, :cond_row2_left_update

    :cond_check_row2_left_sup
    # Check row2LeftSupportedObservable
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftSupportedObservable:Landroidx/databinding/ObservableInt;

    # If row2LeftSupportedObservable is null, skip to row2 right checks
    if-eqz v1, :cond_check_row2_right_lev

    # If sender (p1) != row2LeftSupportedObservable, skip to row2 right checks
    if-ne p1, v1, :cond_check_row2_right_lev

    :cond_row2_left_update
    # It IS one of the row2 LEFT observables - post Row2LeftRunnable
    # This Runnable will update ONLY the left rear seat heat button
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row2LeftRunnable;

    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row2LeftRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_check_row2_right_lev
    # ---- CHECK 4: Is it row2 RIGHT level or supported observable? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row2_right_sup
    if-eq p1, v1, :cond_row2_right_update

    :cond_check_row2_right_sup
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_heat_lev
    if-ne p1, v1, :cond_check_row1_left_heat_lev

    :cond_row2_right_update
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row2RightRunnable;
    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row2RightRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_check_row1_left_heat_lev
    # ---- CHECK 5: Is it row1 LEFT HEAT level or supported? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftHeatLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_heat_sup
    if-eq p1, v1, :cond_row1_left_heat_update

    :cond_check_row1_left_heat_sup
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftHeatSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_right_heat_lev
    if-ne p1, v1, :cond_check_row1_right_heat_lev

    :cond_row1_left_heat_update
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftHeatRunnable;
    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftHeatRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_check_row1_right_heat_lev
    # ---- CHECK 6: Is it row1 RIGHT HEAT level or supported? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightHeatLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_right_heat_sup
    if-eq p1, v1, :cond_row1_right_heat_update

    :cond_check_row1_right_heat_sup
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightHeatSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_wind_lev
    if-ne p1, v1, :cond_check_row1_left_wind_lev

    :cond_row1_right_heat_update
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1RightHeatRunnable;
    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1RightHeatRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_check_row1_left_wind_lev
    # ---- CHECK 7: Is it row1 LEFT WIND level or supported? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftWindLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_wind_sup
    if-eq p1, v1, :cond_row1_left_wind_update

    :cond_check_row1_left_wind_sup
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftWindSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_right_wind_lev
    if-ne p1, v1, :cond_check_row1_right_wind_lev

    :cond_row1_left_wind_update
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftWindRunnable;
    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftWindRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_check_row1_right_wind_lev
    # ---- CHECK 8: Is it row1 RIGHT WIND level or supported? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightWindLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_right_wind_sup
    if-eq p1, v1, :cond_row1_right_wind_update

    :cond_check_row1_right_wind_sup
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightWindSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_heat_auto
    if-ne p1, v1, :cond_check_row1_left_heat_auto

    :cond_row1_right_wind_update
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1RightWindRunnable;
    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1RightWindRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_check_row1_left_heat_auto
    # ---- CHECK 9: Is it row1 LEFT HEAT AUTO observable? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_right_heat_auto
    if-ne p1, v1, :cond_check_row1_right_heat_auto
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftSeatHeatAuto()V
    return-void

    :cond_check_row1_right_heat_auto
    # ---- CHECK 10: Is it row1 RIGHT HEAT AUTO observable? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_wind_auto
    if-ne p1, v1, :cond_check_row1_left_wind_auto
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1RightSeatHeatAuto()V
    return-void

    :cond_check_row1_left_wind_auto
    # ---- CHECK 11: Is it row1 LEFT WIND AUTO observable? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_right_wind_auto
    if-ne p1, v1, :cond_check_row1_right_wind_auto
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftSeatWindAuto()V
    return-void

    :cond_check_row1_right_wind_auto
    # ---- CHECK 12: Is it row1 RIGHT WIND AUTO observable? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_massage_lev
    if-ne p1, v1, :cond_check_row1_left_massage_lev
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1RightSeatWindAuto()V
    return-void

    :cond_check_row1_left_massage_lev
    # ---- CHECK 13: Is it row1 LEFT MASSAGE level, state, or supported? ----
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_check_row1_left_massage_state
    if-eq p1, v1, :cond_row1_left_massage_update

    :cond_check_row1_left_massage_state
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageStateObservable:Landroidx/databinding/ObservableBoolean;
    if-eqz v1, :cond_check_row1_left_massage_sup
    if-eq p1, v1, :cond_row1_left_massage_update

    :cond_check_row1_left_massage_sup
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_end
    if-ne p1, v1, :cond_end

    :cond_row1_left_massage_update
    new-instance v1, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftMassageRunnable;
    invoke-direct {v1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController$Row1LeftMassageRunnable;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_end
    # No matching observable found - do nothing
    return-void
.end method


#############################################################################
# UPDATE METHODS - Called by Runnables on UI thread
#############################################################################

# updateContainerVisibility - Updates visibility of all seat elements
#
# Called by: ContainerRunnable (when acPanelFrontObservable changes)
#
# Logic:
# - If acPanelFrontObservable.get() == true (front panel):
#   - Show front elements (steering wheel, row1 seats) -> VISIBLE (0)
#   - Hide back elements (row2 seats) -> GONE (8)
# - If acPanelFrontObservable.get() == false (back panel):
#   - Hide front elements -> GONE (8)
#   - Show back elements -> VISIBLE (0)
#
# IMPORTANT: This method only changes VISIBILITY, not level/enabled state.
# Level/enabled state for row2 is updated separately by updateRow2Left/Right.
.method public updateContainerVisibility()V
    .locals 4

    # v0 = acPanelFrontObservable reference
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->acPanelFrontObservable:Landroidx/databinding/ObservableBoolean;

    # If observable is null, cannot determine panel state - return
    if-eqz v0, :cond_end

    # v1 = current panel state (true = front, false = back)
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    # v2 = visibility for FRONT elements (steering wheel, row1 seats)
    # v3 = visibility for BACK elements (row2 seats)
    # Determine visibility values based on panel state
    if-eqz v1, :cond_back_panel

    # ---- FRONT PANEL ACTIVE ----
    # v2 = VISIBLE (0) for front elements
    # v3 = GONE (8) for back elements
    const/4 v2, 0x0
    const/16 v3, 0x8
    goto :goto_update

    :cond_back_panel
    # ---- BACK PANEL ACTIVE ----
    # v2 = GONE (8) for front elements
    # v3 = VISIBLE (0) for back elements
    const/16 v2, 0x8
    const/4 v3, 0x0

    :goto_update
    # ---- Update row1 steering wheel container visibility ----
    # This is the heat_steering_wheel container (ID: 0x7f090135)
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelContainerView:Landroid/view/View;
    if-eqz v0, :cond_row1_left_heat
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_left_heat
    # ---- Update row1 left seat heat visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatView:Landroid/view/View;
    if-eqz v0, :cond_row1_right_heat
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_right_heat
    # ---- Update row1 right seat heat visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatView:Landroid/view/View;
    if-eqz v0, :cond_row1_left_wind
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_left_wind
    # ---- Update row1 left seat wind visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindView:Landroid/view/View;
    if-eqz v0, :cond_row1_right_wind
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_right_wind
    # ---- Update row1 right seat wind visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindView:Landroid/view/View;
    if-eqz v0, :cond_row1_left_heat_auto
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_left_heat_auto
    # ---- Update row1 left seat heat AUTO button visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatAutoView:Landroid/view/View;
    if-eqz v0, :cond_row1_right_heat_auto
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_right_heat_auto
    # ---- Update row1 right seat heat AUTO button visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatAutoView:Landroid/view/View;
    if-eqz v0, :cond_row1_left_wind_auto
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_left_wind_auto
    # ---- Update row1 left seat wind AUTO button visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindAutoView:Landroid/view/View;
    if-eqz v0, :cond_row1_right_wind_auto
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_right_wind_auto
    # ---- Update row1 right seat wind AUTO button visibility ----
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindAutoView:Landroid/view/View;
    if-eqz v0, :cond_row1_left_massage
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row1_left_massage
    # ---- Update row1 left massage button visibility ----
    # Note: uses v2 (front elements visibility) - shown on front, hidden on back
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageView:Landroid/view/View;
    if-eqz v0, :cond_row2_left_heat
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_row2_left_heat
    # ---- Update row2 left seat heat visibility ----
    # Note: uses v3 (back elements visibility), not v2
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftSeatHeatView:Landroid/view/View;
    if-eqz v0, :cond_row2_right_heat
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_row2_right_heat
    # ---- Update row2 right seat heat visibility ----
    # Note: uses v3 (back elements visibility), not v2
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightSeatHeatView:Landroid/view/View;
    if-eqz v0, :cond_end
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_end
    return-void
.end method


# updateRow1SteeringWheelHeat - Updates row1 steering wheel heat (enabled + level)
#
# Called by: Row1SteeringWheelHeatRunnable (when row1SteeringWheelHeatLevelObservable 
#            or row1SteeringWheelHeatSupportedObservable changes)
#
# This method updates both:
# 1. Enabled state - determines if button can be clicked
# 2. Level display - shows current heat level (ALWAYS updated, component handles display)
#
# IMPORTANT: Level is ALWAYS updated regardless of enable state.
# This matches the original data binding behavior where level and enable
# are bound independently. The SeatFeatureLevel component decides how to
# display the level based on its enable state.
#
# Uses:
# - SeatFeatureLevel.bindSeatFeatureLevelEnable() for enabled state
# - SeatFeatureLevel.bindSeatFeatureLevelLevel() for level display
.method public updateRow1SteeringWheelHeat()V
    .locals 4

    # v0 = row1SteeringWheelHeatView reference
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatView:Lcom/geely/hvac/component/SteeringWheelHeatLevel;

    # If view is null, cannot update - return
    if-eqz v0, :cond_end

    # v1 = model reference
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    # If model is null, cannot determine availability - return
    if-eqz v1, :cond_end

    # v2 = row1SteeringWheelHeatSupportedObservable reference
    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatSupportedObservable:Landroidx/databinding/ObservableInt;

    # If supported observable is null, cannot check availability - return
    if-eqz v2, :cond_end

    # v2 = current supported value
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    # v3 = isSeatHeatVentilateAvailable(supported) - true if feature is enabled
    invoke-virtual {v1, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v3

    # Update enabled state
    invoke-static {v0, v3}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # v1 = row1SteeringWheelHeatLevelObservable reference
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatLevelObservable:Landroidx/databinding/ObservableInt;

    # If level observable is null, cannot get level - return
    if-eqz v1, :cond_end

    # v2 = current level value (0-3)
    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    # ALWAYS update the view's level display (regardless of enable state)
    # The SeatFeatureLevel component handles how to display level based on enable state
    invoke-static {v0, v2}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method


# updateRow2Left - Updates row2 LEFT seat heat (enabled + level)
#
# Called by: Row2LeftRunnable (when row2LeftLevelObservable or row2LeftSupportedObservable changes)
#
# This method updates the LEFT rear seat heat button ONLY:
# 1. Enabled state - determines if button can be clicked
# 2. Level display - ALWAYS updated (component handles display based on enable state)
#
# IMPORTANT: Does NOT update the right rear seat button.
# This allows independent animation when rear passenger activates from their console.
#
# Uses:
# - SeatFeatureLevel.bindSeatFeatureLevelEnable() for enabled state
# - SeatFeatureLevel.bindSeatFeatureLevelLevel() for level display
.method public updateRow2Left()V
    .locals 5

    # v0 = model reference
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    # If model is null, cannot determine availability - return
    if-eqz v0, :cond_end

    # v1 = row2LeftSeatHeatView reference
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftSeatHeatView:Landroid/view/View;

    # If view is null, cannot update - return
    if-eqz v1, :cond_end

    # v2 = row2LeftLevelObservable reference
    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftLevelObservable:Landroidx/databinding/ObservableInt;

    # If level observable is null, cannot get level - return
    if-eqz v2, :cond_end

    # v3 = row2LeftSupportedObservable reference
    iget-object v3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftSupportedObservable:Landroidx/databinding/ObservableInt;

    # If supported observable is null, cannot check availability - return
    if-eqz v3, :cond_end

    # v3 = current supported value
    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    # v4 = isSeatHeatVentilateAvailable(supported) - true if feature is enabled
    invoke-virtual {v0, v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v4

    # Cast view to SeatFeatureLevel for binding methods
    check-cast v1, Lcom/geely/hvac/component/SeatFeatureLevel;

    # Update enabled state
    invoke-static {v1, v4}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # ALWAYS update level (component handles display based on enable state)
    # v3 = current level value (0-3)
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    # Update the view's level display (this triggers the animation)
    invoke-static {v1, v3}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method


# updateRow2Right - Updates row2 RIGHT seat heat (enabled + level)
#
# Called by: Row2RightRunnable (when row2RightLevelObservable or row2RightSupportedObservable changes)
#
# This method updates the RIGHT rear seat heat button ONLY:
# 1. Enabled state - determines if button can be clicked
# 2. Level display - ALWAYS updated (component handles display based on enable state)
#
# IMPORTANT: Does NOT update the left rear seat button.
# This allows independent animation when rear passenger activates from their console.
#
# Uses:
# - SeatFeatureLevel.bindSeatFeatureLevelEnable() for enabled state
# - SeatFeatureLevel.bindSeatFeatureLevelLevel() for level display
.method public updateRow2Right()V
    .locals 5

    # v0 = model reference
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    # If model is null, cannot determine availability - return
    if-eqz v0, :cond_end

    # v1 = row2RightSeatHeatView reference
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightSeatHeatView:Landroid/view/View;

    # If view is null, cannot update - return
    if-eqz v1, :cond_end

    # v2 = row2RightLevelObservable reference
    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightLevelObservable:Landroidx/databinding/ObservableInt;

    # If level observable is null, cannot get level - return
    if-eqz v2, :cond_end

    # v3 = row2RightSupportedObservable reference
    iget-object v3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightSupportedObservable:Landroidx/databinding/ObservableInt;

    # If supported observable is null, cannot check availability - return
    if-eqz v3, :cond_end

    # v3 = current supported value
    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    # v4 = isSeatHeatVentilateAvailable(supported) - true if feature is enabled
    invoke-virtual {v0, v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v4

    # Cast view to SeatFeatureLevel for binding methods
    check-cast v1, Lcom/geely/hvac/component/SeatFeatureLevel;

    # Update enabled state
    invoke-static {v1, v4}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # ALWAYS update level (component handles display based on enable state)
    # v3 = current level value (0-3)
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    # Update the view's level display (this triggers the animation)
    invoke-static {v1, v3}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method


# updateUI - Full UI update for initialization
#
# Called by: initAcPanelController() in AirConditionViewHolder after setup is complete
#
# This method performs a complete update of all UI elements.
.method public updateUI()V
    .locals 0

    # Update visibility of all elements based on current panel state
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateContainerVisibility()V

    # Update row1 steering wheel heat
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1SteeringWheelHeat()V

    # Update row1 front seat buttons
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftHeat()V
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1RightHeat()V
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftWind()V
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1RightWind()V

    # Update row1 AUTO buttons
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftSeatHeatAuto()V
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1RightSeatHeatAuto()V
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftSeatWindAuto()V
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1RightSeatWindAuto()V

    # Update row1 left massage button
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow1LeftMassage()V

    # Update row2 rear seat buttons
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow2Left()V
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateRow2Right()V

    return-void
.end method


# updateRow1LeftHeat - Updates row1 LEFT seat heat (enabled + level)
# ALWAYS updates level regardless of enable state (matches original data binding behavior)
.method public updateRow1LeftHeat()V
    .locals 5

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatView:Landroid/view/View;
    if-eqz v1, :cond_end

    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftHeatLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v2, :cond_end

    iget-object v3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftHeatSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v3, :cond_end

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-virtual {v0, v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z
    move-result v4

    check-cast v1, Lcom/geely/hvac/component/SeatFeatureLevel;

    invoke-static {v1, v4}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # ALWAYS update level (component handles display based on enable state)
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-static {v1, v3}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method


# updateRow1RightHeat - Updates row1 RIGHT seat heat (enabled + level)
# ALWAYS updates level regardless of enable state (matches original data binding behavior)
.method public updateRow1RightHeat()V
    .locals 5

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatView:Landroid/view/View;
    if-eqz v1, :cond_end

    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightHeatLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v2, :cond_end

    iget-object v3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightHeatSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v3, :cond_end

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-virtual {v0, v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z
    move-result v4

    check-cast v1, Lcom/geely/hvac/component/SeatFeatureLevel;

    invoke-static {v1, v4}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # ALWAYS update level (component handles display based on enable state)
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-static {v1, v3}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method


# updateRow1LeftWind - Updates row1 LEFT seat ventilation (enabled + level)
# ALWAYS updates level regardless of enable state (matches original data binding behavior)
.method public updateRow1LeftWind()V
    .locals 5

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindView:Landroid/view/View;
    if-eqz v1, :cond_end

    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftWindLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v2, :cond_end

    iget-object v3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftWindSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v3, :cond_end

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-virtual {v0, v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z
    move-result v4

    check-cast v1, Lcom/geely/hvac/component/SeatFeatureLevel;

    invoke-static {v1, v4}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # ALWAYS update level (component handles display based on enable state)
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-static {v1, v3}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method


# updateRow1RightWind - Updates row1 RIGHT seat ventilation (enabled + level)
# ALWAYS updates level regardless of enable state (matches original data binding behavior)
.method public updateRow1RightWind()V
    .locals 5

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindView:Landroid/view/View;
    if-eqz v1, :cond_end

    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightWindLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v2, :cond_end

    iget-object v3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightWindSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v3, :cond_end

    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-virtual {v0, v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z
    move-result v4

    check-cast v1, Lcom/geely/hvac/component/SeatFeatureLevel;

    invoke-static {v1, v4}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # ALWAYS update level (component handles display based on enable state)
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I
    move-result v3

    invoke-static {v1, v3}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method


#############################################################################
# SETTER METHODS - Used to inject dependencies from AirConditionViewHolder
#############################################################################

# setModel - Sets the AppMainViewModel reference
# 
# The model is used to:
# 1. Get observables for subscribing to property changes
# 2. Call click handlers (steeringWheelHeatClick, row2LeftSeatHeatClick, row2RightSeatHeatClick)
# 3. Check feature availability via isSeatHeatVentilateAvailable()
#
# Returns: this (for method chaining)
.method public setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object p0
.end method

# setRow1SteeringWheelHeatView - Sets the row1 steering wheel heat level view
#
# This view is a SteeringWheelHeatLevel component that displays:
# - Current heat level (0-3 bars)
# - Enabled/disabled state
#
# It also serves as the anchor for posting Runnables to the UI thread.
.method public setRow1SteeringWheelHeatView(Lcom/geely/hvac/component/SteeringWheelHeatLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatView:Lcom/geely/hvac/component/SteeringWheelHeatLevel;

    return-void
.end method

# setRow1SteeringWheelHeatAutoView - Sets the row1 steering wheel AUTO button view
#
# This is the AUTO mode toggle button for steering wheel heat.
# Reserved for future use.
.method public setRow1SteeringWheelHeatAutoView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatAutoView:Landroid/view/View;

    return-void
.end method

# setRow1SteeringWheelHeatObservables - Sets row1 steering wheel heat observables
#
# Parameters:
# p1 = row1SteeringWheelHeatLevelObservable (heat level 0-3)
# p2 = row1SteeringWheelHeatSupportedObservable (supported state)
#
# When these change, Row1SteeringWheelHeatRunnable is posted to update the UI.
.method public setRow1SteeringWheelHeatObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelHeatSupportedObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method

# setRow1SteeringWheelContainerView - Sets the row1 steering wheel container view
#
# This is the heat_steering_wheel container (ID: 0x7f090135) that holds
# the steering wheel heat controls. Its visibility is toggled based on
# front/back panel state.
.method public setRow1SteeringWheelContainerView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1SteeringWheelContainerView:Landroid/view/View;

    return-void
.end method

# setAcPanelFrontObservable - Sets the panel state observable
#
# This ObservableBoolean indicates which panel is currently active:
# - true = front panel (show steering wheel, row1 seats; hide row2 seats)
# - false = back panel (hide steering wheel, row1 seats; show row2 seats)
#
# When it changes, ContainerRunnable is posted to update visibility of all elements.
.method public setAcPanelFrontObservable(Landroidx/databinding/ObservableBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->acPanelFrontObservable:Landroidx/databinding/ObservableBoolean;

    return-void
.end method

# setSeatViews - Sets all seat views at once
#
# Parameters (in order):
# p1 = row1LeftSeatHeatView (ID: 0x7f090267) - front left heat (driver)
# p2 = row1RightSeatHeatView (ID: 0x7f09026c) - front right heat (passenger)
# p3 = row1LeftSeatWindView (ID: 0x7f090268) - front left wind (driver)
# p4 = row1RightSeatWindView (ID: 0x7f09026d) - front right wind (passenger)
# p5 = row1LeftSeatHeatAutoView (tag: seat_tag_15) - front left heat AUTO (driver)
# p6 = row1RightSeatHeatAutoView (tag: seat_tag_14) - front right heat AUTO (passenger)
# p7 = row1LeftSeatWindAutoView (tag: seat_tag_21) - front left wind AUTO (driver)
# p8 = row1RightSeatWindAutoView (tag: seat_tag_24) - front right wind AUTO (passenger)
# p9 = row2LeftSeatHeatView (ID: 0x7f090270) - rear left heat
# p10 = row2RightSeatHeatView (ID: 0x7f090272) - rear right heat
#
# Row1 views are only used for visibility control.
# Row2 views are used for visibility + level/enabled updates + click handling.
.method public setSeatViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    # Store row1 (front) views - visibility only
    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatView:Landroid/view/View;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatView:Landroid/view/View;
    iput-object p3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindView:Landroid/view/View;
    iput-object p4, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindView:Landroid/view/View;
    iput-object p5, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatAutoView:Landroid/view/View;
    iput-object p6, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatAutoView:Landroid/view/View;
    iput-object p7, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindAutoView:Landroid/view/View;
    iput-object p8, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindAutoView:Landroid/view/View;
    
    # Store row2 (rear) views - visibility + level/enabled + clicks
    iput-object p9, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftSeatHeatView:Landroid/view/View;
    iput-object p10, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightSeatHeatView:Landroid/view/View;

    return-void
.end method

# setRow2Observables - Sets all row2 (rear seat) observables at once
.method public setRow2Observables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2LeftSupportedObservable:Landroidx/databinding/ObservableInt;
    iput-object p3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p4, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row2RightSupportedObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


# setRow1LeftHeatObservables - Sets row1 left heat observables
.method public setRow1LeftHeatObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftHeatLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftHeatSupportedObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


# setRow1RightHeatObservables - Sets row1 right heat observables
.method public setRow1RightHeatObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightHeatLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightHeatSupportedObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


# setRow1LeftWindObservables - Sets row1 left wind observables
.method public setRow1LeftWindObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftWindLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftWindSupportedObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


# setRow1RightWindObservables - Sets row1 right wind observables
.method public setRow1RightWindObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightWindLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightWindSupportedObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


#############################################################################
# AUTO BUTTON OBSERVABLES SETTERS
#############################################################################

# setRow1LeftSeatHeatAutoObservable - Sets left seat heat AUTO observable
.method public setRow1LeftSeatHeatAutoObservable(Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


# setRow1RightSeatHeatAutoObservable - Sets right seat heat AUTO observable
.method public setRow1RightSeatHeatAutoObservable(Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


# setRow1LeftSeatWindAutoObservable - Sets left seat wind AUTO observable
.method public setRow1LeftSeatWindAutoObservable(Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindAutoObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


# setRow1RightSeatWindAutoObservable - Sets right seat wind AUTO observable
.method public setRow1RightSeatWindAutoObservable(Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindAutoObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


#############################################################################
# ROW1 LEFT MASSAGE SETTERS
#############################################################################

# setRow1LeftMassageView - Sets the row1 left massage button view
.method public setRow1LeftMassageView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageView:Landroid/view/View;

    return-void
.end method


# setRow1LeftMassageObservables - Sets row1 left massage observables
#
# Parameters:
# p1 = row1LeftMassageLevelObservable (massage level 0-3)
# p2 = row1LeftMassageStateObservable (massage state on/off boolean)
# p3 = row1LeftMassageSupportedObservable (massage support status)
.method public setRow1LeftMassageObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableBoolean;Landroidx/databinding/ObservableInt;)V
    .locals 0

    iput-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageLevelObservable:Landroidx/databinding/ObservableInt;
    iput-object p2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageStateObservable:Landroidx/databinding/ObservableBoolean;
    iput-object p3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageSupportedObservable:Landroidx/databinding/ObservableInt;

    return-void
.end method


#############################################################################
# AUTO BUTTON UPDATE METHODS
#############################################################################

# updateRow1LeftSeatHeatAuto - Updates left seat heat AUTO button visual
# Original binding logic: bindSeatLevel(view, autoValue, isFunctionActive(supportStatus))
# autoValue: 0=off, 1=on, 2=error
# isFunctionActive typically returns 1 when supported
# So: if autoValue == 1 (on) -> active, if autoValue != 1 (off/error) -> inactive
.method public updateRow1LeftSeatHeatAuto()V
    .locals 3

    # v0 = view
    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatAutoView:Landroid/view/View;
    if-eqz v0, :cond_end

    # v1 = auto observable
    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_end

    # Get auto value (0 = off, 1 = on, 2 = error)
    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I
    move-result v1

    # Cast view to TextViewWithBg
    check-cast v0, Lcom/geely/hvac/component/TextViewWithBg;
    
    # Enable the button (required for visual state to show)
    const/4 v2, 0x1
    invoke-static {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindEnable(Lcom/geely/hvac/component/TextViewWithBg;Z)V
    
    # Pass (autoValue, 1) - matches original binding: (autoValue, isFunctionActive)
    # Logic: if autoValue == 1 -> active, otherwise -> inactive
    invoke-static {v0, v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindSeatLevel(Lcom/geely/hvac/component/TextViewWithBg;II)V

    :cond_end
    return-void
.end method


# updateRow1RightSeatHeatAuto - Updates right seat heat AUTO button visual
# Original binding logic: bindSeatLevel(view, autoValue, 1)
.method public updateRow1RightSeatHeatAuto()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatAutoView:Landroid/view/View;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatHeatAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_end

    # Get auto value (0 = off, 1 = on, 2 = error)
    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I
    move-result v1

    check-cast v0, Lcom/geely/hvac/component/TextViewWithBg;
    
    # Enable the button
    const/4 v2, 0x1
    invoke-static {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindEnable(Lcom/geely/hvac/component/TextViewWithBg;Z)V
    
    # Pass (autoValue, 1) - matches original binding
    invoke-static {v0, v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindSeatLevel(Lcom/geely/hvac/component/TextViewWithBg;II)V

    :cond_end
    return-void
.end method


# updateRow1LeftSeatWindAuto - Updates left seat wind AUTO button visual
# Original binding logic: bindSeatLevel(view, autoValue, 1)
.method public updateRow1LeftSeatWindAuto()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindAutoView:Landroid/view/View;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftSeatWindAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_end

    # Get auto value (0 = off, 1 = on, 2 = error)
    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I
    move-result v1

    check-cast v0, Lcom/geely/hvac/component/TextViewWithBg;
    
    # Enable the button
    const/4 v2, 0x1
    invoke-static {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindEnable(Lcom/geely/hvac/component/TextViewWithBg;Z)V
    
    # Pass (autoValue, 1) - matches original binding
    invoke-static {v0, v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindSeatLevel(Lcom/geely/hvac/component/TextViewWithBg;II)V

    :cond_end
    return-void
.end method


# updateRow1RightSeatWindAuto - Updates right seat wind AUTO button visual
# Original binding logic: bindSeatLevel(view, autoValue, 1)
.method public updateRow1RightSeatWindAuto()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindAutoView:Landroid/view/View;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1RightSeatWindAutoObservable:Landroidx/databinding/ObservableInt;
    if-eqz v1, :cond_end

    # Get auto value (0 = off, 1 = on, 2 = error)
    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I
    move-result v1

    check-cast v0, Lcom/geely/hvac/component/TextViewWithBg;
    
    # Enable the button
    const/4 v2, 0x1
    invoke-static {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindEnable(Lcom/geely/hvac/component/TextViewWithBg;Z)V
    
    # Pass (autoValue, 1) - matches original binding
    invoke-static {v0, v1, v2}, Lcom/geely/hvac/component/TextViewWithBg;->bindSeatLevel(Lcom/geely/hvac/component/TextViewWithBg;II)V

    :cond_end
    return-void
.end method


# updateRow1LeftMassage - Updates row1 LEFT massage button (enabled + level)
#
# Called by: Row1LeftMassageRunnable (when massage level, state, or supported changes)
#
# Uses:
# - SeatFeatureLevel.bindSeatFeatureLevelEnable() for enabled state (via isFunctionAvailable)
# - SeatFeatureLevel.bindSeatFeatureLevelLevel() for level display
# - SeatMassageLevel.getLevel(state, rawLevel) to convert raw level to display level
#
# Note: Massage uses isFunctionAvailable() instead of isSeatHeatVentilateAvailable()
# Raw level values like 0x10050701/02/03 must be converted via getLevel(state, level) to 1/2/3
.method public updateRow1LeftMassage()V
    .locals 6

    iget-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->model:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    if-eqz v0, :cond_end

    iget-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageView:Landroid/view/View;
    if-eqz v1, :cond_end

    iget-object v2, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageLevelObservable:Landroidx/databinding/ObservableInt;
    if-eqz v2, :cond_end

    iget-object v3, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageStateObservable:Landroidx/databinding/ObservableBoolean;
    if-eqz v3, :cond_end

    iget-object v4, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->row1LeftMassageSupportedObservable:Landroidx/databinding/ObservableInt;
    if-eqz v4, :cond_end

    # Get support status value and check availability
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I
    move-result v4

    # Check if massage function is available using isFunctionAvailable
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z
    move-result v5

    check-cast v1, Lcom/geely/hvac/component/SeatFeatureLevel;

    # Update enabled state
    invoke-static {v1, v5}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V

    # Get massage state (on/off boolean)
    invoke-virtual {v3}, Landroidx/databinding/ObservableBoolean;->get()Z
    move-result v3

    # Get raw massage level (e.g. 0x10050701, 0x10050702, 0x10050703)
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I
    move-result v4

    # Convert raw level to display level (0-3) using SeatMassageLevel.getLevel(state, rawLevel)
    # Returns 0 if state=false, otherwise converts 0x10050701->1, 0x10050702->2, 0x10050703->3
    invoke-static {v3, v4}, Lcom/geely/hvac/component/SeatMassageLevel;->getLevel(ZI)I
    move-result v4

    # Update level display with converted value
    invoke-static {v1, v4}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :cond_end
    return-void
.end method

