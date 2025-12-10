#############################################################################
# AirConditionViewHolder - ViewHolder for AC panel in the main pager
#
# This class handles:
# 1. Temperature display with color gradients (left and right)
# 2. Row1 (front) controls initialization:
#    - Steering wheel heat
#    - Front left/right seat heat
#    - Front left/right seat ventilation
# 3. Row2 (rear) controls initialization:
#    - Rear left/right seat heat
# 4. Panel switching between front (row1) and back (row2) elements
#
# Layout: pager_item_aircondition.xml
# 
# Key elements managed:
# Row1 (front):
# - steering_wheel_status (0x7f0902e2) - row1 steering wheel heat button
# - heat_steering_wheel (0x7f090135) - row1 steering wheel container
# - row1_left_seat_heat_status (0x7f090267) - row1 left seat heat
# - row1_right_seat_heat_status (0x7f09026c) - row1 right seat heat
# - row1_left_seat_wind_status (0x7f090268) - row1 left seat ventilation
# - row1_right_seat_wind_status (0x7f09026d) - row1 right seat ventilation
# Row2 (rear):
# - row2_left_seat_heat_status (0x7f090270) - row2 left seat heat
# - row2_right_seat_heat_status (0x7f090272) - row2 right seat heat
#############################################################################

.class public Lcom/geely/hvac/adapter/AirConditionViewHolder;
.super Lcom/geely/hvac/adapter/MainPagerViewHolder;
.source "AirConditionViewHolder.java"


# annotations
# MemberClasses annotation declares the inner AcPanelController class
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;
    }
.end annotation

# Generic signature for MainPagerViewHolder<PagerItemAirconditionBinding>
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/hvac/adapter/MainPagerViewHolder<",
        "Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;",
        ">;"
    }
.end annotation


#############################################################################
# INSTANCE FIELDS
#############################################################################

# TAG for logging (class simple name)
.field private final TAG:Ljava/lang/String;

# Utility for converting temperature values to RGB colors for gradient display
.field private final temperRGBUtil:Lcom/geely/hvac/utils/TemperRGBUtil;


#############################################################################
# DIRECT METHODS
#############################################################################

# Constructor - initializes the ViewHolder with binding and context
#
# Parameters:
#   p1 (binding) - PagerItemAirconditionBinding for accessing views
#   p2 (context) - Android Context for resources and utilities
#
# Initialization sequence:
# 1. Call parent MainPagerViewHolder constructor
# 2. Set TAG for logging
# 3. Initialize TemperRGBUtil based on day/night mode
# 4. Log display metrics for debugging
# 5. Set up temperature change listeners
# 6. Initialize AcPanelController
.method public constructor <init>(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "binding",
            "context"
        }
    .end annotation

    # Call parent constructor with binding
    .line 38
    invoke-direct {p0, p1}, Lcom/geely/hvac/adapter/MainPagerViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    # Set TAG to class simple name for logging
    .line 22
    const-class v0, Lcom/geely/hvac/adapter/AirConditionViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder;->TAG:Ljava/lang/String;

    # Initialize TemperRGBUtil based on day/night mode
    # This utility converts temperature values to RGB colors for gradient display
    .line 40
    invoke-static {}, Lcom/geely/hvac/utils/DayNightUtil;->isLight()Z

    move-result v1

    if-eqz v1, :cond_0

    # Day mode (light theme) - use bright colors
    # Hot color: 0xff9500 (orange)
    # Cold color: 0x1a8ed0ff (light blue with alpha)
    # Neutral: 0x7aff
    .line 41
    new-instance v1, Lcom/geely/hvac/utils/TemperRGBUtil;

    const v2, 0xff9500

    const v3, 0x1a8ed0ff

    const/16 v4, 0x7aff

    invoke-direct {v1, v2, v3, v4}, Lcom/geely/hvac/utils/TemperRGBUtil;-><init>(III)V

    iput-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder;->temperRGBUtil:Lcom/geely/hvac/utils/TemperRGBUtil;

    goto :goto_0

    # Night mode (dark theme) - use different colors for better contrast
    # Hot color: 0xff9f0a (orange variant)
    # Cold color: 0x1affffff (white with alpha)
    # Neutral: 0xa84ff
    .line 43
    :cond_0
    new-instance v1, Lcom/geely/hvac/utils/TemperRGBUtil;

    const v2, 0xff9f0a

    const v3, 0x1affffff

    const v4, 0xa84ff

    invoke-direct {v1, v2, v3, v4}, Lcom/geely/hvac/utils/TemperRGBUtil;-><init>(III)V

    iput-object v1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder;->temperRGBUtil:Lcom/geely/hvac/utils/TemperRGBUtil;

    .line 47
    :goto_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 49
    iget v1, p2, Landroid/util/DisplayMetrics;->density:F

    .line 50
    iget v2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 51
    iget v3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 52
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", densityDPI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", screenWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", screenHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 55
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 56
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 57
    iget-object v2, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindWindBlowFace:Lcom/geely/hvac/component/BoolStateImageView;

    invoke-virtual {v2, v1, p2}, Lcom/geely/hvac/component/BoolStateImageView;->measure(II)V

    .line 58
    iget-object p2, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindWindBlowFace:Lcom/geely/hvac/component/BoolStateImageView;

    invoke-virtual {p2}, Lcom/geely/hvac/component/BoolStateImageView;->getMeasuredWidth()I

    move-result p2

    .line 59
    iget-object v1, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->behindWindBlowFace:Lcom/geely/hvac/component/BoolStateImageView;

    invoke-virtual {v1}, Lcom/geely/hvac/component/BoolStateImageView;->getMeasuredHeight()I

    move-result v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ", height: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    # Set up temperature change listeners for gradient background updates
    # When user scrolls temperature, the background gradient color changes
    .line 63
    invoke-direct {p0, p1}, Lcom/geely/hvac/adapter/AirConditionViewHolder;->addTemperatureChangeListener(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;)V

    # Initialize AcPanelController for steering wheel and seat heat controls
    # This sets up all views, observables, and click listeners
    .line 64
    invoke-direct {p0, p1}, Lcom/geely/hvac/adapter/AirConditionViewHolder;->initAcPanelController(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;)V

    return-void
