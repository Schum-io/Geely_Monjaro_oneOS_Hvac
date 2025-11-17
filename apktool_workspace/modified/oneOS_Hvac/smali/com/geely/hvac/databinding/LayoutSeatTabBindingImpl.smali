.class public Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatTabBinding;
.source "LayoutSeatTabBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mDirtyFlags_1:J

.field private mTabItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Lcom/geely/hvac/component/ViewWithBackground;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;)V
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

    .line 28
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1a

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 31
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

    move-object/from16 v15, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v29, 0x0

    .line 31
    aget-object v2, v15, v29

    const/4 v4, 0x4

    aget-object v4, p3, v4

    check-cast v4, Lcom/geely/hvac/component/BoolStateLottieView;

    const/4 v5, 0x5

    aget-object v5, p3, v5

    check-cast v5, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v7, 0x3

    aget-object v7, p3, v7

    check-cast v7, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v8, 0x7

    aget-object v8, p3, v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v9, 0x8

    aget-object v9, p3, v9

    check-cast v9, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v11, 0xd

    aget-object v11, p3, v11

    check-cast v11, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v12, 0x11

    aget-object v12, p3, v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v13, 0x12

    aget-object v13, p3, v13

    check-cast v13, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v14, 0x16

    aget-object v14, p3, v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v16, 0x17

    aget-object v16, p3, v16

    check-cast v16, Lcom/geely/hvac/component/ViewWithBackground;

    move-object/from16 v15, v16

    const/16 v16, 0x6

    aget-object v16, p3, v16

    check-cast v16, Landroid/view/View;

    const/16 v17, 0xb

    aget-object v17, p3, v17

    check-cast v17, Landroid/view/View;

    const/16 v18, 0x10

    aget-object v18, p3, v18

    check-cast v18, Landroid/view/View;

    const/16 v19, 0x15

    aget-object v19, p3, v19

    check-cast v19, Landroid/view/View;

    const/16 v20, 0x1

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/LinearLayout;

    const/16 v21, 0xe

    aget-object v21, p3, v21

    check-cast v21, Lcom/geely/hvac/component/BoolStateLottieView;

    const/16 v22, 0xf

    aget-object v22, p3, v22

    check-cast v22, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v23, 0x13

    aget-object v23, p3, v23

    check-cast v23, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v24, 0x14

    aget-object v24, p3, v24

    check-cast v24, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v25, 0x18

    aget-object v25, p3, v25

    check-cast v25, Lcom/geely/hvac/component/BoolStateLottieView;

    const/16 v26, 0x19

    aget-object v26, p3, v26

    check-cast v26, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v27, 0x9

    aget-object v27, p3, v27

    check-cast v27, Lcom/geely/hvac/component/BoolStateLottieView;

    const/16 v28, 0xa

    aget-object v28, p3, v28

    check-cast v28, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v30, 0x15

    move/from16 v3, v30

    invoke-direct/range {v0 .. v28}, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/toolchain/hmi/view/HmiTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ViewWithBackground;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/BoolStateLottieView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 1763
    iput-wide v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 1764
    iput-wide v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags_1:J

    .line 58
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->heatIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BoolStateLottieView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->heatTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item0Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item1Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item2:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item2Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item3:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item3Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item4:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item4Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->massageIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BoolStateLottieView;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->massageTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 77
    aget-object v0, p3, v29

    check-cast v0, Lcom/geely/hvac/component/ViewWithBackground;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

    .line 78
    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->positionIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BoolStateLottieView;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->positionTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->windIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BoolStateLottieView;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->windTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 85
    invoke-virtual {v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetRow1LeftSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatBackrestSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 220
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

.method private onChangeModelGetRow1LeftSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 238
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

.method private onChangeModelGetRow1LeftSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 301
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

.method private onChangeModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 310
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

.method private onChangeModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 319
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

.method private onChangeModelGetRow1RightSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatBackrestSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 229
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

.method private onChangeModelGetRow1RightSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 265
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

.method private onChangeModelGetRow1RightSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 274
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

.method private onChangeModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow2RightSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 256
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

.method private onChangeModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow2RightSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x20000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 346
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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 353
    monitor-enter p0

    .line 354
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x40000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 355
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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 283
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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 362
    monitor-enter p0

    .line 363
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 364
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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 211
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

.method private onChangeModelIsDisplayIVIClick(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelIsDisplayIVIClick",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x8000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 328
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

.method private onChangeModelRow1LeftSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatHeatSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 202
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

.method private onChangeModelRow1LeftSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatVentilateSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x10000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 337
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

.method private onChangeModelRow1RightSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatHeatSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 373
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

.method private onChangeModelRow1RightSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatVentilateSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 292
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

.method private onChangeTabSelectTop(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TabSelectTop",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 193
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

.method private onChangeTabTabIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TabTabIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 247
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
    .locals 82

    move-object/from16 v1, p0

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 385
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 386
    iget-wide v6, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags_1:J

    .line 387
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags_1:J

    .line 388
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 483
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mTab:Lcom/geely/hvac/component/SeatTab;

    const-wide/32 v9, 0xffffbf

    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    const-wide/32 v10, 0xf08003

    const-wide/32 v14, 0xe18801

    const-wide/32 v16, 0xe80005

    const-wide/32 v18, 0xa273b8

    const/16 v20, 0x0

    if-eqz v9, :cond_14

    and-long v23, v2, v18

    cmp-long v9, v23, v4

    if-eqz v9, :cond_4

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v23

    move-object/from16 v13, v23

    goto :goto_0

    :cond_0
    move-object/from16 v13, v20

    :goto_0
    const/16 v12, 0xc

    .line 520
    invoke-virtual {v1, v12, v13}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_1

    .line 525
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-eqz v9, :cond_5

    if-eqz v12, :cond_3

    const-wide v25, 0x200000000000L

    goto :goto_3

    :cond_3
    const-wide v25, 0x100000000000L

    :goto_3
    or-long v6, v6, v25

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :cond_5
    :goto_4
    const-wide/32 v25, 0xf58c03

    and-long v25, v2, v25

    cmp-long v9, v25, v4

    if-eqz v9, :cond_d

    if-eqz v0, :cond_6

    .line 546
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isDisplayIVIClick()Landroidx/databinding/ObservableBoolean;

    move-result-object v9

    goto :goto_5

    :cond_6
    move-object/from16 v9, v20

    :goto_5
    const/16 v13, 0xf

    .line 548
    invoke-virtual {v1, v13, v9}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_7

    .line 553
    invoke-virtual {v9}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    and-long v25, v2, v14

    cmp-long v13, v25, v4

    if-eqz v13, :cond_9

    if-eqz v9, :cond_8

    const-wide/32 v25, 0x8000

    goto :goto_7

    :cond_8
    const-wide/16 v25, 0x4000

    :goto_7
    or-long v6, v6, v25

    :cond_9
    and-long v25, v2, v10

    cmp-long v13, v25, v4

    if-eqz v13, :cond_b

    if-eqz v9, :cond_a

    const-wide/32 v25, 0x200000

    goto :goto_8

    :cond_a
    const-wide/32 v25, 0x100000

    :goto_8
    or-long v6, v6, v25

    :cond_b
    const-wide/32 v21, 0xe48401

    and-long v25, v2, v21

    cmp-long v13, v25, v4

    if-eqz v13, :cond_e

    if-eqz v9, :cond_c

    const-wide/high16 v25, 0x80000000000000L

    goto :goto_9

    :cond_c
    const-wide/high16 v25, 0x40000000000000L

    :goto_9
    or-long v6, v6, v25

    goto :goto_a

    :cond_d
    const/4 v9, 0x0

    :cond_e
    :goto_a
    and-long v25, v2, v16

    cmp-long v13, v25, v4

    if-eqz v13, :cond_13

    if-eqz v0, :cond_f

    const v10, 0x2d500100

    const/4 v11, 0x1

    .line 584
    invoke-virtual {v0, v10, v11}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v10

    goto :goto_b

    :cond_f
    move-object/from16 v10, v20

    :goto_b
    const/16 v11, 0x13

    .line 586
    invoke-virtual {v1, v11, v10}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_10

    .line 591
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_c

    :cond_10
    const/4 v10, 0x0

    :goto_c
    if-eqz v0, :cond_11

    .line 597
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v10

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    :goto_d
    if-eqz v13, :cond_15

    if-eqz v10, :cond_12

    const-wide/32 v27, 0x20000000

    goto :goto_e

    :cond_12
    const-wide/32 v27, 0x10000000

    :goto_e
    or-long v2, v2, v27

    goto :goto_f

    :cond_13
    const/4 v10, 0x0

    goto :goto_f

    :cond_14
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :cond_15
    :goto_f
    const-wide/32 v27, 0xc00040

    and-long v29, v2, v27

    cmp-long v11, v29, v4

    const-wide v29, 0x80000000000L

    const-wide v31, 0x20000000000L

    const-wide/32 v33, 0x40000000

    const/4 v13, 0x4

    if-eqz v11, :cond_34

    if-eqz v8, :cond_16

    .line 615
    invoke-virtual {v8}, Lcom/geely/hvac/component/SeatTab;->getTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_10

    :cond_16
    move-object/from16 v15, v20

    :goto_10
    const/4 v14, 0x6

    .line 617
    invoke-virtual {v1, v14, v15}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_17

    .line 622
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_11

    :cond_17
    const/4 v14, 0x0

    :goto_11
    const/4 v15, 0x1

    if-ne v14, v15, :cond_18

    const/4 v15, 0x1

    goto :goto_12

    :cond_18
    const/4 v15, 0x0

    :goto_12
    if-ne v14, v13, :cond_19

    const/16 v38, 0x1

    goto :goto_13

    :cond_19
    const/16 v38, 0x0

    :goto_13
    const/4 v13, 0x2

    if-ne v14, v13, :cond_1a

    const/4 v13, 0x1

    goto :goto_14

    :cond_1a
    const/4 v13, 0x0

    :goto_14
    if-nez v14, :cond_1b

    const/16 v40, 0x1

    goto :goto_15

    :cond_1b
    const/16 v40, 0x0

    :goto_15
    const/4 v4, 0x3

    if-ne v14, v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_16

    :cond_1c
    const/4 v4, 0x0

    :goto_16
    if-eqz v11, :cond_1e

    if-eqz v15, :cond_1d

    or-long v5, v6, v31

    or-long v6, v5, v29

    goto :goto_17

    :cond_1d
    const-wide v43, 0x10000000000L

    or-long v5, v6, v43

    const-wide v43, 0x40000000000L

    or-long v6, v5, v43

    :cond_1e
    :goto_17
    if-eqz v11, :cond_20

    if-eqz v38, :cond_1f

    const-wide v43, 0x80000000L

    or-long v2, v2, v43

    const-wide/32 v43, 0x8000000

    goto :goto_18

    :cond_1f
    or-long v2, v2, v33

    const-wide/32 v43, 0x4000000

    :goto_18
    or-long v6, v6, v43

    :cond_20
    and-long v43, v2, v27

    const-wide/16 v41, 0x0

    cmp-long v5, v43, v41

    if-eqz v5, :cond_22

    if-eqz v13, :cond_21

    const-wide v43, 0x200000000000L

    or-long v2, v2, v43

    const-wide/32 v43, 0x80000

    goto :goto_19

    :cond_21
    const-wide v43, 0x100000000000L

    or-long v2, v2, v43

    const-wide/32 v43, 0x40000

    :goto_19
    or-long v6, v6, v43

    :cond_22
    and-long v43, v2, v27

    const-wide/16 v41, 0x0

    cmp-long v5, v43, v41

    if-eqz v5, :cond_24

    if-eqz v40, :cond_23

    const-wide/high16 v43, 0x2000000000000000L

    or-long v2, v2, v43

    const-wide/16 v43, 0x2000

    goto :goto_1a

    :cond_23
    const-wide/high16 v43, 0x1000000000000000L

    or-long v2, v2, v43

    const-wide/16 v43, 0x1000

    :goto_1a
    or-long v5, v6, v43

    move-wide v6, v5

    :cond_24
    and-long v43, v2, v27

    const-wide/16 v41, 0x0

    cmp-long v5, v43, v41

    if-eqz v5, :cond_26

    if-eqz v4, :cond_25

    const-wide/32 v43, 0x8000000

    or-long v2, v2, v43

    const-wide v43, 0x8000000000L

    or-long v2, v2, v43

    const-wide/high16 v43, 0x80000000000000L

    goto :goto_1b

    :cond_25
    const-wide/32 v43, 0x4000000

    or-long v2, v2, v43

    const-wide v43, 0x4000000000L

    or-long v2, v2, v43

    const-wide/high16 v43, 0x40000000000000L

    :goto_1b
    or-long v2, v2, v43

    :cond_26
    if-eqz v15, :cond_27

    const/4 v5, 0x0

    goto :goto_1c

    :cond_27
    const/16 v5, 0x8

    :goto_1c
    const v11, 0x7f050021

    .line 693
    iget-object v14, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->windTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v15, :cond_28

    invoke-static {v14, v11}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v14

    const v11, 0x7f050022

    goto :goto_1d

    :cond_28
    const v11, 0x7f050022

    invoke-static {v14, v11}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v14

    :goto_1d
    if-eqz v38, :cond_29

    .line 695
    iget-object v11, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->positionTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v45, v5

    const v5, 0x7f050021

    invoke-static {v11, v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v11

    const v5, 0x7f050022

    goto :goto_1e

    :cond_29
    move/from16 v45, v5

    const v5, 0x7f050021

    iget-object v11, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->positionTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const v5, 0x7f050022

    invoke-static {v11, v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v11

    :goto_1e
    if-eqz v38, :cond_2a

    const/16 v46, 0x0

    goto :goto_1f

    :cond_2a
    const/16 v46, 0x8

    :goto_1f
    if-eqz v13, :cond_2b

    .line 699
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->massageTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-wide/from16 v47, v6

    const v6, 0x7f050021

    goto :goto_20

    :cond_2b
    move-wide/from16 v47, v6

    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->massageTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const v6, 0x7f050022

    :goto_20
    invoke-static {v5, v6}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    if-eqz v13, :cond_2c

    const/4 v6, 0x0

    goto :goto_21

    :cond_2c
    const/16 v6, 0x8

    :goto_21
    if-eqz v40, :cond_2d

    const/4 v7, 0x0

    goto :goto_22

    :cond_2d
    const/16 v7, 0x8

    :goto_22
    move/from16 v49, v5

    if-eqz v40, :cond_2e

    .line 705
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->heatTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v50, v6

    const v6, 0x7f050021

    invoke-static {v5, v6}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    const v6, 0x7f050022

    goto :goto_23

    :cond_2e
    move/from16 v50, v6

    const v6, 0x7f050021

    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->heatTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const v6, 0x7f050022

    invoke-static {v5, v6}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    :goto_23
    if-eqz v4, :cond_2f

    .line 707
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v43, v5

    const v5, 0x7f050021

    invoke-static {v6, v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    goto :goto_24

    :cond_2f
    move/from16 v43, v5

    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v5, v6}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    :goto_24
    if-eqz v4, :cond_30

    const/4 v6, 0x0

    goto :goto_25

    :cond_30
    const/16 v6, 0x8

    :goto_25
    if-eqz v4, :cond_31

    .line 711
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v4}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v44, v5

    const v5, 0x7f0700c4

    goto :goto_26

    :cond_31
    move/from16 v44, v5

    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v4}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0700c3

    :goto_26
    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-wide/32 v51, 0xc00000

    and-long v51, v2, v51

    const-wide/16 v41, 0x0

    cmp-long v5, v51, v41

    if-eqz v5, :cond_33

    if-eqz v8, :cond_33

    .line 716
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mTabItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;

    if-nez v5, :cond_32

    new-instance v5, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;

    invoke-direct {v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mTabItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;

    :cond_32
    invoke-virtual {v5, v8}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/component/SeatTab;)Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;

    move-result-object v5

    move/from16 v53, v11

    move/from16 v54, v14

    move/from16 v55, v15

    move/from16 v56, v38

    move/from16 v11, v45

    move/from16 v14, v50

    move-object/from16 v38, v5

    move v15, v6

    move/from16 v6, v43

    move/from16 v5, v46

    goto :goto_27

    :cond_33
    move/from16 v53, v11

    move/from16 v54, v14

    move/from16 v55, v15

    move/from16 v56, v38

    move/from16 v11, v45

    move/from16 v5, v46

    move/from16 v14, v50

    move v15, v6

    move-object/from16 v38, v20

    move/from16 v6, v43

    :goto_27
    move-object/from16 v43, v4

    move/from16 v4, v40

    move/from16 v40, v44

    move/from16 v44, v49

    move/from16 v81, v13

    move v13, v7

    move/from16 v7, v81

    goto :goto_28

    :cond_34
    move-wide/from16 v47, v6

    move-object/from16 v38, v20

    move-object/from16 v43, v38

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v40, 0x0

    const/16 v44, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    :goto_28
    const-wide/32 v45, 0x10000000

    and-long v45, v2, v45

    const-wide/16 v41, 0x0

    cmp-long v45, v45, v41

    const-wide/high16 v49, 0x10000000000000L

    if-nez v45, :cond_36

    const-wide v51, 0x80100000208000L

    and-long v51, v47, v51

    cmp-long v46, v51, v41

    if-eqz v46, :cond_35

    goto :goto_29

    :cond_35
    move/from16 v52, v5

    move/from16 v51, v7

    move/from16 v58, v15

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v57, 0x0

    goto/16 :goto_3b

    :cond_36
    :goto_29
    const-wide/32 v51, 0x200000

    and-long v51, v47, v51

    cmp-long v46, v51, v41

    if-eqz v46, :cond_3b

    if-eqz v0, :cond_37

    .line 729
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeatSupported()Landroidx/databinding/ObservableInt;

    move-result-object v51

    move/from16 v52, v5

    const/4 v5, 0x1

    move-object/from16 v81, v51

    move/from16 v51, v7

    move-object/from16 v7, v81

    goto :goto_2a

    :cond_37
    move/from16 v52, v5

    move/from16 v51, v7

    move-object/from16 v7, v20

    const/4 v5, 0x1

    .line 731
    :goto_2a
    invoke-virtual {v1, v5, v7}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_38

    .line 736
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_2b

    :cond_38
    const/4 v5, 0x0

    :goto_2b
    if-eqz v0, :cond_39

    .line 742
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v5

    goto :goto_2c

    :cond_39
    const/4 v5, 0x0

    :goto_2c
    if-eqz v46, :cond_3c

    if-eqz v5, :cond_3a

    const-wide/high16 v57, 0x20000000000000L

    or-long v47, v47, v57

    goto :goto_2d

    :cond_3a
    or-long v47, v47, v49

    goto :goto_2d

    :cond_3b
    move/from16 v52, v5

    move/from16 v51, v7

    const/4 v5, 0x0

    :cond_3c
    :goto_2d
    if-eqz v45, :cond_3f

    if-eqz v0, :cond_3d

    const v7, 0x2d500100

    move/from16 v45, v5

    const/4 v5, 0x4

    .line 757
    invoke-virtual {v0, v7, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_2e

    :cond_3d
    move/from16 v45, v5

    move-object/from16 v7, v20

    :goto_2e
    const/4 v5, 0x2

    .line 759
    invoke-virtual {v1, v5, v7}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_3e

    .line 764
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_2f

    :cond_3e
    const/4 v5, 0x0

    :goto_2f
    if-eqz v0, :cond_40

    .line 770
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v5

    goto :goto_30

    :cond_3f
    move/from16 v45, v5

    :cond_40
    const/4 v5, 0x0

    :goto_30
    const-wide v57, 0x100000000000L

    and-long v57, v47, v57

    const-wide/16 v41, 0x0

    cmp-long v7, v57, v41

    if-eqz v7, :cond_43

    if-eqz v0, :cond_41

    .line 777
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v7

    move/from16 v46, v5

    goto :goto_31

    :cond_41
    move/from16 v46, v5

    move-object/from16 v7, v20

    :goto_31
    const/16 v5, 0x9

    .line 779
    invoke-virtual {v1, v5, v7}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_42

    .line 784
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_32

    :cond_42
    const/4 v5, 0x0

    :goto_32
    if-eqz v0, :cond_44

    .line 790
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v5

    goto :goto_33

    :cond_43
    move/from16 v46, v5

    :cond_44
    const/4 v5, 0x0

    :goto_33
    const-wide/32 v57, 0x8000

    and-long v57, v47, v57

    const-wide/16 v41, 0x0

    cmp-long v7, v57, v41

    if-eqz v7, :cond_49

    if-eqz v0, :cond_45

    .line 797
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatVentilateSupported()Landroidx/databinding/ObservableInt;

    move-result-object v57

    move/from16 v58, v15

    move-object/from16 v81, v57

    move/from16 v57, v5

    move-object/from16 v5, v81

    goto :goto_34

    :cond_45
    move/from16 v57, v5

    move/from16 v58, v15

    move-object/from16 v5, v20

    :goto_34
    const/16 v15, 0x10

    .line 799
    invoke-virtual {v1, v15, v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_46

    .line 804
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_35

    :cond_46
    const/4 v5, 0x0

    :goto_35
    if-eqz v0, :cond_47

    .line 810
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v5

    goto :goto_36

    :cond_47
    const/4 v5, 0x0

    :goto_36
    if-eqz v7, :cond_4a

    if-eqz v5, :cond_48

    const-wide/high16 v59, 0x8000000000000L

    goto :goto_37

    :cond_48
    const-wide/high16 v59, 0x4000000000000L

    :goto_37
    or-long v2, v2, v59

    goto :goto_38

    :cond_49
    move/from16 v57, v5

    move/from16 v58, v15

    const/4 v5, 0x0

    :cond_4a
    :goto_38
    const-wide/high16 v59, 0x80000000000000L

    and-long v59, v47, v59

    const-wide/16 v41, 0x0

    cmp-long v7, v59, v41

    if-eqz v7, :cond_4d

    if-eqz v0, :cond_4b

    const v7, 0x10050a00

    const/4 v15, 0x1

    .line 825
    invoke-virtual {v0, v7, v15}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_39

    :cond_4b
    move-object/from16 v7, v20

    :goto_39
    const/16 v15, 0x12

    .line 827
    invoke-virtual {v1, v15, v7}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_4c

    .line 832
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_3a

    :cond_4c
    const/4 v7, 0x0

    :goto_3a
    if-eqz v0, :cond_4d

    .line 838
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v7

    goto :goto_3b

    :cond_4d
    const/4 v7, 0x0

    :goto_3b
    and-long v59, v2, v16

    const-wide/16 v41, 0x0

    cmp-long v15, v59, v41

    if-eqz v15, :cond_50

    if-eqz v10, :cond_4e

    const/16 v46, 0x1

    :cond_4e
    if-eqz v15, :cond_51

    if-eqz v46, :cond_4f

    const-wide/16 v59, 0x200

    goto :goto_3c

    :cond_4f
    const-wide/16 v59, 0x100

    :goto_3c
    or-long v47, v47, v59

    goto :goto_3d

    :cond_50
    const/16 v46, 0x0

    :cond_51
    :goto_3d
    and-long v59, v2, v18

    const-wide/16 v41, 0x0

    cmp-long v10, v59, v41

    if-eqz v10, :cond_55

    if-eqz v12, :cond_52

    const/16 v57, 0x1

    :cond_52
    if-eqz v10, :cond_54

    if-eqz v57, :cond_53

    const-wide/32 v59, 0x2000000

    goto :goto_3e

    :cond_53
    const-wide/32 v59, 0x1000000

    :goto_3e
    or-long v47, v47, v59

    :cond_54
    const-wide/32 v21, 0xe48401

    goto :goto_3f

    :cond_55
    const-wide/32 v21, 0xe48401

    const/16 v57, 0x0

    :goto_3f
    and-long v59, v2, v21

    const-wide/16 v41, 0x0

    cmp-long v10, v59, v41

    const-wide/32 v59, 0xa48400

    const-wide v61, 0x400000000000L

    if-eqz v10, :cond_5a

    if-eqz v9, :cond_56

    goto :goto_40

    :cond_56
    const/4 v7, 0x0

    :goto_40
    and-long v63, v2, v59

    cmp-long v12, v63, v41

    if-eqz v12, :cond_58

    if-eqz v7, :cond_57

    const-wide/32 v63, 0x20000

    goto :goto_41

    :cond_57
    const-wide/32 v63, 0x10000

    :goto_41
    or-long v47, v47, v63

    :cond_58
    if-eqz v10, :cond_5b

    if-eqz v7, :cond_59

    const-wide v63, 0x800000000000L

    or-long v47, v47, v63

    goto :goto_42

    :cond_59
    or-long v47, v47, v61

    goto :goto_42

    :cond_5a
    const/4 v7, 0x0

    :cond_5b
    :goto_42
    and-long v63, v47, v61

    const-wide/16 v41, 0x0

    cmp-long v10, v63, v41

    const-wide v63, 0x400000000L

    const-wide/high16 v65, 0x4000000000000000L    # 2.0

    if-eqz v10, :cond_63

    xor-int/lit8 v10, v9, 0x1

    and-long v67, v2, v65

    cmp-long v12, v67, v41

    if-nez v12, :cond_5c

    and-long v67, v47, v33

    cmp-long v12, v67, v41

    if-eqz v12, :cond_5e

    :cond_5c
    if-eqz v10, :cond_5d

    or-long v2, v2, v31

    goto :goto_43

    :cond_5d
    const-wide v67, 0x10000000000L

    or-long v2, v2, v67

    :cond_5e
    :goto_43
    and-long v67, v2, v49

    const-wide/16 v41, 0x0

    cmp-long v12, v67, v41

    if-nez v12, :cond_5f

    and-long v67, v47, v63

    cmp-long v12, v67, v41

    if-eqz v12, :cond_61

    :cond_5f
    if-eqz v10, :cond_60

    or-long v2, v2, v29

    goto :goto_44

    :cond_60
    const-wide v67, 0x40000000000L

    or-long v2, v2, v67

    :cond_61
    :goto_44
    const-wide v67, 0x400010000000L

    and-long v67, v47, v67

    const-wide/16 v41, 0x0

    cmp-long v12, v67, v41

    if-eqz v12, :cond_64

    if-eqz v10, :cond_62

    const-wide/16 v67, 0x2

    goto :goto_45

    :cond_62
    const-wide/16 v67, 0x1

    :goto_45
    or-long v47, v47, v67

    goto :goto_46

    :cond_63
    const/4 v10, 0x0

    :cond_64
    :goto_46
    const-wide/high16 v67, 0x4000000000000L

    and-long v67, v2, v67

    const-wide/16 v41, 0x0

    cmp-long v12, v67, v41

    if-nez v12, :cond_66

    const-wide v67, 0x10000001010000L

    and-long v67, v47, v67

    cmp-long v15, v67, v41

    if-eqz v15, :cond_65

    goto :goto_48

    :cond_65
    move/from16 v67, v10

    move-object/from16 v10, v20

    move-object v12, v10

    move-object v15, v12

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    :goto_47
    const/16 v73, 0x0

    const/16 v74, 0x0

    goto/16 :goto_55

    :cond_66
    :goto_48
    const-wide/32 v67, 0x1000000

    and-long v67, v47, v67

    cmp-long v15, v67, v41

    if-eqz v15, :cond_69

    if-eqz v0, :cond_67

    .line 928
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v15

    move/from16 v67, v10

    goto :goto_49

    :cond_67
    move/from16 v67, v10

    move-object/from16 v15, v20

    :goto_49
    const/4 v10, 0x5

    .line 930
    invoke-virtual {v1, v10, v15}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_68

    .line 935
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_4a

    :cond_68
    const/4 v10, 0x0

    :goto_4a
    if-eqz v0, :cond_6a

    .line 941
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v10

    goto :goto_4b

    :cond_69
    move/from16 v67, v10

    :cond_6a
    const/4 v10, 0x0

    :goto_4b
    const-wide/32 v68, 0x10000

    and-long v68, v47, v68

    const-wide/16 v41, 0x0

    cmp-long v15, v68, v41

    if-eqz v15, :cond_6d

    if-eqz v0, :cond_6b

    const v15, 0x10050a00

    move/from16 v68, v10

    const/4 v10, 0x4

    .line 948
    invoke-virtual {v0, v15, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_4c

    :cond_6b
    move/from16 v68, v10

    move-object/from16 v15, v20

    :goto_4c
    const/16 v10, 0xa

    .line 950
    invoke-virtual {v1, v10, v15}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_6c

    .line 955
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_4d

    :cond_6c
    const/4 v10, 0x0

    :goto_4d
    if-eqz v0, :cond_6e

    .line 961
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v69

    goto :goto_4e

    :cond_6d
    move/from16 v68, v10

    move-object/from16 v15, v20

    const/4 v10, 0x0

    :cond_6e
    const/16 v69, 0x0

    :goto_4e
    if-eqz v12, :cond_71

    if-eqz v0, :cond_6f

    .line 968
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateSupported()Landroidx/databinding/ObservableInt;

    move-result-object v12

    move/from16 v70, v10

    goto :goto_4f

    :cond_6f
    move/from16 v70, v10

    move-object/from16 v12, v20

    :goto_4f
    const/16 v10, 0xb

    .line 970
    invoke-virtual {v1, v10, v12}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_70

    .line 975
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_50

    :cond_70
    const/4 v10, 0x0

    :goto_50
    if-eqz v0, :cond_72

    .line 981
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v71

    goto :goto_51

    :cond_71
    move/from16 v70, v10

    move-object/from16 v12, v20

    const/4 v10, 0x0

    :cond_72
    const/16 v71, 0x0

    :goto_51
    and-long v72, v47, v49

    const-wide/16 v41, 0x0

    cmp-long v72, v72, v41

    if-eqz v72, :cond_76

    if-eqz v0, :cond_73

    .line 988
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatSupported()Landroidx/databinding/ObservableInt;

    move-result-object v72

    move-object/from16 v73, v12

    move-object/from16 v81, v72

    move/from16 v72, v10

    move-object/from16 v10, v81

    goto :goto_52

    :cond_73
    move/from16 v72, v10

    move-object/from16 v73, v12

    move-object/from16 v10, v20

    :goto_52
    const/16 v12, 0x14

    .line 990
    invoke-virtual {v1, v12, v10}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_74

    .line 995
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_53

    :cond_74
    const/4 v12, 0x0

    :goto_53
    if-eqz v0, :cond_75

    .line 1001
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v74

    goto :goto_54

    :cond_75
    const/16 v74, 0x0

    :goto_54
    move-object/from16 v81, v73

    move/from16 v73, v12

    move-object/from16 v12, v81

    goto :goto_55

    :cond_76
    move/from16 v72, v10

    move-object/from16 v73, v12

    move-object/from16 v10, v20

    goto/16 :goto_47

    :goto_55
    const-wide/16 v75, 0x200

    and-long v75, v47, v75

    const-wide/16 v41, 0x0

    cmp-long v75, v75, v41

    if-eqz v75, :cond_79

    if-eqz v8, :cond_77

    .line 1011
    invoke-virtual {v8}, Lcom/geely/hvac/component/SeatTab;->getSelectTop()Landroidx/databinding/ObservableInt;

    move-result-object v75

    move-object/from16 v76, v12

    const/4 v12, 0x0

    move-object/from16 v81, v75

    move-object/from16 v75, v10

    move-object/from16 v10, v81

    goto :goto_56

    :cond_77
    move-object/from16 v75, v10

    move-object/from16 v76, v12

    move-object/from16 v10, v20

    const/4 v12, 0x0

    .line 1013
    :goto_56
    invoke-virtual {v1, v12, v10}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_78

    .line 1018
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_57

    :cond_78
    const/4 v12, 0x0

    :goto_57
    move-object/from16 v77, v10

    if-eqz v8, :cond_7a

    const/4 v10, 0x3

    .line 1024
    invoke-virtual {v8, v10, v12}, Lcom/geely/hvac/component/SeatTab;->isLineVisible(II)Z

    move-result v10

    move-object/from16 v81, v77

    move/from16 v77, v10

    move-object/from16 v10, v81

    goto :goto_58

    :cond_79
    move-object/from16 v75, v10

    move-object/from16 v76, v12

    move-object/from16 v10, v20

    const/4 v12, 0x0

    :cond_7a
    const/16 v77, 0x0

    :goto_58
    const-wide/32 v78, 0x8000

    and-long v78, v47, v78

    const-wide/16 v41, 0x0

    cmp-long v78, v78, v41

    if-eqz v78, :cond_7c

    if-eqz v5, :cond_7b

    const/4 v5, 0x1

    goto :goto_59

    :cond_7b
    move/from16 v5, v71

    goto :goto_59

    :cond_7c
    const/4 v5, 0x0

    :goto_59
    and-long v78, v2, v16

    cmp-long v78, v78, v41

    if-eqz v78, :cond_81

    if-eqz v46, :cond_7d

    goto :goto_5a

    :cond_7d
    const/16 v77, 0x0

    :goto_5a
    if-eqz v78, :cond_7f

    if-eqz v77, :cond_7e

    const-wide/32 v78, 0x2000000

    goto :goto_5b

    :cond_7e
    const-wide/32 v78, 0x1000000

    :goto_5b
    or-long v2, v2, v78

    :cond_7f
    if-eqz v77, :cond_80

    const/16 v46, 0x0

    goto :goto_5c

    :cond_80
    const/16 v46, 0x4

    :goto_5c
    move/from16 v81, v46

    move/from16 v46, v5

    move/from16 v5, v81

    goto :goto_5d

    :cond_81
    move/from16 v46, v5

    const/4 v5, 0x0

    :goto_5d
    and-long v77, v2, v59

    const-wide/16 v41, 0x0

    cmp-long v77, v77, v41

    if-eqz v77, :cond_84

    if-eqz v7, :cond_82

    const/16 v78, 0x1

    goto :goto_5e

    :cond_82
    move/from16 v78, v69

    :goto_5e
    if-eqz v77, :cond_85

    if-eqz v78, :cond_83

    const-wide/32 v79, 0x20000000

    goto :goto_5f

    :cond_83
    const-wide/32 v79, 0x10000000

    :goto_5f
    or-long v47, v47, v79

    goto :goto_60

    :cond_84
    const/16 v78, 0x0

    :cond_85
    :goto_60
    and-long v79, v2, v18

    const-wide/16 v41, 0x0

    cmp-long v77, v79, v41

    if-eqz v77, :cond_88

    if-eqz v57, :cond_86

    const/16 v68, 0x1

    :cond_86
    if-eqz v77, :cond_89

    if-eqz v68, :cond_87

    const-wide/16 v79, 0x8

    goto :goto_61

    :cond_87
    const-wide/16 v79, 0x4

    :goto_61
    or-long v47, v47, v79

    goto :goto_62

    :cond_88
    const/16 v68, 0x0

    :cond_89
    :goto_62
    const-wide/32 v79, 0x200000

    and-long v79, v47, v79

    const-wide/16 v41, 0x0

    cmp-long v57, v79, v41

    if-eqz v57, :cond_8b

    if-eqz v45, :cond_8a

    const/16 v45, 0x1

    goto :goto_63

    :cond_8a
    move/from16 v45, v74

    :goto_63
    const-wide/32 v35, 0xe18801

    goto :goto_64

    :cond_8b
    const-wide/32 v35, 0xe18801

    const/16 v45, 0x0

    :goto_64
    and-long v79, v2, v35

    cmp-long v57, v79, v41

    if-eqz v57, :cond_91

    if-eqz v9, :cond_8c

    goto :goto_65

    :cond_8c
    const/16 v46, 0x0

    :goto_65
    if-eqz v57, :cond_8e

    if-eqz v46, :cond_8d

    const-wide/high16 v79, 0x20000000000000L

    or-long v2, v2, v79

    goto :goto_66

    :cond_8d
    or-long v2, v2, v49

    :cond_8e
    :goto_66
    const-wide/32 v79, 0xa18800

    and-long v79, v2, v79

    const-wide/16 v41, 0x0

    cmp-long v57, v79, v41

    if-eqz v57, :cond_90

    if-eqz v46, :cond_8f

    const-wide v79, 0x800000000L

    or-long v47, v47, v79

    goto :goto_67

    :cond_8f
    or-long v47, v47, v63

    :cond_90
    :goto_67
    const-wide/32 v25, 0xf08003

    goto :goto_68

    :cond_91
    const-wide/16 v41, 0x0

    const-wide/32 v25, 0xf08003

    const/16 v46, 0x0

    :goto_68
    and-long v79, v2, v25

    cmp-long v57, v79, v41

    if-eqz v57, :cond_96

    if-eqz v9, :cond_92

    goto :goto_69

    :cond_92
    const/16 v45, 0x0

    :goto_69
    if-eqz v57, :cond_94

    if-eqz v45, :cond_93

    const-wide/high16 v79, -0x8000000000000000L

    or-long v2, v2, v79

    goto :goto_6a

    :cond_93
    or-long v2, v2, v65

    :cond_94
    :goto_6a
    const-wide/32 v79, 0xb08002

    and-long v79, v2, v79

    const-wide/16 v41, 0x0

    cmp-long v57, v79, v41

    if-eqz v57, :cond_97

    if-eqz v45, :cond_95

    const-wide v79, 0x80000000L

    or-long v47, v47, v79

    goto :goto_6b

    :cond_95
    or-long v47, v47, v33

    goto :goto_6b

    :cond_96
    const/16 v45, 0x0

    :cond_97
    :goto_6b
    const-wide/high16 v79, 0x4010000000000000L    # 4.0

    and-long v79, v2, v79

    const-wide/16 v41, 0x0

    cmp-long v57, v79, v41

    if-nez v57, :cond_99

    const-wide v79, 0x450000000L

    and-long v79, v47, v79

    cmp-long v57, v79, v41

    if-eqz v57, :cond_98

    goto :goto_6c

    :cond_98
    move/from16 v9, v67

    goto :goto_70

    :cond_99
    :goto_6c
    const/16 v24, 0x1

    xor-int/lit8 v9, v9, 0x1

    and-long v79, v2, v65

    cmp-long v57, v79, v41

    if-nez v57, :cond_9a

    and-long v79, v47, v33

    cmp-long v57, v79, v41

    if-eqz v57, :cond_9c

    :cond_9a
    if-eqz v9, :cond_9b

    or-long v2, v2, v31

    goto :goto_6d

    :cond_9b
    const-wide v79, 0x10000000000L

    or-long v2, v2, v79

    :cond_9c
    :goto_6d
    and-long v79, v2, v49

    const-wide/16 v41, 0x0

    cmp-long v57, v79, v41

    if-nez v57, :cond_9d

    and-long v79, v47, v63

    cmp-long v57, v79, v41

    if-eqz v57, :cond_9f

    :cond_9d
    if-eqz v9, :cond_9e

    or-long v2, v2, v29

    goto :goto_6e

    :cond_9e
    const-wide v79, 0x40000000000L

    or-long v2, v2, v79

    :cond_9f
    :goto_6e
    const-wide v79, 0x400010000000L

    and-long v79, v47, v79

    const-wide/16 v41, 0x0

    cmp-long v57, v79, v41

    if-eqz v57, :cond_a1

    if-eqz v9, :cond_a0

    const-wide/16 v79, 0x2

    goto :goto_6f

    :cond_a0
    const-wide/16 v79, 0x1

    :goto_6f
    or-long v47, v47, v79

    :cond_a1
    :goto_70
    const-wide/16 v79, 0x4

    and-long v79, v47, v79

    const-wide/16 v41, 0x0

    cmp-long v57, v79, v41

    if-eqz v57, :cond_a4

    if-eqz v0, :cond_a2

    .line 1161
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v57

    move/from16 v37, v12

    const/16 v12, 0x8

    move-object/from16 v81, v57

    move-object/from16 v57, v10

    move-object/from16 v10, v81

    goto :goto_71

    :cond_a2
    move-object/from16 v57, v10

    move/from16 v37, v12

    move-object/from16 v10, v20

    const/16 v12, 0x8

    .line 1163
    :goto_71
    invoke-virtual {v1, v12, v10}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_a3

    .line 1168
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_72

    :cond_a3
    const/4 v10, 0x0

    :goto_72
    if-eqz v0, :cond_a5

    .line 1174
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v10

    goto :goto_73

    :cond_a4
    move-object/from16 v57, v10

    move/from16 v37, v12

    const/16 v12, 0x8

    :cond_a5
    const/4 v10, 0x0

    :goto_73
    and-long v79, v2, v18

    const-wide/16 v41, 0x0

    cmp-long v67, v79, v41

    if-eqz v67, :cond_a8

    if-eqz v68, :cond_a6

    const/4 v10, 0x1

    :cond_a6
    if-eqz v67, :cond_a9

    if-eqz v10, :cond_a7

    const-wide/high16 v67, 0x2000000000000L

    goto :goto_74

    :cond_a7
    const-wide/high16 v67, 0x1000000000000L

    :goto_74
    or-long v47, v47, v67

    goto :goto_75

    :cond_a8
    const/4 v10, 0x0

    :cond_a9
    :goto_75
    const-wide v67, 0xa0000000000L

    and-long v67, v2, v67

    const-wide/16 v41, 0x0

    cmp-long v67, v67, v41

    if-nez v67, :cond_ab

    const-wide v67, 0x1000000000002L

    and-long v67, v47, v67

    cmp-long v67, v67, v41

    if-eqz v67, :cond_aa

    goto :goto_76

    :cond_aa
    const/16 v77, 0x0

    goto/16 :goto_7e

    :cond_ab
    :goto_76
    const-wide/high16 v67, 0x1000000000000L

    and-long v67, v47, v67

    cmp-long v67, v67, v41

    if-eqz v67, :cond_ae

    if-eqz v0, :cond_ac

    .line 1200
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatBackrestSupport()Landroidx/databinding/ObservableInt;

    move-result-object v67

    move-object/from16 v68, v15

    move-object/from16 v12, v67

    goto :goto_77

    :cond_ac
    move-object/from16 v68, v15

    move-object/from16 v12, v20

    :goto_77
    const/4 v15, 0x3

    .line 1202
    invoke-virtual {v1, v15, v12}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_ad

    .line 1207
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_78

    :cond_ad
    const/4 v12, 0x0

    :goto_78
    if-eqz v0, :cond_af

    .line 1213
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v12

    goto :goto_79

    :cond_ae
    move-object/from16 v68, v15

    :cond_af
    const/4 v12, 0x0

    :goto_79
    const-wide/16 v79, 0x2

    and-long v79, v47, v79

    const-wide/16 v41, 0x0

    cmp-long v15, v79, v41

    if-eqz v15, :cond_b2

    if-eqz v0, :cond_b0

    const v15, 0x10050a00

    move/from16 v77, v12

    const/4 v12, 0x4

    .line 1220
    invoke-virtual {v0, v15, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_7a

    :cond_b0
    move/from16 v77, v12

    move-object/from16 v15, v68

    :goto_7a
    const/16 v12, 0xa

    .line 1222
    invoke-virtual {v1, v12, v15}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_b1

    .line 1227
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v70

    :cond_b1
    move/from16 v12, v70

    if-eqz v0, :cond_b3

    .line 1233
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v69

    goto :goto_7b

    :cond_b2
    move/from16 v77, v12

    :cond_b3
    :goto_7b
    and-long v29, v2, v29

    const-wide/16 v41, 0x0

    cmp-long v12, v29, v41

    if-eqz v12, :cond_b6

    if-eqz v0, :cond_b4

    .line 1240
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateSupported()Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_7c

    :cond_b4
    move-object/from16 v12, v76

    :goto_7c
    const/16 v15, 0xb

    .line 1242
    invoke-virtual {v1, v15, v12}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_b5

    .line 1247
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v72

    :cond_b5
    move/from16 v12, v72

    if-eqz v0, :cond_b6

    .line 1253
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v71

    :cond_b6
    and-long v29, v2, v31

    const-wide/16 v31, 0x0

    cmp-long v12, v29, v31

    if-eqz v12, :cond_b9

    if-eqz v0, :cond_b7

    .line 1260
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatSupported()Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_7d

    :cond_b7
    move-object/from16 v12, v75

    :goto_7d
    const/16 v15, 0x14

    .line 1262
    invoke-virtual {v1, v15, v12}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_b8

    .line 1267
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v73

    :cond_b8
    move/from16 v12, v73

    if-eqz v0, :cond_b9

    .line 1273
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v74

    :cond_b9
    :goto_7e
    and-long v29, v2, v65

    const-wide/16 v31, 0x0

    cmp-long v12, v29, v31

    if-nez v12, :cond_bb

    and-long v29, v47, v33

    cmp-long v15, v29, v31

    if-eqz v15, :cond_ba

    goto :goto_7f

    :cond_ba
    const/4 v12, 0x0

    goto :goto_82

    :cond_bb
    :goto_7f
    if-eqz v9, :cond_bc

    goto :goto_80

    :cond_bc
    const/16 v74, 0x0

    :goto_80
    if-eqz v12, :cond_be

    if-eqz v74, :cond_bd

    const-wide/high16 v29, 0x8000000000000L

    goto :goto_81

    :cond_bd
    const-wide/high16 v29, 0x4000000000000L

    :goto_81
    or-long v47, v47, v29

    :cond_be
    move/from16 v12, v74

    :goto_82
    and-long v29, v2, v49

    const-wide/16 v31, 0x0

    cmp-long v15, v29, v31

    if-nez v15, :cond_c0

    and-long v29, v47, v63

    cmp-long v29, v29, v31

    if-eqz v29, :cond_bf

    goto :goto_83

    :cond_bf
    const/16 v71, 0x0

    goto :goto_86

    :cond_c0
    :goto_83
    if-eqz v9, :cond_c1

    goto :goto_84

    :cond_c1
    const/16 v71, 0x0

    :goto_84
    if-eqz v15, :cond_c3

    if-eqz v71, :cond_c2

    const-wide/high16 v29, 0x2000000000000L

    goto :goto_85

    :cond_c2
    const-wide/high16 v29, 0x1000000000000L

    :goto_85
    or-long v2, v2, v29

    :cond_c3
    :goto_86
    const-wide v29, 0x400010000000L

    and-long v29, v47, v29

    const-wide/16 v31, 0x0

    cmp-long v15, v29, v31

    if-eqz v15, :cond_c6

    if-eqz v9, :cond_c4

    goto :goto_87

    :cond_c4
    const/16 v69, 0x0

    :goto_87
    and-long v29, v47, v61

    cmp-long v9, v29, v31

    if-eqz v9, :cond_c7

    if-eqz v69, :cond_c5

    const-wide v29, 0x2000000000L

    goto :goto_88

    :cond_c5
    const-wide v29, 0x1000000000L

    :goto_88
    or-long v47, v47, v29

    goto :goto_89

    :cond_c6
    const/16 v69, 0x0

    :cond_c7
    :goto_89
    and-long v29, v2, v18

    const-wide/16 v31, 0x0

    cmp-long v9, v29, v31

    if-eqz v9, :cond_ca

    if-eqz v10, :cond_c8

    const/16 v77, 0x1

    :cond_c8
    if-eqz v9, :cond_cb

    if-eqz v77, :cond_c9

    const-wide v9, 0x200000000L

    goto :goto_8a

    :cond_c9
    const-wide v9, 0x100000000L

    :goto_8a
    or-long v47, v47, v9

    goto :goto_8b

    :cond_ca
    const/16 v77, 0x0

    :cond_cb
    :goto_8b
    and-long v9, v2, v59

    const-wide/16 v29, 0x0

    cmp-long v9, v9, v29

    if-eqz v9, :cond_d0

    if-eqz v78, :cond_cc

    const/4 v10, 0x1

    goto :goto_8c

    :cond_cc
    move/from16 v10, v69

    :goto_8c
    if-eqz v9, :cond_ce

    if-eqz v10, :cond_cd

    const-wide v29, 0x800000000L

    or-long v2, v2, v29

    goto :goto_8d

    :cond_cd
    or-long v2, v2, v63

    :cond_ce
    :goto_8d
    if-eqz v10, :cond_cf

    goto :goto_8e

    :cond_cf
    const/16 v9, 0x8

    goto :goto_8f

    :cond_d0
    :goto_8e
    const/4 v9, 0x0

    :goto_8f
    const-wide/32 v29, 0xb08002

    and-long v29, v2, v29

    const-wide/16 v31, 0x0

    cmp-long v10, v29, v31

    if-eqz v10, :cond_d5

    if-eqz v45, :cond_d1

    const/4 v15, 0x1

    goto :goto_90

    :cond_d1
    move v15, v12

    :goto_90
    if-eqz v10, :cond_d3

    if-eqz v15, :cond_d2

    const-wide v29, 0x800000000000L

    or-long v2, v2, v29

    goto :goto_91

    :cond_d2
    or-long v2, v2, v61

    :cond_d3
    :goto_91
    if-eqz v15, :cond_d4

    goto :goto_92

    :cond_d4
    const/16 v10, 0x8

    goto :goto_93

    :cond_d5
    :goto_92
    const/4 v10, 0x0

    :goto_93
    const-wide/32 v29, 0xa18800

    and-long v29, v2, v29

    const-wide/16 v31, 0x0

    cmp-long v15, v29, v31

    if-eqz v15, :cond_da

    if-eqz v46, :cond_d6

    const/16 v29, 0x1

    goto :goto_94

    :cond_d6
    move/from16 v29, v71

    :goto_94
    if-eqz v15, :cond_d8

    if-eqz v29, :cond_d7

    const-wide v30, 0x2000000000L

    goto :goto_95

    :cond_d7
    const-wide v30, 0x1000000000L

    :goto_95
    or-long v2, v2, v30

    :cond_d8
    if-eqz v29, :cond_d9

    goto :goto_96

    :cond_d9
    const/16 v15, 0x8

    goto :goto_97

    :cond_da
    :goto_96
    const/4 v15, 0x0

    :goto_97
    const-wide v29, 0x100000000L

    and-long v29, v47, v29

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-eqz v29, :cond_dd

    if-eqz v0, :cond_db

    .line 1388
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatBackrestSupport()Landroidx/databinding/ObservableInt;

    move-result-object v29

    move/from16 v30, v9

    move-object/from16 v9, v29

    move/from16 v29, v5

    goto :goto_98

    :cond_db
    move/from16 v29, v5

    move/from16 v30, v9

    move-object/from16 v9, v20

    :goto_98
    const/4 v5, 0x4

    .line 1390
    invoke-virtual {v1, v5, v9}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_dc

    .line 1395
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_99

    :cond_dc
    const/4 v9, 0x0

    :goto_99
    if-eqz v0, :cond_de

    .line 1401
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v9

    goto :goto_9a

    :cond_dd
    move/from16 v29, v5

    move/from16 v30, v9

    const/4 v5, 0x4

    :cond_de
    const/4 v9, 0x0

    :goto_9a
    const-wide/high16 v31, 0x2000000000000L

    and-long v31, v2, v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-nez v31, :cond_e0

    const-wide v41, 0x8002000000000L

    and-long v41, v47, v41

    cmp-long v32, v41, v33

    if-eqz v32, :cond_df

    goto :goto_9b

    :cond_df
    move/from16 v32, v9

    const/4 v5, 0x0

    const/16 v23, 0x0

    const/16 v31, 0x0

    const-wide/16 v41, 0x0

    goto :goto_a0

    :cond_e0
    :goto_9b
    if-eqz v8, :cond_e1

    .line 1410
    invoke-virtual {v8}, Lcom/geely/hvac/component/SeatTab;->getSelectTop()Landroidx/databinding/ObservableInt;

    move-result-object v32

    move-object/from16 v5, v32

    move/from16 v32, v9

    goto :goto_9c

    :cond_e1
    move/from16 v32, v9

    move-object/from16 v5, v57

    :goto_9c
    const/4 v9, 0x0

    .line 1412
    invoke-virtual {v1, v9, v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_e2

    .line 1417
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_9d

    :cond_e2
    move/from16 v5, v37

    :goto_9d
    if-eqz v31, :cond_e3

    if-eqz v8, :cond_e3

    const/4 v9, 0x1

    .line 1424
    invoke-virtual {v8, v9, v5}, Lcom/geely/hvac/component/SeatTab;->isLineVisible(II)Z

    move-result v31

    goto :goto_9e

    :cond_e3
    const/16 v31, 0x0

    :goto_9e
    const-wide/high16 v33, 0x8000000000000L

    and-long v33, v47, v33

    const-wide/16 v41, 0x0

    cmp-long v9, v33, v41

    if-eqz v9, :cond_e4

    if-eqz v8, :cond_e4

    const/4 v9, 0x0

    .line 1431
    invoke-virtual {v8, v9, v5}, Lcom/geely/hvac/component/SeatTab;->isLineVisible(II)Z

    move-result v23

    goto :goto_9f

    :cond_e4
    const/4 v9, 0x0

    move/from16 v23, v9

    :goto_9f
    const-wide v33, 0x2000000000L

    and-long v33, v47, v33

    cmp-long v33, v33, v41

    if-eqz v33, :cond_e5

    if-eqz v8, :cond_e5

    const/4 v9, 0x2

    .line 1438
    invoke-virtual {v8, v9, v5}, Lcom/geely/hvac/component/SeatTab;->isLineVisible(II)Z

    move-result v5

    goto :goto_a0

    :cond_e5
    const/4 v5, 0x0

    :goto_a0
    and-long v8, v2, v49

    cmp-long v8, v8, v41

    if-eqz v8, :cond_e6

    if-eqz v71, :cond_e6

    goto :goto_a1

    :cond_e6
    const/16 v31, 0x0

    :goto_a1
    and-long v8, v2, v18

    cmp-long v8, v8, v41

    if-eqz v8, :cond_e9

    if-eqz v77, :cond_e7

    const/16 v32, 0x1

    :cond_e7
    if-eqz v8, :cond_ea

    if-eqz v32, :cond_e8

    const-wide/32 v8, 0x800000

    goto :goto_a2

    :cond_e8
    const-wide/32 v8, 0x400000

    :goto_a2
    or-long v47, v47, v8

    goto :goto_a3

    :cond_e9
    const/16 v32, 0x0

    :cond_ea
    :goto_a3
    and-long v8, v47, v61

    const-wide/16 v41, 0x0

    cmp-long v8, v8, v41

    if-eqz v8, :cond_eb

    if-eqz v69, :cond_eb

    goto :goto_a4

    :cond_eb
    const/4 v5, 0x0

    :goto_a4
    and-long v8, v2, v65

    cmp-long v8, v8, v41

    if-eqz v8, :cond_ed

    if-eqz v12, :cond_ec

    move/from16 v12, v23

    goto :goto_a5

    :cond_ec
    const/4 v12, 0x0

    :goto_a5
    const-wide/32 v8, 0xe18801

    goto :goto_a6

    :cond_ed
    const-wide/32 v8, 0xe18801

    const/4 v12, 0x0

    :goto_a6
    and-long v49, v2, v8

    cmp-long v8, v49, v41

    if-eqz v8, :cond_f2

    if-eqz v46, :cond_ee

    const/16 v31, 0x1

    :cond_ee
    if-eqz v8, :cond_f0

    if-eqz v31, :cond_ef

    const-wide v8, 0x200000000L

    goto :goto_a7

    :cond_ef
    const-wide v8, 0x100000000L

    :goto_a7
    or-long/2addr v2, v8

    :cond_f0
    if-eqz v31, :cond_f1

    goto :goto_a8

    :cond_f1
    const/4 v8, 0x4

    goto :goto_a9

    :cond_f2
    :goto_a8
    const/4 v8, 0x0

    :goto_a9
    const-wide/32 v25, 0xf08003

    and-long v49, v2, v25

    const-wide/16 v41, 0x0

    cmp-long v9, v49, v41

    if-eqz v9, :cond_f7

    if-eqz v45, :cond_f3

    const/4 v12, 0x1

    :cond_f3
    if-eqz v9, :cond_f5

    if-eqz v12, :cond_f4

    const-wide/high16 v45, 0x200000000000000L

    goto :goto_aa

    :cond_f4
    const-wide/high16 v45, 0x100000000000000L

    :goto_aa
    or-long v2, v2, v45

    :cond_f5
    if-eqz v12, :cond_f6

    const/4 v9, 0x0

    goto :goto_ab

    :cond_f6
    const/4 v9, 0x4

    :goto_ab
    move v12, v9

    goto :goto_ac

    :cond_f7
    const/4 v12, 0x0

    :goto_ac
    const-wide/32 v21, 0xe48401

    and-long v45, v2, v21

    const-wide/16 v41, 0x0

    cmp-long v9, v45, v41

    if-eqz v9, :cond_fc

    if-eqz v7, :cond_f8

    const/4 v5, 0x1

    :cond_f8
    if-eqz v9, :cond_fa

    if-eqz v5, :cond_f9

    const-wide/high16 v45, 0x800000000000000L

    goto :goto_ad

    :cond_f9
    const-wide/high16 v45, 0x400000000000000L

    :goto_ad
    or-long v2, v2, v45

    :cond_fa
    if-eqz v5, :cond_fb

    const/16 v39, 0x0

    goto :goto_ae

    :cond_fb
    const/16 v39, 0x4

    :goto_ae
    move/from16 v5, v39

    goto :goto_af

    :cond_fc
    const/4 v5, 0x0

    :goto_af
    const-wide/32 v45, 0x400000

    and-long v45, v47, v45

    const-wide/16 v41, 0x0

    cmp-long v7, v45, v41

    if-eqz v7, :cond_ff

    if-eqz v0, :cond_fd

    .line 1529
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_b0

    :cond_fd
    move-object/from16 v7, v20

    :goto_b0
    const/16 v9, 0xe

    .line 1531
    invoke-virtual {v1, v9, v7}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_fe

    .line 1536
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_b1

    :cond_fe
    const/4 v7, 0x0

    :goto_b1
    if-eqz v0, :cond_ff

    .line 1542
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v7

    goto :goto_b2

    :cond_ff
    const/4 v7, 0x0

    :goto_b2
    and-long v18, v2, v18

    const-wide/16 v41, 0x0

    cmp-long v9, v18, v41

    if-eqz v9, :cond_102

    if-eqz v32, :cond_100

    const/4 v7, 0x1

    :cond_100
    if-eqz v9, :cond_103

    if-eqz v7, :cond_101

    const-wide/16 v18, 0x80

    goto :goto_b3

    :cond_101
    const-wide/16 v18, 0x40

    :goto_b3
    or-long v47, v47, v18

    goto :goto_b4

    :cond_102
    const/4 v7, 0x0

    :cond_103
    :goto_b4
    const-wide/16 v18, 0x40

    and-long v18, v47, v18

    const-wide/16 v31, 0x0

    cmp-long v18, v18, v31

    if-eqz v18, :cond_106

    if-eqz v0, :cond_104

    .line 1565
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v18

    move/from16 v19, v8

    move-object/from16 v81, v18

    move/from16 v18, v5

    move-object/from16 v5, v81

    goto :goto_b5

    :cond_104
    move/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v5, v20

    :goto_b5
    const/16 v8, 0xd

    .line 1567
    invoke-virtual {v1, v8, v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_105

    .line 1572
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_b6

    :cond_105
    const/4 v5, 0x0

    :goto_b6
    if-eqz v0, :cond_107

    .line 1578
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v5

    goto :goto_b7

    :cond_106
    move/from16 v18, v5

    move/from16 v19, v8

    :cond_107
    const/4 v5, 0x0

    :goto_b7
    if-eqz v9, :cond_10a

    if-eqz v7, :cond_108

    const/4 v5, 0x1

    :cond_108
    if-eqz v9, :cond_10b

    if-eqz v5, :cond_109

    const-wide/16 v7, 0x20

    goto :goto_b8

    :cond_109
    const-wide/16 v7, 0x10

    :goto_b8
    or-long v47, v47, v7

    goto :goto_b9

    :cond_10a
    const/4 v5, 0x0

    :cond_10b
    :goto_b9
    const-wide/16 v7, 0x10

    and-long v7, v47, v7

    const-wide/16 v31, 0x0

    cmp-long v7, v7, v31

    if-eqz v7, :cond_10e

    if-eqz v0, :cond_10c

    .line 1601
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_ba

    :cond_10c
    move-object/from16 v7, v20

    :goto_ba
    const/4 v8, 0x7

    .line 1603
    invoke-virtual {v1, v8, v7}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_10d

    .line 1608
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_bb

    :cond_10d
    const/4 v7, 0x0

    :goto_bb
    if-eqz v0, :cond_10e

    .line 1614
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v7

    goto :goto_bc

    :cond_10e
    const/4 v7, 0x0

    :goto_bc
    if-eqz v9, :cond_111

    if-eqz v5, :cond_10f

    const/4 v7, 0x1

    :cond_10f
    if-eqz v9, :cond_112

    if-eqz v7, :cond_110

    const-wide v31, 0x8000000000L

    goto :goto_bd

    :cond_110
    const-wide v31, 0x4000000000L

    :goto_bd
    or-long v47, v47, v31

    goto :goto_be

    :cond_111
    const/4 v7, 0x0

    :cond_112
    :goto_be
    const-wide v31, 0x4000000000L

    and-long v31, v47, v31

    const-wide/16 v41, 0x0

    cmp-long v5, v31, v41

    if-eqz v5, :cond_115

    if-eqz v0, :cond_113

    .line 1637
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v20

    :cond_113
    move-object/from16 v5, v20

    const/16 v8, 0x11

    .line 1639
    invoke-virtual {v1, v8, v5}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_114

    .line 1644
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_bf

    :cond_114
    const/4 v5, 0x0

    :goto_bf
    if-eqz v0, :cond_115

    .line 1650
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v0

    goto :goto_c0

    :cond_115
    const/4 v0, 0x0

    :goto_c0
    if-eqz v9, :cond_118

    if-eqz v7, :cond_116

    const/4 v0, 0x1

    :cond_116
    if-eqz v0, :cond_117

    const/16 v33, 0x0

    goto :goto_c1

    :cond_117
    const/16 v33, 0x8

    :goto_c1
    move/from16 v0, v33

    goto :goto_c2

    :cond_118
    const/4 v0, 0x0

    :goto_c2
    const-wide/32 v7, 0x800000

    and-long/2addr v7, v2

    const-wide/16 v31, 0x0

    cmp-long v5, v7, v31

    if-eqz v5, :cond_119

    .line 1675
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->heatIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/geely/hvac/component/BoolStateLottieView;->bindEnable(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    .line 1676
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->massageIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    invoke-static {v5, v7}, Lcom/geely/hvac/component/BoolStateLottieView;->bindEnable(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    .line 1677
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->positionIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    invoke-static {v5, v7}, Lcom/geely/hvac/component/BoolStateLottieView;->bindEnable(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    .line 1678
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->windIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    invoke-static {v5, v7}, Lcom/geely/hvac/component/BoolStateLottieView;->bindEnable(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    :cond_119
    and-long v7, v2, v27

    const-wide/16 v23, 0x0

    cmp-long v5, v7, v23

    if-eqz v5, :cond_11a

    .line 1683
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->heatIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    invoke-static {v5, v4}, Lcom/geely/hvac/component/BoolStateLottieView;->bind(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    .line 1684
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->heatTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v4, v6}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 1685
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item0Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v4, v13}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 1686
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item1Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v4, v11}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 1687
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item2Bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v4, v14}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 1688
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item3Bg:Lcom/geely/hvac/component/ViewWithBackground;

    move/from16 v6, v58

    invoke-virtual {v4, v6}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 1689
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item4Bg:Lcom/geely/hvac/component/ViewWithBackground;

    move/from16 v5, v52

    invoke-virtual {v4, v5}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 1690
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->massageIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    move/from16 v13, v51

    invoke-static {v4, v13}, Lcom/geely/hvac/component/BoolStateLottieView;->bind(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    .line 1691
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->massageTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v5, v44

    invoke-virtual {v4, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 1692
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move-object/from16 v5, v43

    invoke-static {v4, v5}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1693
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->physiotherapyTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v5, v40

    invoke-virtual {v4, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 1694
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->positionIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    move/from16 v5, v56

    invoke-static {v4, v5}, Lcom/geely/hvac/component/BoolStateLottieView;->bind(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    .line 1695
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->positionTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v11, v53

    invoke-virtual {v4, v11}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 1696
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->windIcon:Lcom/geely/hvac/component/BoolStateLottieView;

    move/from16 v5, v55

    invoke-static {v4, v5}, Lcom/geely/hvac/component/BoolStateLottieView;->bind(Lcom/geely/hvac/component/BoolStateLottieView;Z)V

    .line 1697
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->windTxt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v14, v54

    invoke-virtual {v4, v14}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_11a
    const-wide/32 v4, 0xc00000

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11b

    .line 1702
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item0:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v5, v38

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1703
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1704
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item2:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1705
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item3:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1706
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item4:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11b
    const-wide/32 v4, 0xb08002

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11c

    .line 1711
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_11c
    const-wide/32 v4, 0xa18800

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11d

    .line 1716
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_11d
    and-long v4, v2, v59

    cmp-long v4, v4, v6

    if-eqz v4, :cond_11e

    .line 1721
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item2:Landroidx/constraintlayout/widget/ConstraintLayout;

    move/from16 v5, v30

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_11e
    if-eqz v9, :cond_11f

    .line 1726
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->item4:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_11f
    const-wide/32 v4, 0xf08003

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_120

    .line 1731
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line0:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_120
    const-wide/32 v4, 0xe18801

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_121

    .line 1736
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line1:Landroid/view/View;

    move/from16 v8, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_121
    const-wide/32 v4, 0xe48401

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_122

    .line 1741
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line2:Landroid/view/View;

    move/from16 v4, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_122
    and-long v2, v2, v16

    cmp-long v0, v2, v6

    if-eqz v0, :cond_123

    .line 1746
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->line3:Landroid/view/View;

    move/from16 v2, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_123
    return-void

    :catchall_0
    move-exception v0

    .line 388
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags_1:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 103
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 92
    monitor-enter p0

    const-wide/32 v0, 0x800000

    .line 93
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags_1:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 95
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

    .line 185
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelRow1RightSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 181
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 177
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelRow1LeftSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelIsDisplayIVIClick(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 171
    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 169
    :pswitch_8
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1LeftSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 167
    :pswitch_9
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelRow1RightSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 165
    :pswitch_a
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 163
    :pswitch_b
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1RightSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 161
    :pswitch_c
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1RightSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 159
    :pswitch_d
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 157
    :pswitch_e
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeTabTabIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 155
    :pswitch_f
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1LeftSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 153
    :pswitch_10
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1RightSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 151
    :pswitch_11
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetRow1LeftSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 149
    :pswitch_12
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 147
    :pswitch_13
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeModelRow1LeftSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 145
    :pswitch_14
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->onChangeTabSelectTop(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Model"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 129
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->notifyPropertyChanged(I)V

    .line 130
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 128
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTab(Lcom/geely/hvac/component/SeatTab;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Tab"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mTab:Lcom/geely/hvac/component/SeatTab;

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->mDirtyFlags:J

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 137
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->notifyPropertyChanged(I)V

    .line 138
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatTabBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 136
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
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

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 113
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 116
    check-cast p2, Lcom/geely/hvac/component/SeatTab;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;->setTab(Lcom/geely/hvac/component/SeatTab;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
