.class public Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;
.source "LayoutSeatSetDetailBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;,
        Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;,
        Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mDirtyFlags_1:J

.field private mDirtyFlags_2:J

.field private mMainModelSeatDetailPositionClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;

.field private mMainModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;

.field private mMainModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView10:Lcom/geely/hvac/component/TextViewWithBg;

.field private final mboundView11:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView12:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView13:Lcom/geely/hvac/component/SeatDetailType;

.field private final mboundView15:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView19:Landroid/view/View;

.field private final mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView22:Landroid/view/View;

.field private final mboundView27:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView31:Landroid/view/View;

.field private final mboundView34:Landroid/view/View;

.field private final mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView40:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView46:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView47:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView53:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView6:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView7:Lcom/geely/hvac/component/SeatPositionSaveTab;

.field private final mboundView8:Lcom/geely/hvac/component/SeatPositionSaveTab;

.field private final mboundView9:Lcom/geely/hvac/component/TextViewWithBg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900af

    const/16 v2, 0x38

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0901ab

    const/16 v2, 0x39

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0901ac

    const/16 v2, 0x3a

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090295

    const/16 v2, 0x3b

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x3c

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 44
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x1

    .line 77
    aget-object v4, p3, v4

    check-cast v4, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v5, 0x38

    aget-object v5, p3, v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v6, 0x37

    aget-object v6, p3, v6

    check-cast v6, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v7, 0x36

    aget-object v7, p3, v7

    check-cast v7, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v8, 0x30

    aget-object v8, p3, v8

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v9, 0x29

    aget-object v9, p3, v9

    check-cast v9, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v10, 0x12

    aget-object v10, p3, v10

    check-cast v10, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v11, 0x1e

    aget-object v11, p3, v11

    check-cast v11, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v12, 0x3

    aget-object v12, p3, v12

    check-cast v12, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v13, 0x19

    aget-object v13, p3, v13

    check-cast v13, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v14, 0x10

    aget-object v14, p3, v14

    check-cast v14, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v15, 0x1a

    aget-object v15, p3, v15

    check-cast v15, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v16, 0x15

    aget-object v16, p3, v16

    check-cast v16, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v17, 0x14

    aget-object v17, p3, v17

    check-cast v17, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v18, 0x17

    aget-object v18, p3, v18

    check-cast v18, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v19, 0x18

    aget-object v19, p3, v19

    check-cast v19, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v20, 0x11

    aget-object v20, p3, v20

    check-cast v20, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v21, 0x32

    aget-object v21, p3, v21

    check-cast v21, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v22, 0x33

    aget-object v22, p3, v22

    check-cast v22, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v23, 0x34

    aget-object v23, p3, v23

    check-cast v23, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v24, 0x31

    aget-object v24, p3, v24

    check-cast v24, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v25, 0x39

    aget-object v25, p3, v25

    check-cast v25, Lcom/geely/livewallpager/lotties/LottieAnimationView;

    const/16 v26, 0x3a

    aget-object v26, p3, v26

    check-cast v26, Lcom/geely/livewallpager/lotties/LottieAnimationView;

    const/16 v27, 0x2b

    aget-object v27, p3, v27

    check-cast v27, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v28, 0x2c

    aget-object v28, p3, v28

    check-cast v28, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v29, 0x2d

    aget-object v29, p3, v29

    check-cast v29, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v30, 0x2a

    aget-object v30, p3, v30

    check-cast v30, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v31, 0x27

    aget-object v31, p3, v31

    check-cast v31, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v32, 0x5

    aget-object v32, p3, v32

    check-cast v32, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v33, 0x25

    aget-object v33, p3, v33

    check-cast v33, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v34, 0x1c

    aget-object v34, p3, v34

    check-cast v34, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v35, 0x26

    aget-object v35, p3, v35

    check-cast v35, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v36, 0x21

    aget-object v36, p3, v36

    check-cast v36, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v37, 0x20

    aget-object v37, p3, v37

    check-cast v37, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v38, 0x23

    aget-object v38, p3, v38

    check-cast v38, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v39, 0x24

    aget-object v39, p3, v39

    check-cast v39, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v40, 0x1d

    aget-object v40, p3, v40

    check-cast v40, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v41, 0x3b

    aget-object v41, p3, v41

    check-cast v41, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v42, 0xe

    aget-object v42, p3, v42

    check-cast v42, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v43, 0x31

    move/from16 v3, v43

    invoke-direct/range {v0 .. v42}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 2566
    iput-wide v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 2567
    iput-wide v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_1:J

    .line 2568
    iput-wide v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_2:J

    .line 118
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->carMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesLegSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesLumbarSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesViewAssistant:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1:Lcom/geely/hvac/component/ViewWithBackground;

    const-string v3, "left1"

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->leftSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 143
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 144
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 145
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/hvac/component/TextViewWithBg;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView10:Lcom/geely/hvac/component/TextViewWithBg;

    .line 146
    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 147
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView11:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 148
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 149
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView12:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 150
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xd

    .line 151
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/hvac/component/SeatDetailType;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView13:Lcom/geely/hvac/component/SeatDetailType;

    .line 152
    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/SeatDetailType;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xf

    .line 153
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView15:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 154
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x13

    .line 155
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView19:Landroid/view/View;

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 157
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 158
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x16

    .line 159
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView22:Landroid/view/View;

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x1b

    .line 161
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView27:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 162
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x1f

    .line 163
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView31:Landroid/view/View;

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x22

    .line 165
    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView34:Landroid/view/View;

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 167
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 168
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x28

    .line 169
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView40:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 170
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x2e

    .line 171
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView46:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x2f

    .line 173
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView47:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 174
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x35

    .line 175
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView53:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 176
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 177
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView6:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 178
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 179
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/hvac/component/SeatPositionSaveTab;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView7:Lcom/geely/hvac/component/SeatPositionSaveTab;

    .line 180
    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/SeatPositionSaveTab;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 181
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/hvac/component/SeatPositionSaveTab;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatPositionSaveTab;

    .line 182
    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/SeatPositionSaveTab;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 183
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/hvac/component/TextViewWithBg;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView9:Lcom/geely/hvac/component/TextViewWithBg;

    .line 184
    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1:Lcom/geely/hvac/component/ViewWithBackground;

    const-string v3, "right1"

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 187
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 188
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 189
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 192
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->rightSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->seatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 195
    invoke-virtual {v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeMainModelGetRow1LeftSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatBackrestSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 547
    monitor-enter p0

    .line 548
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x200000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 549
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow1LeftSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x20000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 621
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow1LeftSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 700
    monitor-enter p0

    .line 701
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x4000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 702
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 414
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 736
    monitor-enter p0

    .line 737
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x40000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 738
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow1RightSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1RightSeatBackrestSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 727
    monitor-enter p0

    .line 728
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x20000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 729
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow1RightSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1RightSeatHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 583
    monitor-enter p0

    .line 584
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x2000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 585
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow1RightSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1RightSeatLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 754
    monitor-enter p0

    .line 755
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x100000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 756
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow2RightSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x8000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 495
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow2RightSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 466
    monitor-enter p0

    .line 467
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 468
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATBACKRESTSIDESUPPORTGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATBACKRESTSIDESUPPORTGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 592
    monitor-enter p0

    .line 593
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x4000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 594
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATBACKRESTSIDESUPPORTGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATBACKRESTSIDESUPPORTGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 664
    monitor-enter p0

    .line 665
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x400000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 666
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONEXTENSIONGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONEXTENSIONGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 457
    monitor-enter p0

    .line 458
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 459
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONEXTENSIONGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONEXTENSIONGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 556
    monitor-enter p0

    .line 557
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x400000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 558
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 441
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 637
    monitor-enter p0

    .line 638
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x80000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 639
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTModelGetTagByIndexMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTModelGetTagByIndexMainModelSeatDetailPositionIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 448
    monitor-enter p0

    .line 449
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 450
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPOSITIONSAVEModelGetTagByIndexMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPOSITIONSAVEModelGetTagByIndexMainModelSeatDetailPositionIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 610
    monitor-enter p0

    .line 611
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x10000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 612
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelIsDisplayIVIClick(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelIsDisplayIVIClick",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 421
    monitor-enter p0

    .line 422
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 423
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelIsKx11A3Mode(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelIsKx11A3Mode",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x200000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 765
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRightSeatPositionSaveSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRightSeatPositionSaveSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x8000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 711
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRightSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRightSeatSaveEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 520
    monitor-enter p0

    .line 521
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x40000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 522
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRightSeatSaveTabIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRightSeatSaveTabIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 369
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRightSeatSaveTags(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRightSeatSaveTags",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "[",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 475
    monitor-enter p0

    .line 476
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 477
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1LeftSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1LeftSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 790
    monitor-enter p0

    .line 791
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/high16 v0, 0x1000000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 792
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1LeftSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1LeftSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x40000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 630
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1LeftSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 529
    monitor-enter p0

    .line 530
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 531
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1LeftSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x800000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 675
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1RightSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 538
    monitor-enter p0

    .line 539
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 540
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1RightSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 385
    monitor-enter p0

    .line 386
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 387
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1RightSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1RightSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 360
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow1RightSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow1RightSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 396
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2LeftSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2LeftSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 484
    monitor-enter p0

    .line 485
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 486
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2LeftSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2LeftSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 378
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2LeftSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x10000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 504
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2LeftSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 682
    monitor-enter p0

    .line 683
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x1000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 684
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2RightSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 646
    monitor-enter p0

    .line 647
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x100000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 648
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2RightSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 745
    monitor-enter p0

    .line 746
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x80000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 747
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2RightSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2RightSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 405
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelRow2RightSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelRow2RightSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 430
    monitor-enter p0

    .line 431
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 432
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelSeatDetailPositionIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 655
    monitor-enter p0

    .line 656
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x200000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 657
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelSeatPositionSaveSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelSeatPositionSaveSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x8000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 603
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelSeatSaveEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 718
    monitor-enter p0

    .line 719
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x10000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 720
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelSeatSaveTabIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelSeatSaveTabIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 565
    monitor-enter p0

    .line 566
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x800000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 567
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeMainModelSeatSaveTags(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelSeatSaveTags",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "[",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 781
    monitor-enter p0

    .line 782
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x800000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 783
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeModelLeft1TypeIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelLeft1TypeIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x2000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 693
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeModelLeft2TypeIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelLeft2TypeIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 574
    monitor-enter p0

    .line 575
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x1000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 576
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeModelRight1TypeIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRight1TypeIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 511
    monitor-enter p0

    .line 512
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x20000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 513
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeModelRight2TypeIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRight2TypeIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 772
    monitor-enter p0

    .line 773
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide v0, 0x400000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 774
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 154

    move-object/from16 v1, p0

    .line 803
    monitor-enter p0

    .line 804
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 805
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 806
    iget-wide v6, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_1:J

    .line 807
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_1:J

    .line 808
    iget-wide v8, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_2:J

    .line 809
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_2:J

    .line 810
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    iget-object v10, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 957
    iget-object v15, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    const-wide v12, 0xfffffffffffffL

    and-long/2addr v12, v2

    cmp-long v12, v12, v4

    const-wide v36, 0xe010210000000L

    const-wide/16 v38, 0x20

    const-wide/16 v40, 0x10

    const-wide v42, 0xe000210040000L

    const-wide v44, 0xe000210000000L

    const-wide/32 v46, 0x8000

    const-wide v48, 0xa200208000080L

    const-wide/16 v50, 0x2

    const v14, 0x2d030100

    const-wide v52, 0xf081fc4594b3dL    # 2.0904199991442004E-308

    const-wide/high16 v54, 0x2000000000000000L

    const-wide v56, 0xa000200000000L

    const-wide/16 v58, 0x80

    const/4 v11, 0x4

    const/4 v0, 0x1

    const/16 v60, 0x0

    if-eqz v12, :cond_aa

    const-wide/high16 v18, 0xa000000000000L

    and-long v18, v2, v18

    cmp-long v12, v18, v4

    if-eqz v12, :cond_1

    if-eqz v10, :cond_1

    .line 1015
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatHeightDownListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v12

    .line 1017
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportLengthBackwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v18

    .line 1019
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveTabChangeListener()Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;

    move-result-object v19

    .line 1021
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLumbarHeightDownListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v20

    .line 1023
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLengthForwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v21

    .line 1025
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatCushionTitlUpListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v22

    .line 1027
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLumbarHeightUpListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v23

    .line 1029
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModelSeatDetailPositionClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;

    if-nez v13, :cond_0

    new-instance v13, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;

    invoke-direct {v13}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v13, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModelSeatDetailPositionClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v13, v10}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl;

    move-result-object v13

    .line 1031
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportHeightUpListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v25

    .line 1033
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLengthBackwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v26

    .line 1035
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLumbarExtendedBackwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v27

    .line 1037
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatHeightUpListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v28

    .line 1039
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportHeightDownListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v29

    .line 1041
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatBackrestUpListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v30

    .line 1043
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatCushionTitlDownListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v31

    .line 1045
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatBackrestDownListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v32

    .line 1047
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportLengthForwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v33

    .line 1049
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSeatSaveTabChangeListener()Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;

    move-result-object v34

    .line 1051
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLumbarExtendedForwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v35

    goto :goto_0

    :cond_1
    move-object/from16 v12, v60

    move-object v13, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v25, v23

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    :goto_0
    and-long v61, v2, v52

    cmp-long v61, v61, v4

    if-eqz v61, :cond_19

    if-eqz v10, :cond_2

    .line 1058
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v61

    .line 1060
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v62

    .line 1062
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v63

    .line 1064
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v64

    .line 1066
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v65

    .line 1068
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v66

    .line 1070
    invoke-virtual {v10, v14, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v67

    const v4, 0x2d070100

    .line 1072
    invoke-virtual {v10, v4, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v4

    .line 1074
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v5

    .line 1076
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v70

    .line 1078
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v71

    .line 1080
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v72

    const v14, 0x2d070100

    .line 1082
    invoke-virtual {v10, v14, v11}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v14

    const v11, 0x2d040200

    .line 1084
    invoke-virtual {v10, v11, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v11

    .line 1086
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v74

    move-object/from16 v73, v4

    const v0, 0x2d030100

    const/4 v4, 0x4

    .line 1088
    invoke-virtual {v10, v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v75

    .line 1090
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v76

    const v0, 0x2d040200

    .line 1092
    invoke-virtual {v10, v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v0

    .line 1094
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v4

    .line 1096
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v78

    .line 1098
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v79

    .line 1100
    invoke-virtual {v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v80

    move-object/from16 v24, v12

    move-object v12, v14

    move-object/from16 v81, v75

    move-object/from16 v82, v76

    move-object/from16 v83, v78

    move-object/from16 v84, v79

    move-object/from16 v85, v80

    move-object v14, v11

    move-object v11, v5

    move-object/from16 v5, v72

    move-object/from16 v72, v4

    move-object/from16 v4, v73

    move-object/from16 v73, v0

    const/4 v0, 0x0

    move-object/from16 v145, v67

    move-object/from16 v67, v10

    move-object/from16 v10, v145

    move-object/from16 v146, v61

    move-object/from16 v61, v13

    move-object/from16 v13, v146

    move-object/from16 v147, v62

    move-object/from16 v62, v15

    move-object/from16 v15, v147

    move-wide/from16 v148, v8

    move-object/from16 v8, v63

    move-object/from16 v9, v64

    move-wide/from16 v63, v148

    move-wide/from16 v150, v6

    move-object/from16 v6, v65

    move-object/from16 v7, v66

    move-wide/from16 v65, v150

    move-wide/from16 v152, v2

    move-object/from16 v2, v70

    move-object/from16 v3, v71

    move-wide/from16 v70, v152

    goto :goto_1

    :cond_2
    move-wide/from16 v70, v2

    move-wide/from16 v65, v6

    move-wide/from16 v63, v8

    move-object/from16 v67, v10

    move-object/from16 v24, v12

    move-object/from16 v61, v13

    move-object/from16 v62, v15

    move-object/from16 v2, v60

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v72, v15

    move-object/from16 v73, v72

    move-object/from16 v74, v73

    move-object/from16 v81, v74

    move-object/from16 v82, v81

    move-object/from16 v83, v82

    move-object/from16 v84, v83

    move-object/from16 v85, v84

    const/4 v0, 0x0

    .line 1102
    :goto_1
    invoke-virtual {v1, v0, v13}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v0, 0x2

    .line 1103
    invoke-virtual {v1, v0, v15}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v0, 0x3

    .line 1104
    invoke-virtual {v1, v0, v8}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v0, 0x4

    .line 1105
    invoke-virtual {v1, v0, v9}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v0, 0x5

    .line 1106
    invoke-virtual {v1, v0, v6}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x8

    .line 1107
    invoke-virtual {v1, v0, v7}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x9

    .line 1108
    invoke-virtual {v1, v0, v10}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0xb

    .line 1109
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0xe

    .line 1110
    invoke-virtual {v1, v0, v11}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x10

    .line 1111
    invoke-virtual {v1, v0, v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x13

    .line 1112
    invoke-virtual {v1, v0, v3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x14

    .line 1113
    invoke-virtual {v1, v0, v5}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x16

    .line 1114
    invoke-virtual {v1, v0, v12}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x1a

    .line 1115
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x1e

    move-object/from16 v76, v14

    move-object/from16 v14, v74

    .line 1116
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x1f

    move-object/from16 v14, v81

    .line 1117
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x20

    move-object/from16 v78, v14

    move-object/from16 v14, v82

    .line 1118
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x22

    move-object/from16 v79, v14

    move-object/from16 v14, v73

    .line 1119
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x23

    move-object/from16 v14, v72

    .line 1120
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x24

    move-object/from16 v14, v83

    .line 1121
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x2b

    move-object/from16 v80, v14

    move-object/from16 v14, v84

    .line 1122
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v0, 0x30

    move-object/from16 v81, v14

    move-object/from16 v14, v85

    .line 1123
    invoke-virtual {v1, v0, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_3

    .line 1128
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v15, :cond_4

    .line 1132
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    if-eqz v8, :cond_5

    .line 1136
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-eqz v9, :cond_6

    .line 1140
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-eqz v6, :cond_7

    .line 1144
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    if-eqz v7, :cond_8

    .line 1148
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    if-eqz v10, :cond_9

    .line 1152
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_8

    :cond_9
    const/4 v10, 0x0

    :goto_8
    if-eqz v4, :cond_a

    .line 1156
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    if-eqz v11, :cond_b

    .line 1160
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    :goto_a
    if-eqz v2, :cond_c

    .line 1164
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    :goto_b
    if-eqz v3, :cond_d

    .line 1168
    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    goto :goto_c

    :cond_d
    const/4 v3, 0x0

    :goto_c
    if-eqz v5, :cond_e

    .line 1172
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_d

    :cond_e
    const/4 v5, 0x0

    :goto_d
    if-eqz v12, :cond_f

    .line 1176
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_e

    :cond_f
    const/4 v12, 0x0

    :goto_e
    if-eqz v76, :cond_10

    .line 1180
    invoke-virtual/range {v76 .. v76}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    goto :goto_f

    :cond_10
    const/4 v15, 0x0

    :goto_f
    if-eqz v74, :cond_11

    .line 1184
    invoke-virtual/range {v74 .. v74}, Landroidx/databinding/ObservableInt;->get()I

    move-result v74

    goto :goto_10

    :cond_11
    const/16 v74, 0x0

    :goto_10
    if-eqz v78, :cond_12

    .line 1188
    invoke-virtual/range {v78 .. v78}, Landroidx/databinding/ObservableInt;->get()I

    move-result v76

    goto :goto_11

    :cond_12
    const/16 v76, 0x0

    :goto_11
    if-eqz v79, :cond_13

    .line 1192
    invoke-virtual/range {v79 .. v79}, Landroidx/databinding/ObservableInt;->get()I

    move-result v78

    goto :goto_12

    :cond_13
    const/16 v78, 0x0

    :goto_12
    if-eqz v73, :cond_14

    .line 1196
    invoke-virtual/range {v73 .. v73}, Landroidx/databinding/ObservableInt;->get()I

    move-result v73

    goto :goto_13

    :cond_14
    const/16 v73, 0x0

    :goto_13
    if-eqz v72, :cond_15

    .line 1200
    invoke-virtual/range {v72 .. v72}, Landroidx/databinding/ObservableInt;->get()I

    move-result v72

    goto :goto_14

    :cond_15
    const/16 v72, 0x0

    :goto_14
    if-eqz v80, :cond_16

    .line 1204
    invoke-virtual/range {v80 .. v80}, Landroidx/databinding/ObservableInt;->get()I

    move-result v79

    goto :goto_15

    :cond_16
    const/16 v79, 0x0

    :goto_15
    if-eqz v81, :cond_17

    .line 1208
    invoke-virtual/range {v81 .. v81}, Landroidx/databinding/ObservableInt;->get()I

    move-result v80

    goto :goto_16

    :cond_17
    const/16 v80, 0x0

    :goto_16
    if-eqz v14, :cond_18

    .line 1212
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_17

    :cond_18
    const/4 v14, 0x0

    goto :goto_17

    :cond_19
    move-wide/from16 v70, v2

    move-wide/from16 v65, v6

    move-wide/from16 v63, v8

    move-object/from16 v67, v10

    move-object/from16 v24, v12

    move-object/from16 v61, v13

    move-object/from16 v62, v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    :goto_17
    const-wide v81, 0xa000000000002L

    and-long v81, v70, v81

    const-wide/16 v68, 0x0

    cmp-long v81, v81, v68

    if-eqz v81, :cond_1b

    if-eqz v67, :cond_1a

    .line 1219
    invoke-virtual/range {v67 .. v67}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSeatSaveTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v81

    move/from16 v82, v2

    const/4 v2, 0x1

    move-object/from16 v145, v81

    move/from16 v81, v0

    move-object/from16 v0, v145

    goto :goto_18

    :cond_1a
    move/from16 v81, v0

    move/from16 v82, v2

    move-object/from16 v0, v60

    const/4 v2, 0x1

    .line 1221
    :goto_18
    invoke-virtual {v1, v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_1c

    .line 1226
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_19

    :cond_1b
    move/from16 v81, v0

    move/from16 v82, v2

    :cond_1c
    const/4 v0, 0x0

    :goto_19
    const-wide v83, 0xa000000000040L

    and-long v83, v70, v83

    const-wide/16 v68, 0x0

    cmp-long v2, v83, v68

    if-eqz v2, :cond_23

    if-eqz v67, :cond_1d

    .line 1233
    invoke-virtual/range {v67 .. v67}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v83

    move/from16 v84, v3

    move-object/from16 v145, v83

    move/from16 v83, v0

    move-object/from16 v0, v145

    goto :goto_1a

    :cond_1d
    move/from16 v83, v0

    move/from16 v84, v3

    move-object/from16 v0, v60

    :goto_1a
    const/4 v3, 0x6

    .line 1235
    invoke-virtual {v1, v3, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_1e

    .line 1240
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_1b

    :cond_1e
    const/4 v0, 0x0

    :goto_1b
    move-object/from16 v3, v67

    if-eqz v67, :cond_1f

    .line 1246
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_1c

    :cond_1f
    const/4 v0, 0x0

    :goto_1c
    if-eqz v2, :cond_21

    if-eqz v0, :cond_20

    const-wide/high16 v85, 0x200000000000000L

    goto :goto_1d

    :cond_20
    const-wide/high16 v85, 0x100000000000000L

    :goto_1d
    or-long v65, v65, v85

    :cond_21
    if-eqz v0, :cond_22

    goto :goto_1e

    :cond_22
    const/16 v0, 0x8

    goto :goto_1f

    :cond_23
    move/from16 v83, v0

    move/from16 v84, v3

    move-object/from16 v3, v67

    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    and-long v85, v70, v48

    const-wide/16 v67, 0x0

    cmp-long v2, v85, v67

    if-eqz v2, :cond_2b

    if-eqz v3, :cond_24

    .line 1265
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isDisplayIVIClick()Landroidx/databinding/ObservableBoolean;

    move-result-object v67

    move/from16 v85, v4

    move-object/from16 v145, v67

    move/from16 v67, v0

    move-object/from16 v0, v145

    goto :goto_20

    :cond_24
    move/from16 v67, v0

    move/from16 v85, v4

    move-object/from16 v0, v60

    :goto_20
    const/4 v4, 0x7

    .line 1267
    invoke-virtual {v1, v4, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_25

    .line 1272
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_21

    :cond_25
    const/4 v0, 0x0

    :goto_21
    if-eqz v2, :cond_27

    if-eqz v0, :cond_26

    or-long v65, v65, v46

    goto :goto_22

    :cond_26
    const-wide/16 v86, 0x4000

    or-long v65, v65, v86

    :cond_27
    :goto_22
    const-wide v86, 0xa000000000080L

    and-long v86, v70, v86

    const-wide/16 v68, 0x0

    cmp-long v2, v86, v68

    if-eqz v2, :cond_29

    if-eqz v0, :cond_28

    const-wide v86, 0x2000000000L

    goto :goto_23

    :cond_28
    const-wide v86, 0x1000000000L

    :goto_23
    or-long v65, v65, v86

    :cond_29
    if-eqz v2, :cond_2c

    if-eqz v0, :cond_2a

    goto :goto_24

    :cond_2a
    const/16 v2, 0x8

    goto :goto_25

    :cond_2b
    move/from16 v67, v0

    move/from16 v85, v4

    const/4 v0, 0x0

    :cond_2c
    :goto_24
    const/4 v2, 0x0

    :goto_25
    const-wide v86, 0xa000000001000L

    and-long v86, v70, v86

    const-wide/16 v68, 0x0

    cmp-long v4, v86, v68

    if-eqz v4, :cond_33

    if-eqz v3, :cond_2d

    .line 1301
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v86

    move/from16 v87, v2

    move-object/from16 v145, v86

    move/from16 v86, v0

    move-object/from16 v0, v145

    goto :goto_26

    :cond_2d
    move/from16 v86, v0

    move/from16 v87, v2

    move-object/from16 v0, v60

    :goto_26
    const/16 v2, 0xc

    .line 1303
    invoke-virtual {v1, v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_2e

    .line 1308
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_27

    :cond_2e
    const/4 v0, 0x0

    :goto_27
    if-eqz v3, :cond_2f

    .line 1314
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_28

    :cond_2f
    const/4 v0, 0x0

    :goto_28
    if-eqz v4, :cond_31

    if-eqz v0, :cond_30

    const-wide/high16 v88, 0x2000000000000L

    goto :goto_29

    :cond_30
    const-wide/high16 v88, 0x1000000000000L

    :goto_29
    or-long v65, v65, v88

    :cond_31
    if-eqz v0, :cond_32

    goto :goto_2a

    :cond_32
    const/16 v0, 0x8

    goto :goto_2b

    :cond_33
    move/from16 v86, v0

    move/from16 v87, v2

    :goto_2a
    const/4 v0, 0x0

    :goto_2b
    const-wide v88, 0xa000000002000L

    and-long v88, v70, v88

    const-wide/16 v68, 0x0

    cmp-long v2, v88, v68

    if-eqz v2, :cond_35

    if-eqz v3, :cond_34

    .line 1333
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSeatSaveTags()Landroidx/databinding/ObservableField;

    move-result-object v2

    goto :goto_2c

    :cond_34
    move-object/from16 v2, v60

    :goto_2c
    const/16 v4, 0xd

    .line 1335
    invoke-virtual {v1, v4, v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v2, :cond_35

    .line 1340
    invoke-virtual {v2}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_2d

    :cond_35
    move-object/from16 v2, v60

    :goto_2d
    const-wide v88, 0xa000000008000L

    and-long v88, v70, v88

    const-wide/16 v68, 0x0

    cmp-long v4, v88, v68

    if-eqz v4, :cond_3c

    if-eqz v3, :cond_36

    .line 1347
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v88

    move-object/from16 v89, v2

    move-object/from16 v145, v88

    move/from16 v88, v0

    move-object/from16 v0, v145

    goto :goto_2e

    :cond_36
    move/from16 v88, v0

    move-object/from16 v89, v2

    move-object/from16 v0, v60

    :goto_2e
    const/16 v2, 0xf

    .line 1349
    invoke-virtual {v1, v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_37

    .line 1354
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_2f

    :cond_37
    const/4 v0, 0x0

    :goto_2f
    if-eqz v3, :cond_38

    .line 1360
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_30

    :cond_38
    const/4 v0, 0x0

    :goto_30
    if-eqz v4, :cond_3a

    if-eqz v0, :cond_39

    const-wide/16 v90, 0x200

    goto :goto_31

    :cond_39
    const-wide/16 v90, 0x100

    :goto_31
    or-long v65, v65, v90

    :cond_3a
    if-eqz v0, :cond_3b

    goto :goto_32

    :cond_3b
    const/16 v0, 0x8

    goto :goto_33

    :cond_3c
    move/from16 v88, v0

    move-object/from16 v89, v2

    :goto_32
    const/4 v0, 0x0

    :goto_33
    and-long v90, v70, v42

    const-wide/16 v68, 0x0

    cmp-long v2, v90, v68

    if-eqz v2, :cond_40

    if-eqz v3, :cond_3d

    .line 1379
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSeatSaveEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v4

    move/from16 v90, v0

    goto :goto_34

    :cond_3d
    move/from16 v90, v0

    move-object/from16 v4, v60

    :goto_34
    const/16 v0, 0x12

    .line 1381
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_3e

    .line 1386
    invoke-virtual {v4}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_35

    :cond_3e
    const/4 v0, 0x0

    :goto_35
    if-eqz v2, :cond_41

    if-eqz v0, :cond_3f

    or-long v63, v63, v58

    goto :goto_36

    :cond_3f
    const-wide/16 v91, 0x40

    or-long v63, v63, v91

    goto :goto_36

    :cond_40
    move/from16 v90, v0

    const/4 v0, 0x0

    :cond_41
    :goto_36
    const-wide v91, 0xa000000200000L

    and-long v91, v70, v91

    const-wide/16 v68, 0x0

    cmp-long v2, v91, v68

    if-eqz v2, :cond_48

    if-eqz v3, :cond_42

    .line 1401
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatBackrestSupport()Landroidx/databinding/ObservableInt;

    move-result-object v4

    move/from16 v91, v0

    goto :goto_37

    :cond_42
    move/from16 v91, v0

    move-object/from16 v4, v60

    :goto_37
    const/16 v0, 0x15

    .line 1403
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_43

    .line 1408
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_38

    :cond_43
    const/4 v0, 0x0

    :goto_38
    if-eqz v3, :cond_44

    .line 1414
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_39

    :cond_44
    const/4 v0, 0x0

    :goto_39
    if-eqz v2, :cond_46

    if-eqz v0, :cond_45

    or-long v63, v63, v46

    goto :goto_3a

    :cond_45
    const-wide/16 v92, 0x4000

    or-long v63, v63, v92

    :cond_46
    :goto_3a
    if-eqz v0, :cond_47

    goto :goto_3b

    :cond_47
    const/16 v0, 0x8

    goto :goto_3c

    :cond_48
    move/from16 v91, v0

    :goto_3b
    const/4 v0, 0x0

    :goto_3c
    const-wide v92, 0xa000000800000L

    and-long v92, v70, v92

    const-wide/16 v68, 0x0

    cmp-long v2, v92, v68

    if-eqz v2, :cond_4a

    if-eqz v3, :cond_49

    .line 1433
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v2

    goto :goto_3d

    :cond_49
    move-object/from16 v2, v60

    :goto_3d
    const/16 v4, 0x17

    .line 1435
    invoke-virtual {v1, v4, v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v2, :cond_4a

    .line 1440
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    goto :goto_3e

    :cond_4a
    const/4 v2, 0x0

    :goto_3e
    const-wide v92, 0xa000002000000L

    and-long v92, v70, v92

    const-wide/16 v68, 0x0

    cmp-long v4, v92, v68

    if-eqz v4, :cond_51

    if-eqz v3, :cond_4b

    .line 1447
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v92

    move/from16 v93, v2

    move-object/from16 v145, v92

    move/from16 v92, v0

    move-object/from16 v0, v145

    goto :goto_3f

    :cond_4b
    move/from16 v92, v0

    move/from16 v93, v2

    move-object/from16 v0, v60

    :goto_3f
    const/16 v2, 0x19

    .line 1449
    invoke-virtual {v1, v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_4c

    .line 1454
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_40

    :cond_4c
    const/4 v0, 0x0

    :goto_40
    if-eqz v3, :cond_4d

    .line 1460
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_41

    :cond_4d
    const/4 v0, 0x0

    :goto_41
    if-eqz v4, :cond_4f

    if-eqz v0, :cond_4e

    const-wide/high16 v94, 0x200000000000000L

    goto :goto_42

    :cond_4e
    const-wide/high16 v94, 0x100000000000000L

    :goto_42
    or-long v70, v70, v94

    :cond_4f
    if-eqz v0, :cond_50

    goto :goto_43

    :cond_50
    const/16 v0, 0x8

    goto :goto_44

    :cond_51
    move/from16 v92, v0

    move/from16 v93, v2

    :goto_43
    const/4 v0, 0x0

    :goto_44
    const-wide v94, 0xe010210040000L

    and-long v94, v70, v94

    const-wide/16 v68, 0x0

    cmp-long v2, v94, v68

    if-eqz v2, :cond_54

    if-eqz v3, :cond_54

    .line 1479
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;

    if-nez v2, :cond_52

    new-instance v2, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;

    invoke-direct {v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v2, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;

    :cond_52
    invoke-virtual {v2, v3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl1;

    move-result-object v2

    .line 1481
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;

    if-nez v4, :cond_53

    new-instance v4, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;

    invoke-direct {v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;-><init>()V

    iput-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;

    :cond_53
    invoke-virtual {v4, v3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl$OnClickListenerImpl2;

    move-result-object v4

    goto :goto_45

    :cond_54
    move-object/from16 v2, v60

    move-object v4, v2

    :goto_45
    const-wide v94, 0xa000020000000L

    and-long v94, v70, v94

    const-wide/16 v68, 0x0

    cmp-long v94, v94, v68

    if-eqz v94, :cond_5b

    if-eqz v3, :cond_55

    .line 1488
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v95

    move-object/from16 v96, v2

    move-object/from16 v145, v95

    move/from16 v95, v0

    move-object/from16 v0, v145

    goto :goto_46

    :cond_55
    move/from16 v95, v0

    move-object/from16 v96, v2

    move-object/from16 v0, v60

    :goto_46
    const/16 v2, 0x1d

    .line 1490
    invoke-virtual {v1, v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_56

    .line 1495
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_47

    :cond_56
    const/4 v0, 0x0

    :goto_47
    if-eqz v3, :cond_57

    .line 1501
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_48

    :cond_57
    const/4 v0, 0x0

    :goto_48
    if-eqz v94, :cond_59

    if-eqz v0, :cond_58

    const-wide/32 v97, 0x2000000

    goto :goto_49

    :cond_58
    const-wide/32 v97, 0x1000000

    :goto_49
    or-long v65, v65, v97

    :cond_59
    if-eqz v0, :cond_5a

    goto :goto_4a

    :cond_5a
    const/16 v0, 0x8

    goto :goto_4b

    :cond_5b
    move/from16 v95, v0

    move-object/from16 v96, v2

    :goto_4a
    const/4 v0, 0x0

    :goto_4b
    const-wide v97, 0xf483fd55b4f3dL

    and-long v97, v70, v97

    const-wide/16 v68, 0x0

    cmp-long v2, v97, v68

    if-eqz v2, :cond_71

    if-eqz v3, :cond_5c

    .line 1520
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatDetailPositionIndex()Landroidx/databinding/ObservableInt;

    move-result-object v2

    move/from16 v94, v0

    goto :goto_4c

    :cond_5c
    move/from16 v94, v0

    move-object/from16 v2, v60

    :goto_4c
    const/16 v0, 0x21

    .line 1522
    invoke-virtual {v1, v0, v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v2, :cond_5d

    .line 1527
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_4d

    :cond_5d
    const/4 v0, 0x0

    :goto_4d
    and-long v97, v70, v44

    const-wide/16 v68, 0x0

    cmp-long v97, v97, v68

    if-eqz v97, :cond_62

    if-eqz v3, :cond_5e

    .line 1534
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isRightSeatDetail(I)Z

    move-result v98

    .line 1536
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLeftSeatDetail(I)Z

    move-result v99

    goto :goto_4e

    :cond_5e
    const/16 v98, 0x0

    const/16 v99, 0x0

    :goto_4e
    if-eqz v97, :cond_60

    if-eqz v98, :cond_5f

    const-wide/16 v100, 0x8

    goto :goto_4f

    :cond_5f
    const-wide/16 v100, 0x4

    :goto_4f
    or-long v63, v63, v100

    :cond_60
    if-eqz v97, :cond_63

    if-eqz v99, :cond_61

    or-long v70, v70, v54

    goto :goto_50

    :cond_61
    const-wide/high16 v100, 0x1000000000000000L

    or-long v70, v70, v100

    goto :goto_50

    :cond_62
    const/16 v98, 0x0

    const/16 v99, 0x0

    :cond_63
    :goto_50
    and-long v100, v70, v56

    const-wide/16 v68, 0x0

    cmp-long v97, v100, v68

    if-eqz v97, :cond_70

    move-object/from16 v101, v2

    const/4 v2, 0x1

    if-nez v0, :cond_64

    const/16 v100, 0x1

    goto :goto_51

    :cond_64
    const/16 v100, 0x0

    :goto_51
    if-ne v0, v2, :cond_65

    const/4 v2, 0x1

    goto :goto_52

    :cond_65
    const/4 v2, 0x0

    :goto_52
    if-eqz v97, :cond_67

    if-eqz v100, :cond_66

    const-wide/16 v102, 0x8

    or-long v65, v65, v102

    const-wide/16 v102, 0x800

    or-long v65, v65, v102

    const-wide/high16 v102, -0x8000000000000000L

    goto :goto_53

    :cond_66
    const-wide/16 v102, 0x4

    or-long v65, v65, v102

    const-wide/16 v102, 0x400

    or-long v65, v65, v102

    const-wide/high16 v102, 0x4000000000000000L    # 2.0

    :goto_53
    or-long v65, v65, v102

    :cond_67
    if-eqz v97, :cond_69

    if-eqz v2, :cond_68

    or-long v65, v65, v38

    const-wide/16 v102, 0x2000

    or-long v65, v65, v102

    const-wide v102, 0x80000000000L

    goto :goto_54

    :cond_68
    or-long v65, v65, v40

    const-wide/16 v102, 0x1000

    or-long v65, v65, v102

    const-wide v102, 0x40000000000L

    :goto_54
    or-long v65, v65, v102

    :cond_69
    move/from16 v97, v0

    if-eqz v100, :cond_6a

    .line 1588
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v102, v4

    const v4, 0x7f0701d9

    goto :goto_55

    :cond_6a
    move-object/from16 v102, v4

    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0701da

    :goto_55
    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v100, :cond_6b

    const/4 v4, 0x0

    goto :goto_56

    :cond_6b
    const/16 v4, 0x8

    :goto_56
    move-object/from16 v103, v0

    if-eqz v100, :cond_6c

    .line 1592
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1:Lcom/geely/hvac/component/ViewWithBackground;

    move/from16 v104, v4

    const v4, 0x7f0501c2

    goto :goto_57

    :cond_6c
    move/from16 v104, v4

    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1:Lcom/geely/hvac/component/ViewWithBackground;

    const v4, 0x7f0501c3

    :goto_57
    invoke-static {v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    if-eqz v2, :cond_6d

    .line 1594
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1:Lcom/geely/hvac/component/ViewWithBackground;

    move/from16 v105, v0

    const v0, 0x7f0501c2

    invoke-static {v4, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    goto :goto_58

    :cond_6d
    move/from16 v105, v0

    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1:Lcom/geely/hvac/component/ViewWithBackground;

    const v4, 0x7f0501c3

    invoke-static {v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    :goto_58
    if-eqz v2, :cond_6e

    .line 1596
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView6:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v4}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v106, v0

    const v0, 0x7f0701de

    invoke-static {v4, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_59

    :cond_6e
    move/from16 v106, v0

    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView6:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0701dd

    invoke-static {v0, v4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_59
    if-eqz v2, :cond_6f

    const/4 v4, 0x0

    goto :goto_5a

    :cond_6f
    const/16 v4, 0x8

    :goto_5a
    move/from16 v145, v2

    move-object v2, v0

    move-object/from16 v0, v103

    move/from16 v103, v100

    move/from16 v100, v99

    move/from16 v146, v4

    move/from16 v4, v145

    move-wide/from16 v147, v63

    move/from16 v63, v146

    move-wide/from16 v149, v65

    move/from16 v66, v98

    move-wide/from16 v64, v147

    move-wide/from16 v98, v70

    move-wide/from16 v70, v149

    goto :goto_5b

    :cond_70
    move/from16 v97, v0

    move-object/from16 v101, v2

    move-object/from16 v102, v4

    move-object/from16 v0, v60

    move-object v2, v0

    move/from16 v100, v99

    const/4 v4, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    move-wide/from16 v145, v65

    move/from16 v66, v98

    move-wide/from16 v64, v63

    move-wide/from16 v98, v70

    const/16 v63, 0x0

    move-wide/from16 v70, v145

    goto :goto_5b

    :cond_71
    move/from16 v94, v0

    move-object/from16 v102, v4

    move-object/from16 v0, v60

    move-object v2, v0

    move-object/from16 v101, v2

    move-wide/from16 v98, v70

    const/4 v4, 0x0

    const/16 v97, 0x0

    const/16 v100, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    move-wide/from16 v70, v65

    const/16 v66, 0x0

    move-wide/from16 v64, v63

    const/16 v63, 0x0

    :goto_5b
    const-wide v107, 0xa004000000000L

    and-long v107, v98, v107

    const-wide/16 v68, 0x0

    cmp-long v107, v107, v68

    if-eqz v107, :cond_78

    if-eqz v3, :cond_72

    .line 1605
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v108

    move-object/from16 v109, v2

    move-object/from16 v145, v108

    move-object/from16 v108, v0

    move-object/from16 v0, v145

    goto :goto_5c

    :cond_72
    move-object/from16 v108, v0

    move-object/from16 v109, v2

    move-object/from16 v0, v60

    :goto_5c
    const/16 v2, 0x26

    .line 1607
    invoke-virtual {v1, v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_73

    .line 1612
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_5d

    :cond_73
    const/4 v0, 0x0

    :goto_5d
    if-eqz v3, :cond_74

    .line 1618
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_5e

    :cond_74
    const/4 v0, 0x0

    :goto_5e
    if-eqz v107, :cond_76

    if-eqz v0, :cond_75

    or-long v64, v64, v38

    goto :goto_5f

    :cond_75
    or-long v64, v64, v40

    :cond_76
    :goto_5f
    if-eqz v0, :cond_77

    goto :goto_60

    :cond_77
    const/16 v0, 0x8

    goto :goto_61

    :cond_78
    move-object/from16 v108, v0

    move-object/from16 v109, v2

    :goto_60
    const/4 v0, 0x0

    :goto_61
    const-wide v110, 0xa008200000000L

    and-long v110, v98, v110

    const-wide/16 v68, 0x0

    cmp-long v2, v110, v68

    if-eqz v2, :cond_7d

    if-eqz v3, :cond_79

    .line 1637
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSeatPositionSaveSupport()Landroidx/databinding/ObservableInt;

    move-result-object v107

    move/from16 v110, v4

    move-object/from16 v145, v107

    move/from16 v107, v0

    move-object/from16 v0, v145

    goto :goto_62

    :cond_79
    move/from16 v107, v0

    move/from16 v110, v4

    move-object/from16 v0, v60

    :goto_62
    const/16 v4, 0x27

    .line 1639
    invoke-virtual {v1, v4, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_7a

    .line 1644
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_63

    :cond_7a
    const/4 v0, 0x0

    :goto_63
    if-eqz v3, :cond_7b

    .line 1650
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_64

    :cond_7b
    const/4 v0, 0x0

    :goto_64
    if-eqz v2, :cond_7e

    if-eqz v0, :cond_7c

    or-long v64, v64, v50

    goto :goto_65

    :cond_7c
    const-wide/16 v111, 0x1

    or-long v64, v64, v111

    goto :goto_65

    :cond_7d
    move/from16 v107, v0

    move/from16 v110, v4

    const/4 v0, 0x0

    :cond_7e
    :goto_65
    and-long v111, v98, v36

    const-wide/16 v68, 0x0

    cmp-long v2, v111, v68

    if-eqz v2, :cond_82

    if-eqz v3, :cond_7f

    .line 1665
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v4

    move/from16 v111, v0

    goto :goto_66

    :cond_7f
    move/from16 v111, v0

    move-object/from16 v4, v60

    :goto_66
    const/16 v0, 0x28

    .line 1667
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_80

    .line 1672
    invoke-virtual {v4}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_67

    :cond_80
    const/4 v0, 0x0

    :goto_67
    if-eqz v2, :cond_83

    if-eqz v0, :cond_81

    or-long v70, v70, v58

    goto :goto_68

    :cond_81
    const-wide/16 v112, 0x40

    or-long v70, v70, v112

    goto :goto_68

    :cond_82
    move/from16 v111, v0

    const/4 v0, 0x0

    :cond_83
    :goto_68
    const-wide v112, 0xa020000000000L

    and-long v112, v98, v112

    const-wide/16 v68, 0x0

    cmp-long v2, v112, v68

    if-eqz v2, :cond_8a

    if-eqz v3, :cond_84

    .line 1687
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatBackrestSupport()Landroidx/databinding/ObservableInt;

    move-result-object v4

    move/from16 v112, v0

    goto :goto_69

    :cond_84
    move/from16 v112, v0

    move-object/from16 v4, v60

    :goto_69
    const/16 v0, 0x29

    .line 1689
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_85

    .line 1694
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_6a

    :cond_85
    const/4 v0, 0x0

    :goto_6a
    if-eqz v3, :cond_86

    .line 1700
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_6b

    :cond_86
    const/4 v0, 0x0

    :goto_6b
    if-eqz v2, :cond_88

    if-eqz v0, :cond_87

    const-wide/high16 v113, -0x8000000000000000L

    goto :goto_6c

    :cond_87
    const-wide/high16 v113, 0x4000000000000000L    # 2.0

    :goto_6c
    or-long v98, v98, v113

    :cond_88
    if-eqz v0, :cond_89

    goto :goto_6d

    :cond_89
    const/16 v0, 0x8

    goto :goto_6e

    :cond_8a
    move/from16 v112, v0

    :goto_6d
    const/4 v0, 0x0

    :goto_6e
    const-wide v113, 0xa040000000000L

    and-long v113, v98, v113

    const-wide/16 v68, 0x0

    cmp-long v2, v113, v68

    if-eqz v2, :cond_91

    if-eqz v3, :cond_8b

    .line 1719
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v4

    move/from16 v113, v0

    goto :goto_6f

    :cond_8b
    move/from16 v113, v0

    move-object/from16 v4, v60

    :goto_6f
    const/16 v0, 0x2a

    .line 1721
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_8c

    .line 1726
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_70

    :cond_8c
    const/4 v0, 0x0

    :goto_70
    if-eqz v3, :cond_8d

    .line 1732
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_71

    :cond_8d
    const/4 v0, 0x0

    :goto_71
    if-eqz v2, :cond_8f

    if-eqz v0, :cond_8e

    const-wide/16 v114, 0x800

    goto :goto_72

    :cond_8e
    const-wide/16 v114, 0x400

    :goto_72
    or-long v64, v64, v114

    :cond_8f
    if-eqz v0, :cond_90

    goto :goto_73

    :cond_90
    const/16 v0, 0x8

    goto :goto_74

    :cond_91
    move/from16 v113, v0

    :goto_73
    const/4 v0, 0x0

    :goto_74
    const-wide v114, 0xa100000000000L

    and-long v114, v98, v114

    const-wide/16 v68, 0x0

    cmp-long v2, v114, v68

    if-eqz v2, :cond_98

    if-eqz v3, :cond_92

    .line 1751
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v4

    move/from16 v114, v0

    goto :goto_75

    :cond_92
    move/from16 v114, v0

    move-object/from16 v4, v60

    :goto_75
    const/16 v0, 0x2c

    .line 1753
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_93

    .line 1758
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_76

    :cond_93
    const/4 v0, 0x0

    :goto_76
    if-eqz v3, :cond_94

    .line 1764
    invoke-virtual {v3, v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_77

    :cond_94
    const/4 v0, 0x0

    :goto_77
    if-eqz v2, :cond_96

    if-eqz v0, :cond_95

    const-wide/high16 v115, 0x20000000000000L

    goto :goto_78

    :cond_95
    const-wide/high16 v115, 0x10000000000000L

    :goto_78
    or-long v70, v70, v115

    :cond_96
    if-eqz v0, :cond_97

    goto :goto_79

    :cond_97
    const/16 v0, 0x8

    goto :goto_7a

    :cond_98
    move/from16 v114, v0

    :goto_79
    const/4 v0, 0x0

    :goto_7a
    const-wide v115, 0xa200000000000L

    and-long v115, v98, v115

    const-wide/16 v68, 0x0

    cmp-long v2, v115, v68

    if-eqz v2, :cond_a6

    if-eqz v3, :cond_99

    .line 1783
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIsKx11A3Mode()Landroidx/databinding/ObservableBoolean;

    move-result-object v4

    move/from16 v115, v0

    goto :goto_7b

    :cond_99
    move/from16 v115, v0

    move-object/from16 v4, v60

    :goto_7b
    const/16 v0, 0x2d

    .line 1785
    invoke-virtual {v1, v0, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_9a

    .line 1790
    invoke-virtual {v4}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_7c

    :cond_9a
    const/4 v0, 0x0

    :goto_7c
    xor-int/lit8 v116, v0, 0x1

    if-eqz v2, :cond_9c

    if-eqz v116, :cond_9b

    const-wide/high16 v117, 0x20000000000000L

    or-long v98, v98, v117

    const-wide/high16 v117, 0x800000000000000L

    or-long v98, v98, v117

    or-long v70, v70, v50

    const-wide/32 v117, 0x20000

    or-long v70, v70, v117

    const-wide/32 v117, 0x800000

    or-long v70, v70, v117

    const-wide v117, 0x200000000L

    or-long v70, v70, v117

    const-wide v117, 0x800000000L

    or-long v70, v70, v117

    const-wide/high16 v117, 0x800000000000000L

    or-long v70, v70, v117

    or-long v70, v70, v54

    goto :goto_7d

    :cond_9b
    const-wide/high16 v117, 0x10000000000000L

    or-long v98, v98, v117

    const-wide/high16 v117, 0x400000000000000L

    or-long v98, v98, v117

    const-wide/16 v117, 0x1

    or-long v70, v70, v117

    const-wide/32 v117, 0x10000

    or-long v70, v70, v117

    const-wide/32 v117, 0x400000

    or-long v70, v70, v117

    const-wide v117, 0x100000000L

    or-long v70, v70, v117

    const-wide v117, 0x400000000L

    or-long v70, v70, v117

    const-wide/high16 v117, 0x400000000000000L

    or-long v70, v70, v117

    const-wide/high16 v117, 0x1000000000000000L

    or-long v70, v70, v117

    :cond_9c
    :goto_7d
    if-eqz v116, :cond_9d

    const v2, 0x7f0d0070

    goto :goto_7e

    :cond_9d
    const v2, 0x7f0d0071

    :goto_7e
    if-eqz v116, :cond_9e

    const v117, 0x7f0d006a

    goto :goto_7f

    :cond_9e
    const v117, 0x7f0d006b

    :goto_7f
    if-eqz v116, :cond_9f

    const v118, 0x7f0d002d

    goto :goto_80

    :cond_9f
    const v118, 0x7f0d002e

    :goto_80
    if-eqz v116, :cond_a0

    const v119, 0x7f0d006c

    goto :goto_81

    :cond_a0
    const v119, 0x7f0d006d

    :goto_81
    if-eqz v116, :cond_a1

    const v120, 0x7f0d0065

    goto :goto_82

    :cond_a1
    const v120, 0x7f0d0066

    :goto_82
    if-eqz v116, :cond_a2

    const v121, 0x7f0d006e

    goto :goto_83

    :cond_a2
    const v121, 0x7f0d006f

    :goto_83
    if-eqz v116, :cond_a3

    const v122, 0x7f0d0073

    goto :goto_84

    :cond_a3
    const v122, 0x7f0d0074

    :goto_84
    if-eqz v116, :cond_a4

    const v123, 0x7f0d0046

    goto :goto_85

    :cond_a4
    const v123, 0x7f0d0047

    :goto_85
    if-eqz v116, :cond_a5

    const v116, 0x7f0d002a

    goto :goto_86

    :cond_a5
    const v116, 0x7f0d002b

    goto :goto_86

    :cond_a6
    move/from16 v115, v0

    move-object/from16 v4, v60

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    :goto_86
    const-wide v124, 0xa800000000000L

    and-long v124, v98, v124

    const-wide/16 v68, 0x0

    cmp-long v124, v124, v68

    if-eqz v124, :cond_a8

    if-eqz v3, :cond_a7

    .line 1845
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveTags()Landroidx/databinding/ObservableField;

    move-result-object v124

    move/from16 v125, v2

    move-object/from16 v145, v124

    move/from16 v124, v0

    move-object/from16 v0, v145

    goto :goto_87

    :cond_a7
    move/from16 v124, v0

    move/from16 v125, v2

    move-object/from16 v0, v60

    :goto_87
    const/16 v2, 0x2f

    .line 1847
    invoke-virtual {v1, v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_a9

    .line 1852
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v130, v27

    move-object/from16 v131, v33

    move-object/from16 v132, v34

    move-object/from16 v133, v35

    move/from16 v134, v63

    move/from16 v63, v67

    move/from16 v34, v76

    move/from16 v27, v82

    move-object/from16 v128, v89

    move/from16 v127, v93

    move-object/from16 v126, v96

    move/from16 v96, v97

    move-object/from16 v129, v102

    move/from16 v135, v104

    move/from16 v136, v105

    move/from16 v137, v106

    move/from16 v76, v107

    move-object/from16 v82, v108

    move/from16 v2, v122

    move/from16 v33, v12

    move/from16 v35, v15

    move-object/from16 v97, v21

    move-object/from16 v108, v22

    move-object/from16 v104, v24

    move-object/from16 v89, v25

    move-object/from16 v93, v26

    move-object/from16 v102, v28

    move-object/from16 v106, v30

    move-object/from16 v105, v32

    move-object/from16 v107, v61

    move/from16 v24, v72

    move/from16 v28, v79

    move/from16 v25, v81

    move/from16 v72, v88

    move/from16 v79, v92

    move/from16 v61, v95

    move-object/from16 v81, v109

    move/from16 v12, v113

    move/from16 v15, v115

    move/from16 v30, v7

    move/from16 v26, v9

    move/from16 v32, v10

    move/from16 v22, v11

    move/from16 v21, v13

    move-object/from16 v88, v20

    move-object/from16 v92, v29

    move-object/from16 v109, v31

    move/from16 v95, v66

    move/from16 v13, v83

    move/from16 v31, v85

    move/from16 v83, v87

    move/from16 v10, v116

    move/from16 v9, v119

    move/from16 v7, v121

    move/from16 v11, v125

    move/from16 v20, v5

    move/from16 v29, v6

    move-object/from16 v85, v19

    move-object/from16 v87, v23

    move-wide/from16 v66, v64

    move/from16 v23, v78

    move/from16 v78, v94

    move/from16 v64, v114

    move/from16 v6, v120

    move/from16 v5, v123

    move-object/from16 v65, v4

    move/from16 v19, v8

    move/from16 v94, v73

    move/from16 v73, v90

    move/from16 v4, v117

    move/from16 v8, v118

    move-object/from16 v90, v18

    move/from16 v18, v14

    move-object v14, v0

    move/from16 v0, v112

    goto/16 :goto_88

    :cond_a8
    move/from16 v124, v0

    move/from16 v125, v2

    :cond_a9
    move-object/from16 v130, v27

    move-object/from16 v131, v33

    move-object/from16 v132, v34

    move-object/from16 v133, v35

    move/from16 v134, v63

    move/from16 v63, v67

    move/from16 v34, v76

    move/from16 v27, v82

    move-object/from16 v128, v89

    move/from16 v127, v93

    move-object/from16 v126, v96

    move/from16 v96, v97

    move-object/from16 v129, v102

    move/from16 v135, v104

    move/from16 v136, v105

    move/from16 v137, v106

    move/from16 v76, v107

    move-object/from16 v82, v108

    move/from16 v0, v112

    move/from16 v2, v122

    move/from16 v33, v12

    move/from16 v35, v15

    move-object/from16 v97, v21

    move-object/from16 v108, v22

    move-object/from16 v104, v24

    move-object/from16 v89, v25

    move-object/from16 v93, v26

    move-object/from16 v102, v28

    move-object/from16 v106, v30

    move-object/from16 v105, v32

    move-object/from16 v107, v61

    move/from16 v24, v72

    move/from16 v28, v79

    move/from16 v25, v81

    move/from16 v72, v88

    move/from16 v79, v92

    move/from16 v61, v95

    move-object/from16 v81, v109

    move/from16 v12, v113

    move/from16 v15, v115

    move/from16 v30, v7

    move/from16 v26, v9

    move/from16 v32, v10

    move/from16 v22, v11

    move/from16 v21, v13

    move-object/from16 v88, v20

    move-object/from16 v92, v29

    move-object/from16 v109, v31

    move/from16 v95, v66

    move/from16 v13, v83

    move/from16 v31, v85

    move/from16 v83, v87

    move/from16 v10, v116

    move/from16 v9, v119

    move/from16 v7, v121

    move/from16 v11, v125

    move/from16 v20, v5

    move/from16 v29, v6

    move-object/from16 v85, v19

    move-object/from16 v87, v23

    move-wide/from16 v66, v64

    move/from16 v23, v78

    move/from16 v78, v94

    move/from16 v64, v114

    move/from16 v6, v120

    move/from16 v5, v123

    move-object/from16 v65, v4

    move/from16 v19, v8

    move/from16 v94, v73

    move/from16 v73, v90

    move/from16 v4, v117

    move/from16 v8, v118

    move-object/from16 v90, v18

    move/from16 v18, v14

    move-object/from16 v14, v60

    goto/16 :goto_88

    :cond_aa
    move-wide/from16 v70, v2

    move-wide/from16 v65, v6

    move-wide/from16 v63, v8

    move-object v3, v10

    move-object/from16 v62, v15

    move-object/from16 v14, v60

    move-object/from16 v81, v14

    move-object/from16 v82, v81

    move-object/from16 v85, v82

    move-object/from16 v87, v85

    move-object/from16 v88, v87

    move-object/from16 v89, v88

    move-object/from16 v90, v89

    move-object/from16 v92, v90

    move-object/from16 v93, v92

    move-object/from16 v97, v93

    move-object/from16 v101, v97

    move-object/from16 v102, v101

    move-object/from16 v104, v102

    move-object/from16 v105, v104

    move-object/from16 v106, v105

    move-object/from16 v107, v106

    move-object/from16 v108, v107

    move-object/from16 v109, v108

    move-object/from16 v126, v109

    move-object/from16 v128, v126

    move-object/from16 v129, v128

    move-object/from16 v130, v129

    move-object/from16 v131, v130

    move-object/from16 v132, v131

    move-object/from16 v133, v132

    move-wide/from16 v98, v70

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v61, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v86, 0x0

    const/16 v91, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v100, 0x0

    const/16 v103, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v124, 0x0

    const/16 v127, 0x0

    const/16 v134, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const/16 v137, 0x0

    move-wide/from16 v70, v65

    move-object/from16 v65, v133

    move-wide/from16 v66, v63

    const/16 v63, 0x0

    const/16 v64, 0x0

    :goto_88
    const-wide v112, 0xf483fc55b4f3dL

    and-long v112, v98, v112

    const-wide/16 v68, 0x0

    cmp-long v112, v112, v68

    if-eqz v112, :cond_cc

    and-long v112, v98, v52

    cmp-long v112, v112, v68

    if-eqz v112, :cond_af

    if-eqz v62, :cond_ab

    move/from16 v138, v12

    move-object/from16 v12, v62

    move/from16 v139, v13

    const/16 v75, 0x8

    const/16 v113, 0x0

    move/from16 v13, v96

    move/from16 v77, v2

    move-object/from16 v140, v14

    const v2, 0x2d030100

    move/from16 v14, v74

    move/from16 v141, v15

    move-object/from16 v2, v62

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v80

    move/from16 v21, v23

    move/from16 v22, v84

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v31

    move/from16 v31, v32

    move/from16 v32, v33

    move/from16 v33, v34

    move/from16 v34, v35

    move/from16 v35, v94

    .line 1863
    invoke-virtual/range {v12 .. v35}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->isTypeAvailable(IIIIIIIIIIIIIIIIIIIIIII)Z

    move-result v13

    goto :goto_89

    :cond_ab
    move/from16 v77, v2

    move/from16 v138, v12

    move/from16 v139, v13

    move-object/from16 v140, v14

    move/from16 v141, v15

    move-object/from16 v2, v62

    const/16 v75, 0x8

    const/16 v113, 0x0

    move/from16 v13, v113

    :goto_89
    if-eqz v112, :cond_ad

    if-eqz v13, :cond_ac

    const-wide/16 v14, 0x200

    goto :goto_8a

    :cond_ac
    const-wide/16 v14, 0x100

    :goto_8a
    or-long v66, v66, v14

    :cond_ad
    if-eqz v13, :cond_ae

    move/from16 v13, v113

    goto :goto_8b

    :cond_ae
    move/from16 v13, v75

    :goto_8b
    move/from16 v19, v13

    goto :goto_8c

    :cond_af
    move/from16 v77, v2

    move/from16 v138, v12

    move/from16 v139, v13

    move-object/from16 v140, v14

    move/from16 v141, v15

    move-object/from16 v2, v62

    const/16 v75, 0x8

    const/16 v113, 0x0

    move/from16 v19, v113

    :goto_8c
    const-wide v12, 0xe000200000000L

    and-long v12, v98, v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_b0

    if-eqz v2, :cond_b0

    move/from16 v13, v96

    .line 1882
    invoke-virtual {v2, v13}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->formatSeatSetLabel(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v12

    goto :goto_8d

    :cond_b0
    move/from16 v13, v96

    move-object/from16 v20, v60

    :goto_8d
    const-wide v16, 0xe000200000400L

    and-long v16, v98, v16

    cmp-long v12, v16, v14

    if-eqz v12, :cond_b8

    if-eqz v2, :cond_b1

    .line 1889
    invoke-virtual {v2, v13}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getTagByIndex(I)I

    move-result v14

    goto :goto_8e

    :cond_b1
    move/from16 v14, v113

    :goto_8e
    if-eqz v3, :cond_b2

    const v15, 0x2d030100

    .line 1895
    invoke-virtual {v3, v15, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v15

    move/from16 v16, v13

    goto :goto_8f

    :cond_b2
    move/from16 v16, v13

    move-object/from16 v15, v60

    :goto_8f
    const/16 v13, 0xa

    .line 1897
    invoke-virtual {v1, v13, v15}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_b3

    .line 1902
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_90

    :cond_b3
    move/from16 v13, v113

    :goto_90
    if-eqz v3, :cond_b4

    .line 1908
    invoke-virtual {v3, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v13

    goto :goto_91

    :cond_b4
    move/from16 v13, v113

    :goto_91
    if-eqz v12, :cond_b6

    if-eqz v13, :cond_b5

    const-wide v17, 0x20000000000L

    goto :goto_92

    :cond_b5
    const-wide v17, 0x10000000000L

    :goto_92
    or-long v70, v70, v17

    :cond_b6
    if-eqz v13, :cond_b7

    move/from16 v13, v113

    goto :goto_93

    :cond_b7
    move/from16 v13, v75

    :goto_93
    move/from16 v22, v13

    move/from16 v21, v14

    goto :goto_94

    :cond_b8
    move/from16 v16, v13

    move/from16 v21, v113

    move/from16 v22, v21

    :goto_94
    const-wide v12, 0xe402201020000L

    and-long v12, v98, v12

    const-wide/16 v14, 0x0

    cmp-long v23, v12, v14

    if-eqz v23, :cond_cb

    if-eqz v2, :cond_b9

    .line 1927
    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getRight1TypeIndex()Landroidx/databinding/ObservableInt;

    move-result-object v12

    .line 1929
    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getLeft2TypeIndex()Landroidx/databinding/ObservableInt;

    move-result-object v13

    .line 1931
    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getOnTabChangeListener()Lcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;

    move-result-object v14

    .line 1933
    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getLeft1TypeIndex()Landroidx/databinding/ObservableInt;

    move-result-object v15

    .line 1935
    invoke-virtual {v2}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getRight2TypeIndex()Landroidx/databinding/ObservableInt;

    move-result-object v17

    move/from16 v25, v4

    move-object/from16 v24, v14

    move-object/from16 v14, v17

    goto :goto_95

    :cond_b9
    move/from16 v25, v4

    move-object/from16 v12, v60

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v24, v15

    :goto_95
    const/16 v4, 0x11

    .line 1937
    invoke-virtual {v1, v4, v12}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v4, 0x18

    .line 1938
    invoke-virtual {v1, v4, v13}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v4, 0x25

    .line 1939
    invoke-virtual {v1, v4, v15}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/16 v4, 0x2e

    .line 1940
    invoke-virtual {v1, v4, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_ba

    .line 1945
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_96

    :cond_ba
    move/from16 v4, v113

    :goto_96
    if-eqz v13, :cond_bb

    .line 1949
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    move/from16 v26, v12

    goto :goto_97

    :cond_bb
    move/from16 v26, v113

    :goto_97
    if-eqz v15, :cond_bc

    .line 1953
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    move/from16 v27, v12

    goto :goto_98

    :cond_bc
    move/from16 v27, v113

    :goto_98
    if-eqz v14, :cond_bd

    .line 1957
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    move/from16 v28, v12

    goto :goto_99

    :cond_bd
    move/from16 v28, v113

    :goto_99
    if-eqz v2, :cond_be

    const/16 v18, 0x1

    move-object v12, v2

    move/from16 v29, v16

    move/from16 v13, v29

    move/from16 v14, v27

    move/from16 v15, v26

    move/from16 v16, v4

    move/from16 v17, v28

    .line 1963
    invoke-virtual/range {v12 .. v18}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getSeatTypeVisibility(IIIIII)Z

    move-result v30

    .line 1965
    invoke-virtual/range {v12 .. v17}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getTypeSelectType(IIIII)I

    move-result v31

    const/16 v18, 0x0

    .line 1967
    invoke-virtual/range {v12 .. v18}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getSeatTypeVisibility(IIIIII)Z

    move-result v32

    const/16 v18, 0x3

    .line 1969
    invoke-virtual/range {v12 .. v18}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getSeatTypeVisibility(IIIIII)Z

    move-result v33

    const/16 v18, 0x2

    .line 1971
    invoke-virtual/range {v12 .. v18}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getSeatTypeVisibility(IIIIII)Z

    move-result v13

    move v4, v13

    move/from16 v13, v30

    goto :goto_9a

    :cond_be
    move/from16 v29, v16

    move/from16 v4, v113

    move v13, v4

    move/from16 v31, v13

    move/from16 v32, v31

    move/from16 v33, v32

    :goto_9a
    if-eqz v23, :cond_c0

    if-eqz v13, :cond_bf

    const-wide/32 v14, 0x80000

    goto :goto_9b

    :cond_bf
    const-wide/32 v14, 0x40000

    :goto_9b
    or-long v70, v70, v14

    :cond_c0
    if-eqz v23, :cond_c2

    if-eqz v32, :cond_c1

    const-wide v14, 0x200000000000L

    goto :goto_9c

    :cond_c1
    const-wide v14, 0x100000000000L

    :goto_9c
    or-long v70, v70, v14

    :cond_c2
    if-eqz v23, :cond_c4

    if-eqz v33, :cond_c3

    const-wide/32 v14, 0x200000

    goto :goto_9d

    :cond_c3
    const-wide/32 v14, 0x100000

    :goto_9d
    or-long v70, v70, v14

    :cond_c4
    if-eqz v23, :cond_c6

    if-eqz v4, :cond_c5

    const-wide v14, 0x8000000000L

    goto :goto_9e

    :cond_c5
    const-wide v14, 0x4000000000L

    :goto_9e
    or-long v14, v70, v14

    move-wide/from16 v70, v14

    :cond_c6
    if-eqz v13, :cond_c7

    move/from16 v13, v113

    goto :goto_9f

    :cond_c7
    move/from16 v13, v75

    :goto_9f
    if-eqz v32, :cond_c8

    move/from16 v12, v113

    goto :goto_a0

    :cond_c8
    move/from16 v12, v75

    :goto_a0
    if-eqz v33, :cond_c9

    move/from16 v14, v113

    goto :goto_a1

    :cond_c9
    move/from16 v14, v75

    :goto_a1
    if-eqz v4, :cond_ca

    move/from16 v4, v113

    goto :goto_a2

    :cond_ca
    move/from16 v4, v75

    :goto_a2
    move/from16 v18, v4

    move/from16 v142, v12

    move v12, v13

    move/from16 v17, v14

    move/from16 v143, v19

    move-object/from16 v13, v20

    move/from16 v16, v21

    move/from16 v4, v22

    move-object/from16 v15, v24

    move/from16 v14, v31

    goto :goto_a3

    :cond_cb
    move/from16 v25, v4

    move/from16 v29, v16

    move/from16 v143, v19

    move-object/from16 v13, v20

    move/from16 v16, v21

    move/from16 v4, v22

    move-object/from16 v15, v60

    move/from16 v12, v113

    move v14, v12

    move/from16 v17, v14

    move/from16 v18, v17

    move/from16 v142, v18

    goto :goto_a3

    :cond_cc
    move/from16 v77, v2

    move/from16 v25, v4

    move/from16 v138, v12

    move/from16 v139, v13

    move-object/from16 v140, v14

    move/from16 v141, v15

    move-object/from16 v2, v62

    move/from16 v29, v96

    const/16 v75, 0x8

    const/16 v113, 0x0

    move-object/from16 v13, v60

    move-object v15, v13

    move/from16 v4, v113

    move v12, v4

    move v14, v12

    move/from16 v16, v14

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v142, v18

    move/from16 v143, v142

    :goto_a3
    and-long v19, v98, v54

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_ce

    and-long v23, v70, v58

    cmp-long v20, v23, v21

    if-nez v20, :cond_ce

    const-wide/16 v23, 0x8a

    and-long v23, v66, v23

    cmp-long v20, v23, v21

    if-eqz v20, :cond_cd

    goto :goto_a5

    :cond_cd
    move/from16 v20, v14

    move-object/from16 v21, v15

    move/from16 v15, v29

    :goto_a4
    move/from16 v14, v110

    goto :goto_a9

    :cond_ce
    :goto_a5
    if-eqz v3, :cond_cf

    .line 2023
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatDetailPositionIndex()Landroidx/databinding/ObservableInt;

    move-result-object v101

    :cond_cf
    move/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v14, v101

    const/16 v15, 0x21

    .line 2025
    invoke-virtual {v1, v15, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_d0

    .line 2030
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v96

    move/from16 v15, v96

    goto :goto_a6

    :cond_d0
    move/from16 v15, v29

    :goto_a6
    and-long v22, v66, v50

    const-wide/16 v26, 0x0

    cmp-long v22, v22, v26

    if-eqz v22, :cond_d4

    move-object/from16 v22, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_d1

    const/4 v14, 0x1

    goto :goto_a7

    :cond_d1
    move/from16 v14, v113

    :goto_a7
    and-long v23, v98, v56

    cmp-long v23, v23, v26

    if-eqz v23, :cond_d3

    if-eqz v14, :cond_d2

    or-long v23, v70, v38

    const-wide/16 v26, 0x2000

    or-long v23, v23, v26

    const-wide v26, 0x80000000000L

    goto :goto_a8

    :cond_d2
    or-long v23, v70, v40

    const-wide/16 v26, 0x1000

    or-long v23, v23, v26

    const-wide v26, 0x40000000000L

    :goto_a8
    or-long v70, v23, v26

    :cond_d3
    move-object/from16 v101, v22

    goto :goto_a9

    :cond_d4
    move-object/from16 v22, v14

    move-object/from16 v101, v22

    goto :goto_a4

    :goto_a9
    if-nez v19, :cond_d6

    and-long v22, v70, v58

    const-wide/16 v26, 0x0

    cmp-long v22, v22, v26

    if-nez v22, :cond_d6

    const-wide/16 v22, 0x88

    and-long v22, v66, v22

    cmp-long v22, v22, v26

    if-eqz v22, :cond_d5

    goto :goto_aa

    :cond_d5
    move/from16 v22, v16

    move/from16 v2, v113

    const-wide/16 v26, 0x0

    move/from16 v16, v14

    move v14, v2

    goto :goto_b0

    :cond_d6
    :goto_aa
    if-eqz v2, :cond_d7

    .line 2057
    invoke-virtual {v2, v15}, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;->getTagByIndex(I)I

    move-result v2

    goto :goto_ab

    :cond_d7
    move/from16 v2, v16

    :goto_ab
    move/from16 v16, v14

    if-eqz v3, :cond_d8

    const v14, 0x2d400100

    .line 2063
    invoke-virtual {v3, v14, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v14

    move/from16 v22, v2

    goto :goto_ac

    :cond_d8
    move/from16 v22, v2

    move-object/from16 v14, v60

    :goto_ac
    const/16 v2, 0x1c

    .line 2065
    invoke-virtual {v1, v2, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_d9

    .line 2070
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    goto :goto_ad

    :cond_d9
    move/from16 v2, v113

    :goto_ad
    and-long v23, v70, v58

    const-wide/16 v26, 0x0

    cmp-long v14, v23, v26

    if-nez v14, :cond_da

    and-long v23, v66, v58

    cmp-long v14, v23, v26

    if-eqz v14, :cond_db

    :cond_da
    if-eqz v3, :cond_db

    .line 2077
    invoke-virtual {v3, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v14

    goto :goto_ae

    :cond_db
    move/from16 v14, v113

    :goto_ae
    if-nez v19, :cond_dc

    const-wide/16 v23, 0x8

    and-long v23, v66, v23

    const-wide/16 v26, 0x0

    cmp-long v19, v23, v26

    if-eqz v19, :cond_dd

    goto :goto_af

    :cond_dc
    const-wide/16 v26, 0x0

    :goto_af
    if-eqz v3, :cond_dd

    .line 2084
    invoke-virtual {v3, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v2

    goto :goto_b0

    :cond_dd
    move/from16 v2, v113

    :goto_b0
    and-long v23, v70, v46

    cmp-long v19, v23, v26

    if-eqz v19, :cond_df

    if-eqz v3, :cond_de

    .line 2092
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIsKx11A3Mode()Landroidx/databinding/ObservableBoolean;

    move-result-object v65

    :cond_de
    move/from16 v19, v2

    move/from16 v23, v14

    move-object/from16 v2, v65

    const/16 v14, 0x2d

    .line 2094
    invoke-virtual {v1, v14, v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v2, :cond_e0

    .line 2099
    invoke-virtual {v2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v124

    goto :goto_b1

    :cond_df
    move/from16 v19, v2

    move/from16 v23, v14

    :cond_e0
    :goto_b1
    and-long v26, v98, v44

    const-wide/16 v28, 0x0

    cmp-long v2, v26, v28

    if-eqz v2, :cond_e9

    if-eqz v100, :cond_e1

    move/from16 v14, v19

    goto :goto_b2

    :cond_e1
    move/from16 v14, v113

    :goto_b2
    if-eqz v95, :cond_e2

    goto :goto_b3

    :cond_e2
    move/from16 v19, v113

    :goto_b3
    if-eqz v2, :cond_e4

    if-eqz v14, :cond_e3

    const-wide v26, 0x80000000L

    goto :goto_b4

    :cond_e3
    const-wide/32 v26, 0x40000000

    :goto_b4
    or-long v70, v70, v26

    :cond_e4
    if-eqz v2, :cond_e6

    if-eqz v19, :cond_e5

    const-wide v26, 0x800000000000L

    goto :goto_b5

    :cond_e5
    const-wide v26, 0x400000000000L

    :goto_b5
    or-long v26, v70, v26

    move-wide/from16 v70, v26

    :cond_e6
    if-eqz v14, :cond_e7

    move/from16 v2, v113

    goto :goto_b6

    :cond_e7
    move/from16 v2, v75

    :goto_b6
    if-eqz v19, :cond_e8

    move/from16 v14, v113

    goto :goto_b7

    :cond_e8
    move/from16 v14, v75

    goto :goto_b7

    :cond_e9
    move/from16 v2, v113

    move v14, v2

    :goto_b7
    and-long v26, v98, v36

    const-wide/16 v28, 0x0

    cmp-long v19, v26, v28

    if-eqz v19, :cond_ee

    if-eqz v0, :cond_ea

    move/from16 v0, v23

    goto :goto_b8

    :cond_ea
    move/from16 v0, v113

    :goto_b8
    if-eqz v19, :cond_ec

    if-eqz v0, :cond_eb

    const-wide/high16 v26, 0x8000000000000L

    goto :goto_b9

    :cond_eb
    const-wide/high16 v26, 0x4000000000000L

    :goto_b9
    or-long v70, v70, v26

    :cond_ec
    if-eqz v0, :cond_ed

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_ba

    :cond_ed
    const v19, 0x3e99999a    # 0.3f

    :goto_ba
    move/from16 v145, v15

    move v15, v0

    move/from16 v0, v19

    move/from16 v19, v145

    goto :goto_bb

    :cond_ee
    move/from16 v19, v15

    move/from16 v15, v113

    const/4 v0, 0x0

    :goto_bb
    and-long v26, v98, v48

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-eqz v24, :cond_f1

    if-eqz v86, :cond_ef

    goto :goto_bc

    :cond_ef
    move/from16 v124, v113

    :goto_bc
    if-eqz v24, :cond_f2

    if-eqz v124, :cond_f0

    const-wide/32 v26, 0x20000000

    goto :goto_bd

    :cond_f0
    const-wide/32 v26, 0x10000000

    :goto_bd
    or-long v70, v70, v26

    goto :goto_be

    :cond_f1
    move/from16 v124, v113

    :cond_f2
    :goto_be
    const-wide v26, 0xa008200000000L

    and-long v26, v98, v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_f5

    if-eqz v111, :cond_f3

    goto :goto_bf

    :cond_f3
    move/from16 v16, v113

    :goto_bf
    if-eqz v16, :cond_f4

    move/from16 v16, v113

    goto :goto_c0

    :cond_f4
    move/from16 v16, v75

    :goto_c0
    move/from16 v144, v16

    goto :goto_c1

    :cond_f5
    move/from16 v144, v113

    :goto_c1
    and-long v26, v98, v42

    const-wide/16 v28, 0x0

    cmp-long v16, v26, v28

    if-eqz v16, :cond_fa

    if-eqz v91, :cond_f6

    goto :goto_c2

    :cond_f6
    move/from16 v23, v113

    :goto_c2
    if-eqz v16, :cond_f8

    if-eqz v23, :cond_f7

    const-wide/32 v26, 0x8000000

    goto :goto_c3

    :cond_f7
    const-wide/32 v26, 0x4000000

    :goto_c3
    or-long v70, v70, v26

    :cond_f8
    if-eqz v23, :cond_f9

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_c4

    :cond_f9
    const v16, 0x3e99999a    # 0.3f

    :goto_c4
    move/from16 v145, v23

    move/from16 v23, v0

    move/from16 v0, v145

    move/from16 v146, v16

    move/from16 v16, v15

    move/from16 v15, v146

    goto :goto_c5

    :cond_fa
    move/from16 v23, v0

    move/from16 v16, v15

    move/from16 v0, v113

    const/4 v15, 0x0

    :goto_c5
    const-wide/32 v26, 0x20000000

    and-long v26, v70, v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_fd

    if-eqz v3, :cond_fb

    .line 2202
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatPositionSaveSupport()Landroidx/databinding/ObservableInt;

    move-result-object v60

    :cond_fb
    move/from16 v26, v2

    move/from16 v27, v14

    move-object/from16 v2, v60

    const/16 v14, 0x1b

    .line 2204
    invoke-virtual {v1, v14, v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v2, :cond_fc

    .line 2209
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v2

    goto :goto_c6

    :cond_fc
    move/from16 v2, v113

    :goto_c6
    if-eqz v3, :cond_fe

    .line 2215
    invoke-virtual {v3, v2}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v2

    goto :goto_c7

    :cond_fd
    move/from16 v26, v2

    move/from16 v27, v14

    :cond_fe
    move/from16 v2, v113

    :goto_c7
    if-eqz v24, :cond_101

    if-eqz v124, :cond_ff

    goto :goto_c8

    :cond_ff
    move/from16 v2, v113

    :goto_c8
    if-eqz v24, :cond_102

    if-eqz v2, :cond_100

    const-wide/high16 v28, 0x80000000000000L

    goto :goto_c9

    :cond_100
    const-wide/high16 v28, 0x40000000000000L

    :goto_c9
    or-long v70, v70, v28

    goto :goto_ca

    :cond_101
    move/from16 v2, v113

    :cond_102
    :goto_ca
    const-wide/high16 v28, 0x80000000000000L

    and-long v28, v70, v28

    const-wide/16 v30, 0x0

    cmp-long v14, v28, v30

    if-eqz v14, :cond_106

    if-eqz v3, :cond_103

    .line 2238
    invoke-virtual {v3}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatDetailPositionIndex()Landroidx/databinding/ObservableInt;

    move-result-object v101

    :cond_103
    move-object/from16 v3, v101

    const/16 v14, 0x21

    .line 2240
    invoke-virtual {v1, v14, v3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v3, :cond_104

    .line 2245
    invoke-virtual {v3}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    move/from16 v19, v3

    :cond_104
    if-nez v19, :cond_105

    const/4 v3, 0x1

    goto :goto_cb

    :cond_105
    move/from16 v3, v113

    :goto_cb
    and-long v28, v98, v56

    const-wide/16 v30, 0x0

    cmp-long v14, v28, v30

    goto :goto_cc

    :cond_106
    move/from16 v3, v103

    :goto_cc
    if-eqz v24, :cond_10b

    if-eqz v2, :cond_107

    goto :goto_cd

    :cond_107
    move/from16 v3, v113

    :goto_cd
    if-eqz v24, :cond_109

    if-eqz v3, :cond_108

    const-wide/high16 v28, 0x80000000000000L

    goto :goto_ce

    :cond_108
    const-wide/high16 v28, 0x40000000000000L

    :goto_ce
    or-long v98, v98, v28

    :cond_109
    if-eqz v3, :cond_10a

    move/from16 v75, v113

    :cond_10a
    move/from16 v2, v75

    goto :goto_cf

    :cond_10b
    move/from16 v2, v113

    :goto_cf
    const-wide v28, 0xa200000000000L

    and-long v28, v98, v28

    const-wide/16 v30, 0x0

    cmp-long v3, v28, v30

    if-eqz v3, :cond_10c

    .line 2286
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->carMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v3, v6}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2287
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesLegSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v3, v8}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2288
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesLumbarSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v3, v7}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2289
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v3, v10}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2290
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->hmiImagesViewAssistant:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v3, v5}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2291
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->leftSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2292
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView40:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v3, v9}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2293
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView47:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move/from16 v5, v25

    invoke-static {v3, v5}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 2294
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->rightSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move/from16 v5, v77

    invoke-static {v3, v5}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    :cond_10c
    const-wide v5, 0xe000200000000L

    and-long v5, v98, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_10d

    .line 2299
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2300
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2301
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView10:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 2302
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView11:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 2303
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView12:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 2304
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v3, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2305
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView9:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    :cond_10d
    const-wide v5, 0xe000200000400L

    and-long v5, v98, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_10e

    .line 2310
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2311
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_10e
    const-wide/high16 v3, 0xa000000000000L

    and-long v3, v98, v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_10f

    .line 2316
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v4, v109

    invoke-static {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2317
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->cushionUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v4, v108

    invoke-static {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2318
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1:Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v4, v107

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2319
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v5, v106

    invoke-static {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2320
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v6, v105

    invoke-static {v3, v6}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2321
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v7, v104

    invoke-static {v3, v7}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2322
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v8, v102

    invoke-static {v3, v8}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2323
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v9, v97

    invoke-static {v3, v9}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2324
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v10, v93

    invoke-static {v3, v10}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2325
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v92

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2326
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v131

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2327
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v90

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2328
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v89

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2329
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v88

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2330
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v133

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2331
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v130

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2332
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move-object/from16 v11, v87

    invoke-static {v3, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2333
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView7:Lcom/geely/hvac/component/SeatPositionSaveTab;

    move-object/from16 v11, v85

    invoke-static {v3, v11}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bind(Lcom/geely/hvac/component/SeatPositionSaveTab;Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;)V

    .line 2334
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatPositionSaveTab;

    move-object/from16 v11, v132

    invoke-static {v3, v11}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bind(Lcom/geely/hvac/component/SeatPositionSaveTab;Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;)V

    .line 2335
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2336
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2337
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v3, v6}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2338
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v3, v7}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2339
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v3, v8}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2340
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v3, v9}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 2341
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v3, v10}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    :cond_10f
    const-wide v3, 0xa000000000080L

    and-long v3, v98, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_110

    .line 2346
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1:Lcom/geely/hvac/component/ViewWithBackground;

    move/from16 v4, v83

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 2347
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v3, v4}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_110
    and-long v3, v98, v56

    cmp-long v3, v3, v5

    if-eqz v3, :cond_111

    .line 2352
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1:Lcom/geely/hvac/component/ViewWithBackground;

    move/from16 v4, v136

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 2353
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView15:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v4, v135

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2354
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView27:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v4, v134

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2355
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v4, v82

    invoke-static {v3, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2356
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView6:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v4, v81

    invoke-static {v3, v4}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 2357
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1:Lcom/geely/hvac/component/ViewWithBackground;

    move/from16 v4, v137

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    :cond_111
    const-wide/high16 v3, 0x8000000000000L

    and-long v3, v98, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_112

    .line 2362
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2363
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2364
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2365
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2366
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2367
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2368
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2369
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2370
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2371
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2372
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2373
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2374
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2375
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2376
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2377
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2378
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2379
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2380
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 2381
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    :cond_112
    const-wide v3, 0xa000000200000L

    and-long v3, v98, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_113

    .line 2386
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v4, v79

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2387
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v3, v4}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 2388
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1BackrestRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_113
    const-wide v3, 0xa000020000000L

    and-long v3, v98, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_114

    .line 2393
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v4, v78

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2394
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2395
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView19:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_114
    const-wide v3, 0xa004000000000L

    and-long v3, v98, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_115

    .line 2400
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v4, v76

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2401
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->left1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2402
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView22:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_115
    const-wide v3, 0xa000000008000L

    and-long v3, v98, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_116

    .line 2407
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v4, v73

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2408
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_116
    const-wide v3, 0xa000000001000L

    and-long v3, v98, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_117

    .line 2413
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v4, v72

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2414
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->legSupportRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_117
    const-wide v3, 0xa040000000000L

    and-long v3, v98, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_118

    .line 2419
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v4, v64

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2420
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_118
    const-wide v3, 0xa000000000040L

    and-long v3, v98, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_119

    .line 2425
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v4, v63

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2426
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_119
    const-wide v3, 0xe402201020000L

    and-long v3, v98, v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11a

    .line 2431
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->lumbarWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2432
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView13:Lcom/geely/hvac/component/SeatDetailType;

    move/from16 v4, v20

    move-object/from16 v5, v21

    invoke-static {v3, v4, v5}, Lcom/geely/hvac/component/SeatDetailType;->bind(Lcom/geely/hvac/component/SeatDetailType;ILcom/geely/hvac/component/SeatDetailType$OnTabChangeListener;)V

    .line 2433
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView46:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v4, v18

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2434
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView53:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v14, v17

    invoke-virtual {v3, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 2435
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->seatWrap:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v12, v142

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_11a
    and-long v3, v98, v42

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11c

    .line 2439
    invoke-static {}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->getBuildSdkInt()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_11b

    .line 2441
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView10:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v3, v15}, Lcom/geely/hvac/component/TextViewWithBg;->setAlpha(F)V

    .line 2442
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView12:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v3, v15}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setAlpha(F)V

    .line 2446
    :cond_11b
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView10:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v3, v0}, Lcom/geely/hvac/component/TextViewWithBg;->setFocusable(Z)V

    .line 2447
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView10:Lcom/geely/hvac/component/TextViewWithBg;

    move-object/from16 v5, v126

    invoke-static {v3, v5, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 2448
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView12:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v3, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 2449
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView12:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-object/from16 v6, v129

    invoke-static {v3, v6, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    goto :goto_d0

    :cond_11c
    move-object/from16 v5, v126

    move-object/from16 v6, v129

    const/16 v4, 0xb

    :goto_d0
    and-long v7, v98, v44

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_11d

    .line 2454
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView10:Lcom/geely/hvac/component/TextViewWithBg;

    move/from16 v14, v27

    invoke-virtual {v0, v14}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    .line 2455
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView11:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v3, v26

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 2456
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView12:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v14}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 2457
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView9:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/TextViewWithBg;->setVisibility(I)V

    :cond_11d
    and-long v7, v98, v36

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_11f

    .line 2461
    invoke-static {}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->getBuildSdkInt()I

    move-result v0

    if-lt v0, v4, :cond_11e

    .line 2463
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView11:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v3, v23

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setAlpha(F)V

    .line 2464
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView9:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/TextViewWithBg;->setAlpha(F)V

    .line 2468
    :cond_11e
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView11:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v3, v16

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 2469
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView11:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v6, v3}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 2470
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView9:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/TextViewWithBg;->setFocusable(Z)V

    .line 2471
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView9:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-static {v0, v5, v3}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_11f
    and-long v3, v98, v52

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_120

    .line 2476
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView13:Lcom/geely/hvac/component/SeatDetailType;

    move/from16 v3, v143

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/SeatDetailType;->setVisibility(I)V

    :cond_120
    const-wide v3, 0xa000002000000L

    and-long v3, v98, v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_121

    .line 2481
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView31:Landroid/view/View;

    move/from16 v3, v61

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2482
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2483
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1HeightUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_121
    const-wide v3, 0xa100000000000L

    and-long v3, v98, v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_122

    .line 2488
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView34:Landroid/view/View;

    move/from16 v3, v141

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2489
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2490
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1LengthRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_122
    and-long v3, v98, v48

    cmp-long v0, v3, v5

    if-eqz v0, :cond_123

    .line 2495
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView7:Lcom/geely/hvac/component/SeatPositionSaveTab;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->setVisibility(I)V

    :cond_123
    const-wide v2, 0xa000000800000L

    and-long v2, v98, v2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_124

    .line 2500
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView7:Lcom/geely/hvac/component/SeatPositionSaveTab;

    move/from16 v2, v127

    invoke-static {v0, v2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bind(Lcom/geely/hvac/component/SeatPositionSaveTab;I)V

    :cond_124
    const-wide v2, 0xa800000000000L

    and-long v2, v98, v2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_125

    .line 2505
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView7:Lcom/geely/hvac/component/SeatPositionSaveTab;

    move-object/from16 v2, v140

    invoke-static {v0, v2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bindSeatSaveTabTags(Lcom/geely/hvac/component/SeatPositionSaveTab;[Ljava/lang/String;)V

    :cond_125
    const-wide v2, 0xa008200000000L

    and-long v2, v98, v2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_126

    .line 2510
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatPositionSaveTab;

    move/from16 v2, v144

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->setVisibility(I)V

    :cond_126
    const-wide v2, 0xa000000000002L

    and-long v2, v98, v2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_127

    .line 2515
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatPositionSaveTab;

    move/from16 v2, v139

    invoke-static {v0, v2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bind(Lcom/geely/hvac/component/SeatPositionSaveTab;I)V

    :cond_127
    const-wide v2, 0xa000000002000L

    and-long v2, v98, v2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_128

    .line 2520
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatPositionSaveTab;

    move-object/from16 v2, v128

    invoke-static {v0, v2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bindSeatSaveTabTags(Lcom/geely/hvac/component/SeatPositionSaveTab;[Ljava/lang/String;)V

    :cond_128
    const-wide v2, 0xa020000000000L

    and-long v2, v98, v2

    cmp-long v0, v2, v5

    if-eqz v0, :cond_129

    .line 2525
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v2, v138

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 2526
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestLine:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 2527
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->right1BackrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_129
    return-void

    :catchall_0
    move-exception v0

    .line 810
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_1:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_2:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 214
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 202
    monitor-enter p0

    const-wide/high16 v0, 0x8000000000000L

    .line 203
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 204
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_1:J

    .line 205
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags_2:J

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 206
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 352
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1LeftSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 350
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelSeatSaveTags(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 348
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeModelRight2TypeIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 346
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelIsKx11A3Mode(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 344
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1RightSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 342
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 340
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 338
    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1RightSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 336
    :pswitch_8
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 334
    :pswitch_9
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRightSeatPositionSaveSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 332
    :pswitch_a
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1LeftSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 330
    :pswitch_b
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeModelLeft1TypeIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 328
    :pswitch_c
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 326
    :pswitch_d
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 324
    :pswitch_e
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATBACKRESTSIDESUPPORTGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 322
    :pswitch_f
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 320
    :pswitch_10
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 318
    :pswitch_11
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 316
    :pswitch_12
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1LeftSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 314
    :pswitch_13
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1LeftSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 312
    :pswitch_14
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPOSITIONSAVEModelGetTagByIndexMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 310
    :pswitch_15
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelSeatPositionSaveSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 308
    :pswitch_16
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATBACKRESTSIDESUPPORTGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 306
    :pswitch_17
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1RightSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 304
    :pswitch_18
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeModelLeft2TypeIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 302
    :pswitch_19
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelSeatSaveTabIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 300
    :pswitch_1a
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONEXTENSIONGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 298
    :pswitch_1b
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1LeftSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 296
    :pswitch_1c
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 294
    :pswitch_1d
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 292
    :pswitch_1e
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRightSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 290
    :pswitch_1f
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeModelRight1TypeIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 288
    :pswitch_20
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 286
    :pswitch_21
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 284
    :pswitch_22
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2LeftSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 282
    :pswitch_23
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRightSeatSaveTags(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 280
    :pswitch_24
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 278
    :pswitch_25
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONEXTENSIONGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 276
    :pswitch_26
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTModelGetTagByIndexMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 274
    :pswitch_27
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATCUSHIONTILTGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 272
    :pswitch_28
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2RightSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 270
    :pswitch_29
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelIsDisplayIVIClick(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 268
    :pswitch_2a
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 266
    :pswitch_2b
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2RightSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 264
    :pswitch_2c
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1RightSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 262
    :pswitch_2d
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 260
    :pswitch_2e
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow2LeftSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 258
    :pswitch_2f
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRightSeatSaveTabIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 256
    :pswitch_30
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->onChangeMainModelRow1RightSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "MainModel"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/high16 v2, 0x2000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 239
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 240
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->notifyPropertyChanged(I)V

    .line 241
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 239
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Model"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/high16 v2, 0x4000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->mDirtyFlags:J

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 248
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->notifyPropertyChanged(I)V

    .line 249
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 247
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 224
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 227
    check-cast p2, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