.end method

#############################################################################
# initAcPanelController - Initializes the AcPanelController for AC panel management
#
# This method performs the following setup:
# 1. Creates AcPanelController instance and sets the ViewModel
# 2. Finds and configures steering wheel heat views
# 3. Subscribes to steering wheel observables (level, supported)
# 4. Finds and configures all seat views (row1 + row2)
# 5. Initializes seat components with default values
# 6. Sets click listeners for row2 (rear) seat buttons
# 7. Subscribes to row2 observables for independent left/right updates
# 8. Subscribes to panel state observable for visibility control
# 9. Performs initial UI update
#
# Parameters:
#   p1 (binding) - PagerItemAirconditionBinding with access to all views
#############################################################################
.method private initAcPanelController(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    # v13 = binding reference (preserved for later use)
    move-object v13, p1

    #########################################################################
    # STEP 1: Get root view and model
    #########################################################################
    
    # v0 = root view (used for findViewById)
    invoke-virtual {v13}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    # v1 = AppMainViewModel (used to get observables and call handlers)
    invoke-virtual {v13}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    # If model is null, we cannot set up the controller - exit early
    if-eqz v1, :cond_end

    #########################################################################
    # STEP 2: Create and configure AcPanelController
    #########################################################################
    
    # v2 = new AcPanelController instance
    # This controller handles all AC panel UI updates and click events
    new-instance v2, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;

    invoke-direct {v2}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;-><init>()V

    # Set the model reference (returns this for chaining, but we use it directly)
    invoke-virtual {v2, v1}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;

    move-result-object v2

    #########################################################################
    # STEP 3: Find and configure row1 steering wheel heat view
    #########################################################################
    
    # Find steering_wheel_status view by ID 0x7f0902e2
    # This is the row1 steering wheel heat button (SteeringWheelHeatLevel component)
    const v3, 0x7f0902e2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    # If view exists, configure it
    if-eqz v3, :cond_0

    # Cast to SteeringWheelHeatLevel and set in controller
    check-cast v3, Lcom/geely/hvac/component/SteeringWheelHeatLevel;

    invoke-virtual {v2, v3}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1SteeringWheelHeatView(Lcom/geely/hvac/component/SteeringWheelHeatLevel;)V

    # Set click listener (controller handles the click)
    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/SteeringWheelHeatLevel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    #########################################################################
    # STEP 4: Subscribe to row1 steering wheel heat observables
    #########################################################################
    
    # Get steeringWheelHeatLevel observable (ObservableInt, range 0-3)
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSteeringWheelHeatLevel()Landroidx/databinding/ObservableInt;
    move-result-object v5

    # Get steeringWheelHeatSupported observable (ObservableInt)
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSteeringWheelHeatSupported()Landroidx/databinding/ObservableInt;
    move-result-object v6

    # If both observables exist, set them and subscribe
    if-eqz v5, :cond_3
    if-eqz v6, :cond_3

    # Set both observables at once
    invoke-virtual {v2, v5, v6}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1SteeringWheelHeatObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V

    # Subscribe controller to receive property change callbacks
    # v5: Subscribe to LEVEL changes - current steering wheel heat level (0-3)
    invoke-virtual {v5, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    # v6: Subscribe to AVAILABILITY changes - whether the feature is enabled/supported
    invoke-virtual {v6, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_3
    #########################################################################
    # STEP 5: Find row1 steering wheel container view
    #########################################################################
    
    # Find heat_steering_wheel container by ID 0x7f090135
    # This container's visibility is toggled based on front/back panel state
    const v5, 0x7f090135

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    # If view exists, set it in controller
    if-eqz v5, :cond_4

    invoke-virtual {v2, v5}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1SteeringWheelContainerView(Landroid/view/View;)V

    :cond_4
    #########################################################################
    # STEP 6: Find all seat views
    # 
    # Register allocation for seat views:
    # v3 = row1LeftSeatHeat (front left heat)
    # v4 = row1RightSeatHeat (front right heat)
    # v5 = row1LeftSeatWind (front left ventilation)
    # v6 = row1RightSeatWind (front right ventilation)
    # v7 = row1LeftSeatHeatAuto (front left heat AUTO button)
    # v8 = row1RightSeatHeatAuto (front right heat AUTO button)
    # v9 = row1LeftSeatWindAuto (front left wind AUTO button)
    # v10 = row1RightSeatWindAuto (front right wind AUTO button)
    # v11 = row2LeftSeatHeat (rear left heat)
    # v12 = row2RightSeatHeat (rear right heat)
    #########################################################################

    # --- Row1 (front) seat heat buttons ---
    
    # Find row1_left_seat_heat_status by ID 0x7f090267
    # SeatFeatureLevel component for front left seat heat
    const v3, 0x7f090267
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v3

    # Find row1_right_seat_heat_status by ID 0x7f09026c
    # SeatFeatureLevel component for front right seat heat
    const v4, 0x7f09026c
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v4

    # --- Row1 (front) seat wind buttons ---
    
    # Find row1_left_seat_wind_status by ID 0x7f090268
    # SeatFeatureLevel component for front left seat ventilation
    const v5, 0x7f090268
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5

    # Find row1_right_seat_wind_status by ID 0x7f09026d
    # SeatFeatureLevel component for front right seat ventilation
    const v6, 0x7f09026d
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v6

    # --- Row1 (front) AUTO buttons (found by tag) ---
    
    # Find row1 left heat AUTO button by tag "seat_tag_15"
    # This is the AUTO mode toggle for front left seat heat (driver side)
    const-string v7, "seat_tag_15"
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v7

    # Find row1 right heat AUTO button by tag "seat_tag_14"
    # This is the AUTO mode toggle for front right seat heat (passenger side)
    const-string v8, "seat_tag_14"
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v8

    # Find row1 left wind AUTO button by tag "seat_tag_21"
    # This is the AUTO mode toggle for front left seat ventilation
    const-string v9, "seat_tag_21"
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v9

    # Find row1 right wind AUTO button by tag "seat_tag_24"
    # This is the AUTO mode toggle for front right seat ventilation
    const-string v10, "seat_tag_24"
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v10

    # --- Row2 (rear) seat heat buttons ---
    
    # Find row2_left_seat_heat_status by ID 0x7f090270
    # SeatFeatureLevel component for rear left seat heat
    # This button is shown when back panel is active
    const v11, 0x7f090270
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v11

    # Find row2_right_seat_heat_status by ID 0x7f090272
    # SeatFeatureLevel component for rear right seat heat
    # This button is shown when back panel is active
    const v12, 0x7f090272
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v12

    #########################################################################
    # STEP 7: Pass all seat views to controller
    #########################################################################
    
    # Call setSeatViews with all 10 seat views (v3-v12)
    # Uses invoke-virtual/range because of many parameters
    # Parameter order: row1LeftHeat, row1RightHeat, row1LeftWind, row1RightWind,
    #                  row1LeftHeatAuto, row1RightHeatAuto, row1LeftWindAuto, row1RightWindAuto,
    #                  row2LeftHeat, row2RightHeat
    invoke-virtual/range {v2 .. v12}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setSeatViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    #########################################################################
    # STEP 8: Initialize seat components with default values
    # 
    # For each seat component:
    # - Enable it (bindSeatFeatureLevelEnable = true)
    # - Set level to 0 (bindSeatFeatureLevelLevel = 0)
    #
    # v0 = true (enabled)
    # v1 = 0 (level)
    #########################################################################
    
    const/4 v0, 0x1
    const/4 v1, 0x0

    # --- Initialize row1 left heat (v3) ---
    if-eqz v3, :skip_init_v3
    check-cast v3, Lcom/geely/hvac/component/SeatFeatureLevel;
    invoke-static {v3, v0}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    invoke-static {v3, v1}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V
    :skip_init_v3

    # --- Initialize row1 right heat (v4) ---
    if-eqz v4, :skip_init_v4
    check-cast v4, Lcom/geely/hvac/component/SeatFeatureLevel;
    invoke-static {v4, v0}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    invoke-static {v4, v1}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V
    :skip_init_v4

    # --- Initialize row1 left wind (v5) ---
    if-eqz v5, :skip_init_v5
    check-cast v5, Lcom/geely/hvac/component/SeatFeatureLevel;
    invoke-static {v5, v0}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    invoke-static {v5, v1}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V
    :skip_init_v5

    # --- Initialize row1 right wind (v6) ---
    if-eqz v6, :skip_init_v6
    check-cast v6, Lcom/geely/hvac/component/SeatFeatureLevel;
    invoke-static {v6, v0}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    invoke-static {v6, v1}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V
    :skip_init_v6

    # --- Initialize row2 left heat (v11) ---
    # Note: row2 buttons also get click listeners (see below)
    if-eqz v11, :skip_init_v11
    check-cast v11, Lcom/geely/hvac/component/SeatFeatureLevel;
    invoke-static {v11, v0}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    invoke-static {v11, v1}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V
    :skip_init_v11

    # --- Initialize row2 right heat (v12) ---
    # Note: row2 buttons also get click listeners (see below)
    if-eqz v12, :skip_init_v12
    check-cast v12, Lcom/geely/hvac/component/SeatFeatureLevel;
    invoke-static {v12, v0}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    invoke-static {v12, v1}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V
    :skip_init_v12

    #########################################################################
    # STEP 9: Restore v0 and v1 (root view and model)
    # They were overwritten in previous step
    #########################################################################
    
    # v0 = root view (need to find row2 buttons again for click listeners)
    invoke-virtual {v13}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->getRoot()Landroid/view/View;
    move-result-object v0
    
    # v1 = model (need to get row2 observables)
    invoke-virtual {v13}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    move-result-object v1

    #########################################################################
    # STEP 10: Set click listeners on row2 (rear) heat buttons
    # 
    # These buttons need click listeners to handle user taps.
    # The AcPanelController.onClick() method determines which button was
    # clicked and calls the appropriate ViewModel method.
    #########################################################################
    
    # Find row2_left_seat_heat_status again and set click listener
    const v5, 0x7f090270
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_row2_left_click
    # Set controller as click listener - onClick() handles the dispatch
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_row2_left_click

    # Find row2_right_seat_heat_status again and set click listener
    const v6, 0x7f090272
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v6
    if-eqz v6, :skip_row2_right_click
    # Set controller as click listener - onClick() handles the dispatch
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_row2_right_click

    #########################################################################
    # STEP 11: Get row2 observables from ViewModel
    #
    # v7 = row2LeftSeatHeatLevel (left rear seat heat level, 0-3)
    # v8 = row2LeftSeatHeatSupported (left rear seat heat supported state)
    # v9 = row2RightSeatHeatLevel (right rear seat heat level, 0-3)
    # v10 = row2RightSeatHeatSupported (right rear seat heat supported state)
    #
    # These are separate observables to allow INDEPENDENT updates for
    # left and right rear seats when activated from rear passenger console.
    #########################################################################
    
    # Get left rear seat observables
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatHeatLevel()Landroidx/databinding/ObservableInt;
    move-result-object v7
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatHeatSupported()Landroidx/databinding/ObservableInt;
    move-result-object v8
    
    # Get right rear seat observables
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatHeatLevel()Landroidx/databinding/ObservableInt;
    move-result-object v9
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatHeatSupported()Landroidx/databinding/ObservableInt;
    move-result-object v10

    #########################################################################
    # STEP 12: Subscribe to row2 observables
    # 
    # Only if all 4 observables exist, we set them in controller and subscribe.
    # When any of these change:
    # - Left level/supported -> Row2LeftRunnable (updates only left button)
    # - Right level/supported -> Row2RightRunnable (updates only right button)
    #
    # This prevents both buttons from animating when only one is changed
    # (e.g., when rear passenger activates their seat heat from console).
    #########################################################################
    
    # Check that all observables exist
    if-eqz v7, :skip_row2_obs
    if-eqz v8, :skip_row2_obs
    if-eqz v9, :skip_row2_obs
    if-eqz v10, :skip_row2_obs
    
    # Set all row2 observables in controller
    invoke-virtual {v2, v7, v8, v9, v10}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow2Observables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V

    # Subscribe controller to each observable for property change callbacks
    # onPropertyChanged() will be called when any of these change
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v8, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v9, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v10, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row2_obs

    #########################################################################
    # STEP 13: Subscribe to row1 seat observables
    #########################################################################
    
    # --- Row1 LEFT HEAT observables ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeatLevel()Landroidx/databinding/ObservableInt;
    move-result-object v7
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeatSupported()Landroidx/databinding/ObservableInt;
    move-result-object v8
    
    if-eqz v7, :skip_row1_left_heat
    if-eqz v8, :skip_row1_left_heat
    invoke-virtual {v2, v7, v8}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1LeftHeatObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v8, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_left_heat

    # --- Row1 RIGHT HEAT observables ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatLevel()Landroidx/databinding/ObservableInt;
    move-result-object v7
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatSupported()Landroidx/databinding/ObservableInt;
    move-result-object v8
    
    if-eqz v7, :skip_row1_right_heat
    if-eqz v8, :skip_row1_right_heat
    invoke-virtual {v2, v7, v8}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1RightHeatObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v8, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_right_heat

    # --- Row1 LEFT WIND observables ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatVentilateLevel()Landroidx/databinding/ObservableInt;
    move-result-object v7
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatVentilateSupported()Landroidx/databinding/ObservableInt;
    move-result-object v8
    
    if-eqz v7, :skip_row1_left_wind
    if-eqz v8, :skip_row1_left_wind
    invoke-virtual {v2, v7, v8}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1LeftWindObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v8, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_left_wind

    # --- Row1 RIGHT WIND observables ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateLevel()Landroidx/databinding/ObservableInt;
    move-result-object v7
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateSupported()Landroidx/databinding/ObservableInt;
    move-result-object v8
    
    if-eqz v7, :skip_row1_right_wind
    if-eqz v8, :skip_row1_right_wind
    invoke-virtual {v2, v7, v8}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1RightWindObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v8, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_right_wind

    #########################################################################
    # STEP 13.5: Subscribe to row1 AUTO observables
    #########################################################################
    
    # --- Row1 LEFT HEAT AUTO observable ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeatAuto()Landroidx/databinding/ObservableInt;
    move-result-object v7
    if-eqz v7, :skip_row1_left_heat_auto_obs
    invoke-virtual {v2, v7}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1LeftSeatHeatAutoObservable(Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_left_heat_auto_obs

    # --- Row1 RIGHT HEAT AUTO observable ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatAuto()Landroidx/databinding/ObservableInt;
    move-result-object v7
    if-eqz v7, :skip_row1_right_heat_auto_obs
    invoke-virtual {v2, v7}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1RightSeatHeatAutoObservable(Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_right_heat_auto_obs

    # --- Row1 LEFT WIND AUTO observable ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatVentilateAuto()Landroidx/databinding/ObservableInt;
    move-result-object v7
    if-eqz v7, :skip_row1_left_wind_auto_obs
    invoke-virtual {v2, v7}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1LeftSeatWindAutoObservable(Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_left_wind_auto_obs

    # --- Row1 RIGHT WIND AUTO observable ---
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateAuto()Landroidx/databinding/ObservableInt;
    move-result-object v7
    if-eqz v7, :skip_row1_right_wind_auto_obs
    invoke-virtual {v2, v7}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1RightSeatWindAutoObservable(Landroidx/databinding/ObservableInt;)V
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    :skip_row1_right_wind_auto_obs

    #########################################################################
    # STEP 14: Set click listeners on row1 heat/wind buttons and AUTO buttons
    #########################################################################
    
    # Restore root view for finding views
    invoke-virtual {v13}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->getRoot()Landroid/view/View;
    move-result-object v0
    
    # Set click listener on row1_left_seat_heat_status (ID: 0x7f090267)
    const v5, 0x7f090267
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1lh_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1lh_click

    # Set click listener on row1_right_seat_heat_status (ID: 0x7f09026c)
    const v5, 0x7f09026c
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1rh_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1rh_click

    # Set click listener on row1_left_seat_wind_status (ID: 0x7f090268)
    const v5, 0x7f090268
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1lw_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1lw_click

    # Set click listener on row1_right_seat_wind_status (ID: 0x7f09026d)
    const v5, 0x7f09026d
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1rw_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1rw_click

    # Set click listeners on AUTO buttons (by tag)
    # Row1 left heat AUTO (tag: seat_tag_15) - driver side
    const-string v5, "seat_tag_15"
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1lha_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1lha_click

    # Row1 right heat AUTO (tag: seat_tag_14) - passenger side
    const-string v5, "seat_tag_14"
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1rha_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1rha_click

    # Row1 left wind AUTO (tag: seat_tag_21)
    const-string v5, "seat_tag_21"
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1lwa_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1lwa_click

    # Row1 right wind AUTO (tag: seat_tag_24)
    const-string v5, "seat_tag_24"
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_r1rwa_click
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :skip_r1rwa_click

    #########################################################################
    # STEP 14.5: Find and configure row1 left massage button
    # ID: 0x7f090265 (row1_left_massage)
    # Zone: 1 (SEAT_ROW_1_LEFT)
    #########################################################################
    
    # Find row1_left_massage by ID 0x7f090265
    const v5, 0x7f090265
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    if-eqz v5, :skip_massage_setup

    # Set view in controller
    invoke-virtual {v2, v5}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1LeftMassageView(Landroid/view/View;)V

    # Set tag with zone ID (1 = SEAT_ROW_1_LEFT) for massageLevelClick
    const/4 v6, 0x1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    # Set click listener
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # Initialize massage button with default values (enabled = true, level = 0)
    check-cast v5, Lcom/geely/hvac/component/SeatFeatureLevel;
    const/4 v6, 0x1
    invoke-static {v5, v6}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/component/SeatFeatureLevel;Z)V
    const/4 v6, 0x0
    invoke-static {v5, v6}, Lcom/geely/hvac/component/SeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/component/SeatFeatureLevel;I)V

    :skip_massage_setup

    #########################################################################
    # STEP 14.6: Get and subscribe to row1 left massage observables
    #########################################################################
    
    # Get massage level observable: getMassageLevel(1) where 1 = SEAT_ROW_1_LEFT
    const/4 v5, 0x1
    invoke-virtual {v1, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageLevel(I)Landroidx/databinding/ObservableInt;
    move-result-object v7

    # Get massage support observable via getSupportObservable
    # Signal ID: 0x10050a00 (massage level support), Zone: 1 (SEAT_ROW_1_LEFT)
    const v6, 0x10050a00
    invoke-virtual {v1, v6, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;
    move-result-object v8

    # If both observables exist, set them and subscribe
    if-eqz v7, :skip_massage_obs
    if-eqz v8, :skip_massage_obs

    # Set observables in controller
    invoke-virtual {v2, v7, v8}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setRow1LeftMassageObservables(Landroidx/databinding/ObservableInt;Landroidx/databinding/ObservableInt;)V

    # Subscribe controller to receive property change callbacks
    invoke-virtual {v7, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    invoke-virtual {v8, v2}, Landroidx/databinding/ObservableInt;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :skip_massage_obs

    #########################################################################
    # STEP 15: Subscribe to panel state observable
    #########################################################################
    
    invoke-virtual {v1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIsAcPanelFront()Landroidx/databinding/ObservableBoolean;
    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, v5}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->setAcPanelFrontObservable(Landroidx/databinding/ObservableBoolean;)V
    invoke-virtual {v5, v2}, Landroidx/databinding/ObservableBoolean;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_5
    #########################################################################
    # STEP 16: Perform initial UI update
    #########################################################################
    
    invoke-virtual {v2}, Lcom/geely/hvac/adapter/AirConditionViewHolder$AcPanelController;->updateUI()V

    :cond_end
    return-void
.end method

#############################################################################
# addTemperatureChangeListener - Sets up listeners for temperature scroll changes
#
# This method creates gradient drawables and sets up listeners for the
# left and right temperature components. When the user scrolls to change
# temperature, the background gradient color updates to reflect the value.
#
# Parameters:
#   p1 (binding) - PagerItemAirconditionBinding for accessing temperature views
#############################################################################
.method private addTemperatureChangeListener(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    # Create GradientDrawable for left temperature gradient background
    .line 69
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    # Create GradientDrawable for right temperature gradient background
    .line 70
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    # Set up listener for LEFT temperature component
    # Lambda handles temperature changes and updates leftTempGradient view
    .line 72
    iget-object v2, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontLeftTemp:Lcom/geely/hvac/component/Temperature;

    new-instance v3, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;

    invoke-direct {v3, p0, p1, v0}, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder;Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v2, v3}, Lcom/geely/hvac/component/Temperature;->setOnScrollTemperatureChangeListener(Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;)V

    # Set up listener for RIGHT temperature component
    # Lambda handles temperature changes and updates rightTempGradient view
    .line 85
    iget-object v0, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->frontRightTemp:Lcom/geely/hvac/component/Temperature;

    new-instance v2, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$0S_nJ-iebI5nAsQpnJyID4l1bWs;

    invoke-direct {v2, p0, p1, v1}, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$0S_nJ-iebI5nAsQpnJyID4l1bWs;-><init>(Lcom/geely/hvac/adapter/AirConditionViewHolder;Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/Temperature;->setOnScrollTemperatureChangeListener(Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;)V

    return-void
.end method

#############################################################################
# newInstance - Factory method to create AirConditionViewHolder
#
# This is the public factory method used by MainPagerAdapter to create
# new instances of AirConditionViewHolder.
#
# Parameters:
#   p0 (context) - Android Context for inflation and resources
#   p1 (parent) - Parent ViewGroup for layout params
#   p2 (viewModel) - AppMainViewModel to bind to the layout
#
# Returns:
#   New AirConditionViewHolder instance with bound ViewModel
#############################################################################
.method public static newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/AirConditionViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "viewModel"
        }
    .end annotation

    # Get LayoutInflater from context
    .line 31
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    # attachToRoot = false (we don't want to attach immediately)
    const/4 v1, 0x0

    # Inflate pager_item_aircondition.xml layout via DataBinding
    .line 30
    invoke-static {v0, p1, v1}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    move-result-object p1

    # Bind the ViewModel to the layout
    # This makes all observables available in XML via data binding
    .line 33
    invoke-virtual {p1, p2}, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    # Create and return new ViewHolder instance
    .line 34
    new-instance p2, Lcom/geely/hvac/adapter/AirConditionViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/geely/hvac/adapter/AirConditionViewHolder;-><init>(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/content/Context;)V

    return-object p2
.end method

#############################################################################
# setBackground - Configures and applies a radial gradient background
#
# This method configures a GradientDrawable as a radial gradient and applies
# it to a view. Used for temperature gradient backgrounds.
#
# Parameters:
#   p1 (gradientDrawable) - GradientDrawable to configure
#   p2 (view) - View to apply the background to
#   p3 (color) - Color for the gradient (center color)
#
# Configuration:
#   - Shape: OVAL (1)
#   - Gradient type: RADIAL_GRADIENT (1)
#   - Gradient radius: 400.0f
#   - Use level: false
#   - Colors: [p3, 0] (from color to transparent)
#############################################################################
.method private setBackground(Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gradientDrawable",
            "view",
            "color"
        }
    .end annotation

    # v0 = 1 (used for OVAL shape and RADIAL_GRADIENT type)
    const/4 v0, 0x1

    # Set shape to OVAL (1)
    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    # Set gradient type to RADIAL_GRADIENT (1)
    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    # Set gradient radius to 400.0f
    const/high16 v1, 0x43c80000    # 400.0f

    .line 102
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    # Set useLevel to false (gradient not affected by level)
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setUseLevel(Z)V

    # Create colors array: [color, 0] (from color to transparent)
    const/4 v2, 0x2

    new-array v2, v2, [I

    # v2[0] = p3 (center color)
    aput p3, v2, v1

    # v2[1] = 0 (transparent at edge)
    aput v1, v2, v0

    .line 104
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    # Apply the configured drawable as view background
    .line 105
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


#############################################################################
# VIRTUAL METHODS
#############################################################################

# Lambda for LEFT temperature change listener
# Called when user scrolls the left temperature control
#
# Parameters:
#   p1 (binding) - PagerItemAirconditionBinding
#   p2 (gradientDrawable) - GradientDrawable to configure
#   p3 (temperature) - Current temperature value (float)
#   p4 (isValid) - Whether temperature is valid (boolean)
#
# Behavior:
#   - If valid: show gradient with color based on temperature
#   - If invalid: hide gradient (INVISIBLE)
.method public synthetic lambda$addTemperatureChangeListener$0$AirConditionViewHolder(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/graphics/drawable/GradientDrawable;FZ)V
    .locals 1

    # Check if temperature value is valid
    if-eqz p4, :cond_0

    # Valid temperature - show gradient
    .line 75
    iget-object p4, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->leftTempGradient:Landroid/view/View;

    # Set visibility to VISIBLE (0)
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    # Convert temperature to RGB color using temperRGBUtil
    .line 76
    iget-object p4, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder;->temperRGBUtil:Lcom/geely/hvac/utils/TemperRGBUtil;

    invoke-virtual {p4, p3}, Lcom/geely/hvac/utils/TemperRGBUtil;->getRGB(F)I

    move-result p4

    # Apply gradient background with calculated color
    .line 77
    iget-object p1, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->leftTempGradient:Landroid/view/View;

    invoke-direct {p0, p2, p1, p4}, Lcom/geely/hvac/adapter/AirConditionViewHolder;->setBackground(Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;I)V

    goto :goto_0

    # Invalid temperature - hide gradient
    .line 79
    :cond_0
    iget-object p1, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->leftTempGradient:Landroid/view/View;

    # Set visibility to INVISIBLE (4)
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    # Log the temperature value for debugging
    .line 82
    :goto_0
    iget-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "left = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

# Lambda for RIGHT temperature change listener
# Called when user scrolls the right temperature control
#
# Parameters:
#   p1 (binding) - PagerItemAirconditionBinding
#   p2 (gradientDrawable) - GradientDrawable to configure
#   p3 (temperature) - Current temperature value (float)
#   p4 (isValid) - Whether temperature is valid (boolean)
#
# Behavior:
#   - If valid: show gradient with color based on temperature
#   - If invalid: hide gradient (INVISIBLE)
.method public synthetic lambda$addTemperatureChangeListener$1$AirConditionViewHolder(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/graphics/drawable/GradientDrawable;FZ)V
    .locals 1

    # Check if temperature value is valid
    if-eqz p4, :cond_0

    # Valid temperature - show gradient
    .line 88
    iget-object p4, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->rightTempGradient:Landroid/view/View;

    # Set visibility to VISIBLE (0)
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    # Convert temperature to RGB color using temperRGBUtil
    .line 89
    iget-object p4, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder;->temperRGBUtil:Lcom/geely/hvac/utils/TemperRGBUtil;

    invoke-virtual {p4, p3}, Lcom/geely/hvac/utils/TemperRGBUtil;->getRGB(F)I

    move-result p4

    # Apply gradient background with calculated color
    .line 90
    iget-object p1, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->rightTempGradient:Landroid/view/View;

    invoke-direct {p0, p2, p1, p4}, Lcom/geely/hvac/adapter/AirConditionViewHolder;->setBackground(Landroid/graphics/drawable/GradientDrawable;Landroid/view/View;I)V

    goto :goto_0

    # Invalid temperature - hide gradient
    .line 92
    :cond_0
    iget-object p1, p1, Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;->rightTempGradient:Landroid/view/View;

    # Set visibility to INVISIBLE (4)
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    # Log the temperature value for debugging
    .line 95
    :goto_0
    iget-object p1, p0, Lcom/geely/hvac/adapter/AirConditionViewHolder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "right = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
