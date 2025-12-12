.class public abstract Lcom/geely/hvac/databinding/PagerItemSeatBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PagerItemSeatBinding.java"


# instance fields
.field public final frontLeftSeatBackward:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final frontLeftSeatForward:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final frontRightSeatBackward:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final frontRightSeatForward:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final heatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final heatSteeringWheel:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final heatSteeringWheelSetting:Lcom/geely/hvac/component/BoolStateLottieView;

.field public final heatSteeringWheelSettingBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final heatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivSeatSetTips:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field protected mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final mainSeatLabel:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final massageWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final physiotherapy:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final positionWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final row1LeftMassage:Lcom/geely/hvac/component/SeatMassageLevel;

.field public final row1LeftPhysiotherapy:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final row1LeftSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

.field public final row1LeftSeatWindStatus:Lcom/geely/hvac/component/SeatVentilateLevel;

.field public final row1RightMassage:Lcom/geely/hvac/component/SeatMassageLevel;

.field public final row1RightPhysiotherapy:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final row1RightSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

.field public final row1RightSeatWindStatus:Lcom/geely/hvac/component/SeatVentilateLevel;

.field public final row1SeatPositionLeftMoreBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final row2HeatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final row2LeftSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

.field public final row2RightSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

.field public final seatPositionRightMoreBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final seatSetBaseLine:Landroid/widget/Space;

.field public final seatTab:Lcom/geely/hvac/component/SeatTab;

.field public final seatWindWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final steeringWheelAutoStatus:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final steeringWheelStatus:Lcom/geely/hvac/component/SteeringWheelHeatLevel;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/SeatMassageLevel;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/SeatHeatLevel;Lcom/geely/hvac/component/SeatVentilateLevel;Lcom/geely/hvac/component/SeatMassageLevel;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/SeatHeatLevel;Lcom/geely/hvac/component/SeatVentilateLevel;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/SeatHeatLevel;Lcom/geely/hvac/component/SeatHeatLevel;Lcom/geely/hvac/component/ViewWithBackground;Landroid/widget/Space;Lcom/geely/hvac/component/SeatTab;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/SteeringWheelHeatLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "frontLeftSeatBackward",
            "frontLeftSeatForward",
            "frontRightSeatBackward",
            "frontRightSeatForward",
            "heatBg",
            "heatSteeringWheel",
            "heatSteeringWheelSetting",
            "heatSteeringWheelSettingBg",
            "heatWrap",
            "ivSeatSetTips",
            "mainSeatLabel",
            "massageWrap",
            "physiotherapy",
            "positionWrap",
            "row1LeftMassage",
            "row1LeftPhysiotherapy",
            "row1LeftSeatHeatStatus",
            "row1LeftSeatWindStatus",
            "row1RightMassage",
            "row1RightPhysiotherapy",
            "row1RightSeatHeatStatus",
            "row1RightSeatWindStatus",
            "row1SeatPositionLeftMoreBg",
            "row2HeatWrap",
            "row2LeftSeatHeatStatus",
            "row2RightSeatHeatStatus",
            "seatPositionRightMoreBg",
            "seatSetBaseLine",
            "seatTab",
            "seatWindWrap",
            "steeringWheelAutoStatus",
            "steeringWheelStatus"
        }
    .end annotation

    move-object v0, p0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 146
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->frontLeftSeatBackward:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object v1, p5

    .line 147
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->frontLeftSeatForward:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object v1, p6

    .line 148
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->frontRightSeatBackward:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object v1, p7

    .line 149
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->frontRightSeatForward:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object v1, p8

    .line 150
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->heatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object v1, p9

    .line 151
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->heatSteeringWheel:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p10

    .line 152
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->heatSteeringWheelSetting:Lcom/geely/hvac/component/BoolStateLottieView;

    move-object v1, p11

    .line 153
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->heatSteeringWheelSettingBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object v1, p12

    .line 154
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->heatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p13

    .line 155
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->ivSeatSetTips:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p14

    .line 156
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->mainSeatLabel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-object/from16 v1, p15

    .line 157
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->massageWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p16

    .line 158
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->physiotherapy:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p17

    .line 159
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->positionWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p18

    .line 160
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1LeftMassage:Lcom/geely/hvac/component/SeatMassageLevel;

    move-object/from16 v1, p19

    .line 161
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1LeftPhysiotherapy:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p20

    .line 162
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1LeftSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

    move-object/from16 v1, p21

    .line 163
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1LeftSeatWindStatus:Lcom/geely/hvac/component/SeatVentilateLevel;

    move-object/from16 v1, p22

    .line 164
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1RightMassage:Lcom/geely/hvac/component/SeatMassageLevel;

    move-object/from16 v1, p23

    .line 165
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1RightPhysiotherapy:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p24

    .line 166
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1RightSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

    move-object/from16 v1, p25

    .line 167
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1RightSeatWindStatus:Lcom/geely/hvac/component/SeatVentilateLevel;

    move-object/from16 v1, p26

    .line 168
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row1SeatPositionLeftMoreBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p27

    .line 169
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row2HeatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p28

    .line 170
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row2LeftSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

    move-object/from16 v1, p29

    .line 171
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->row2RightSeatHeatStatus:Lcom/geely/hvac/component/SeatHeatLevel;

    move-object/from16 v1, p30

    .line 172
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->seatPositionRightMoreBg:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v1, p31

    .line 173
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->seatSetBaseLine:Landroid/widget/Space;

    move-object/from16 v1, p32

    .line 174
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->seatTab:Lcom/geely/hvac/component/SeatTab;

    move-object/from16 v1, p33

    .line 175
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->seatWindWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p34

    .line 176
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->steeringWheelAutoStatus:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v1, p35

    .line 177
    iput-object v1, v0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->steeringWheelStatus:Lcom/geely/hvac/component/SteeringWheelHeatLevel;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 227
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00cd

    .line 239
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 209
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/PagerItemSeatBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 190
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00cd

    .line 204
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/PagerItemSeatBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00cd

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 223
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method public abstract setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation
.end method
