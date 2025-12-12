.class public Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;
.source "LayoutSeatHeatTimeSelectorBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mSelectorOnItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;

.field private final mboundView3:Landroid/view/View;

.field private final mboundView5:Landroid/view/View;

.field private final mboundView7:Landroid/view/View;


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

    .line 32
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    const/4 v0, 0x0

    .line 35
    aget-object v3, p2, v0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v0, -0x1

    .line 588
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    .line 43
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->bg:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 48
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mboundView3:Landroid/view/View;

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 50
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mboundView5:Landroid/view/View;

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 52
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mboundView7:Landroid/view/View;

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->retain:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeSelectorEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "SelectorEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    .line 113
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

.method private onChangeSelectorSelectIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "SelectorSelectIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    .line 122
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
    .locals 53

    move-object/from16 v1, p0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 133
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mSelector:Lcom/geely/hvac/component/SeatTimeSelector;

    const-wide/16 v6, 0xf

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    const/4 v9, 0x3

    const-wide/16 v10, 0x200

    const-wide/32 v13, 0x800000

    const-wide/16 v15, 0x80

    const-wide v17, 0x2000000000L

    const-wide/16 v19, 0x400

    const-wide/16 v21, 0x800

    const-wide/16 v23, 0x40

    const-wide v25, 0x1000000000L

    const-wide/32 v27, 0x400000

    const-wide/16 v29, 0xd

    const-wide/16 v31, 0xe

    const/4 v12, 0x1

    const/4 v6, 0x0

    if-eqz v8, :cond_2f

    and-long v7, v2, v29

    cmp-long v7, v7, v4

    if-eqz v7, :cond_16

    if-eqz v0, :cond_1

    .line 176
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mSelectorOnItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;

    if-nez v7, :cond_0

    new-instance v7, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;

    invoke-direct {v7}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v7, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mSelectorOnItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v7, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/component/SeatTimeSelector;)Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl$OnClickListenerImpl;

    move-result-object v7

    .line 178
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatTimeSelector;->getEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v8

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 180
    :goto_0
    invoke-virtual {v1, v6, v8}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_2

    .line 185
    invoke-virtual {v8}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v36

    goto :goto_1

    :cond_2
    move/from16 v36, v6

    :goto_1
    and-long v37, v2, v27

    cmp-long v37, v37, v4

    if-eqz v37, :cond_4

    if-eqz v36, :cond_3

    const-wide/16 v37, 0x2000

    goto :goto_2

    :cond_3
    const-wide/16 v37, 0x1000

    :goto_2
    or-long v2, v2, v37

    :cond_4
    and-long v37, v2, v25

    cmp-long v37, v37, v4

    if-eqz v37, :cond_6

    if-eqz v36, :cond_5

    const-wide/32 v37, 0x20000

    goto :goto_3

    :cond_5
    const-wide/32 v37, 0x10000

    :goto_3
    or-long v2, v2, v37

    :cond_6
    and-long v37, v2, v23

    cmp-long v37, v37, v4

    if-eqz v37, :cond_8

    if-eqz v36, :cond_7

    const-wide/32 v37, 0x200000

    goto :goto_4

    :cond_7
    const-wide/32 v37, 0x100000

    :goto_4
    or-long v2, v2, v37

    :cond_8
    and-long v37, v2, v21

    cmp-long v37, v37, v4

    if-eqz v37, :cond_a

    if-eqz v36, :cond_9

    const-wide/32 v37, 0x2000000

    goto :goto_5

    :cond_9
    const-wide/32 v37, 0x1000000

    :goto_5
    or-long v2, v2, v37

    :cond_a
    and-long v37, v2, v19

    cmp-long v37, v37, v4

    if-eqz v37, :cond_c

    if-eqz v36, :cond_b

    const-wide/32 v37, 0x8000000

    goto :goto_6

    :cond_b
    const-wide/32 v37, 0x4000000

    :goto_6
    or-long v2, v2, v37

    :cond_c
    and-long v37, v2, v17

    cmp-long v37, v37, v4

    if-eqz v37, :cond_e

    if-eqz v36, :cond_d

    const-wide/32 v37, 0x20000000

    goto :goto_7

    :cond_d
    const-wide/32 v37, 0x10000000

    :goto_7
    or-long v2, v2, v37

    :cond_e
    and-long v37, v2, v15

    cmp-long v37, v37, v4

    if-eqz v37, :cond_10

    if-eqz v36, :cond_f

    const-wide v37, 0x200000000L

    goto :goto_8

    :cond_f
    const-wide v37, 0x100000000L

    :goto_8
    or-long v2, v2, v37

    :cond_10
    and-long v37, v2, v29

    cmp-long v37, v37, v4

    if-eqz v37, :cond_12

    if-eqz v36, :cond_11

    const-wide v37, 0x800000000L

    goto :goto_9

    :cond_11
    const-wide v37, 0x400000000L

    :goto_9
    or-long v2, v2, v37

    :cond_12
    and-long v37, v2, v13

    cmp-long v37, v37, v4

    if-eqz v37, :cond_14

    if-eqz v36, :cond_13

    const-wide v37, 0x20000000000L

    goto :goto_a

    :cond_13
    const-wide v37, 0x10000000000L

    :goto_a
    or-long v2, v2, v37

    .line 262
    :cond_14
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    if-eqz v36, :cond_15

    const v15, 0x7f05009a

    goto :goto_b

    :cond_15
    const v15, 0x7f05009b

    :goto_b
    invoke-static {v6, v15}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v6

    goto :goto_c

    :cond_16
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v36, 0x0

    :goto_c
    if-eqz v0, :cond_17

    .line 267
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatTimeSelector;->getSelectIndex()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_d

    :cond_17
    const/4 v15, 0x0

    .line 269
    :goto_d
    invoke-virtual {v1, v12, v15}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_18

    .line 274
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    goto :goto_e

    :cond_18
    const/4 v15, 0x0

    :goto_e
    and-long v40, v2, v31

    cmp-long v16, v40, v4

    if-eqz v16, :cond_21

    if-eqz v15, :cond_19

    move/from16 v33, v12

    goto :goto_f

    :cond_19
    const/16 v33, 0x0

    :goto_f
    if-eq v15, v12, :cond_1a

    move/from16 v40, v12

    goto :goto_10

    :cond_1a
    const/16 v40, 0x0

    :goto_10
    const/4 v13, 0x2

    if-eq v15, v13, :cond_1b

    move v13, v12

    goto :goto_11

    :cond_1b
    const/4 v13, 0x0

    :goto_11
    if-eqz v16, :cond_1d

    if-eqz v33, :cond_1c

    const-wide/32 v43, 0x80000

    goto :goto_12

    :cond_1c
    const-wide/32 v43, 0x40000

    :goto_12
    or-long v2, v2, v43

    :cond_1d
    and-long v43, v2, v31

    cmp-long v14, v43, v4

    if-eqz v14, :cond_1f

    if-eqz v40, :cond_1e

    const-wide/32 v43, 0x8000

    goto :goto_13

    :cond_1e
    const-wide/16 v43, 0x4000

    :goto_13
    or-long v2, v2, v43

    :cond_1f
    and-long v43, v2, v31

    cmp-long v14, v43, v4

    if-eqz v14, :cond_22

    if-eqz v13, :cond_20

    or-long/2addr v2, v10

    goto :goto_14

    :cond_20
    const-wide/16 v43, 0x100

    or-long v2, v2, v43

    goto :goto_14

    :cond_21
    const/4 v13, 0x0

    const/16 v33, 0x0

    const/16 v40, 0x0

    :cond_22
    :goto_14
    if-ne v15, v9, :cond_23

    move v14, v12

    goto :goto_15

    :cond_23
    const/4 v14, 0x0

    :goto_15
    if-nez v15, :cond_24

    move/from16 v16, v12

    goto :goto_16

    :cond_24
    const/16 v16, 0x0

    :goto_16
    if-ne v15, v12, :cond_25

    move/from16 v43, v12

    goto :goto_17

    :cond_25
    const/16 v43, 0x0

    :goto_17
    const/4 v12, 0x2

    if-ne v15, v12, :cond_26

    const/4 v12, 0x1

    goto :goto_18

    :cond_26
    const/4 v12, 0x0

    :goto_18
    const-wide/16 v34, 0xf

    and-long v45, v2, v34

    cmp-long v45, v45, v4

    if-eqz v45, :cond_28

    if-eqz v14, :cond_27

    const-wide/32 v41, 0x800000

    or-long v2, v2, v41

    goto :goto_19

    :cond_27
    or-long v2, v2, v27

    :cond_28
    :goto_19
    and-long v45, v2, v34

    cmp-long v45, v45, v4

    if-eqz v45, :cond_2a

    if-eqz v16, :cond_29

    or-long v2, v2, v21

    goto :goto_1a

    :cond_29
    or-long v2, v2, v19

    :cond_2a
    :goto_1a
    and-long v45, v2, v34

    cmp-long v45, v45, v4

    if-eqz v45, :cond_2c

    if-eqz v43, :cond_2b

    const-wide/16 v38, 0x80

    or-long v2, v2, v38

    goto :goto_1b

    :cond_2b
    or-long v2, v2, v23

    :cond_2c
    :goto_1b
    and-long v45, v2, v34

    cmp-long v45, v45, v4

    if-eqz v45, :cond_2e

    if-eqz v12, :cond_2d

    or-long v2, v2, v17

    goto :goto_1c

    :cond_2d
    or-long v2, v2, v25

    :cond_2e
    :goto_1c
    move/from16 v52, v12

    move-object v12, v8

    move/from16 v8, v52

    goto :goto_1d

    :cond_2f
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    :goto_1d
    and-long v45, v2, v31

    cmp-long v45, v45, v4

    const/16 v46, 0x8

    if-eqz v45, :cond_38

    if-eqz v40, :cond_30

    move/from16 v47, v13

    goto :goto_1e

    :cond_30
    const/16 v47, 0x0

    :goto_1e
    if-eqz v33, :cond_31

    goto :goto_1f

    :cond_31
    const/16 v40, 0x0

    :goto_1f
    if-eqz v45, :cond_33

    if-eqz v47, :cond_32

    const-wide v48, 0x8000000000L

    goto :goto_20

    :cond_32
    const-wide v48, 0x4000000000L

    :goto_20
    or-long v2, v2, v48

    :cond_33
    and-long v48, v2, v31

    cmp-long v33, v48, v4

    if-eqz v33, :cond_35

    if-eqz v40, :cond_34

    const-wide v48, 0x80000000L

    goto :goto_21

    :cond_34
    const-wide/32 v48, 0x40000000

    :goto_21
    or-long v2, v2, v48

    :cond_35
    if-eqz v47, :cond_36

    const/16 v33, 0x0

    goto :goto_22

    :cond_36
    move/from16 v33, v46

    :goto_22
    if-eqz v40, :cond_37

    const/16 v40, 0x0

    goto :goto_23

    :cond_37
    move/from16 v40, v46

    :goto_23
    move/from16 v50, v33

    move/from16 v51, v40

    goto :goto_24

    :cond_38
    const/16 v50, 0x0

    const/16 v51, 0x0

    :goto_24
    const-wide v47, 0x3000c00cc0L

    and-long v47, v2, v47

    cmp-long v33, v47, v4

    if-eqz v33, :cond_5d

    if-eqz v0, :cond_39

    .line 387
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatTimeSelector;->getEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v12

    :cond_39
    const/4 v0, 0x0

    .line 389
    invoke-virtual {v1, v0, v12}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_3a

    .line 394
    invoke-virtual {v12}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v36

    :cond_3a
    and-long v47, v2, v27

    cmp-long v12, v47, v4

    if-eqz v12, :cond_3c

    if-eqz v36, :cond_3b

    const-wide/16 v47, 0x2000

    goto :goto_25

    :cond_3b
    const-wide/16 v47, 0x1000

    :goto_25
    or-long v2, v2, v47

    :cond_3c
    and-long v47, v2, v25

    cmp-long v12, v47, v4

    if-eqz v12, :cond_3e

    if-eqz v36, :cond_3d

    const-wide/32 v47, 0x20000

    goto :goto_26

    :cond_3d
    const-wide/32 v47, 0x10000

    :goto_26
    or-long v2, v2, v47

    :cond_3e
    and-long v47, v2, v23

    cmp-long v12, v47, v4

    if-eqz v12, :cond_40

    if-eqz v36, :cond_3f

    const-wide/32 v47, 0x200000

    goto :goto_27

    :cond_3f
    const-wide/32 v47, 0x100000

    :goto_27
    or-long v2, v2, v47

    :cond_40
    and-long v47, v2, v21

    cmp-long v12, v47, v4

    if-eqz v12, :cond_42

    if-eqz v36, :cond_41

    const-wide/32 v47, 0x2000000

    goto :goto_28

    :cond_41
    const-wide/32 v47, 0x1000000

    :goto_28
    or-long v2, v2, v47

    :cond_42
    and-long v47, v2, v19

    cmp-long v12, v47, v4

    if-eqz v12, :cond_44

    if-eqz v36, :cond_43

    const-wide/32 v47, 0x8000000

    goto :goto_29

    :cond_43
    const-wide/32 v47, 0x4000000

    :goto_29
    or-long v2, v2, v47

    :cond_44
    and-long v47, v2, v17

    cmp-long v12, v47, v4

    if-eqz v12, :cond_46

    if-eqz v36, :cond_45

    const-wide/32 v47, 0x20000000

    goto :goto_2a

    :cond_45
    const-wide/32 v47, 0x10000000

    :goto_2a
    or-long v2, v2, v47

    :cond_46
    const-wide/16 v37, 0x80

    and-long v47, v2, v37

    cmp-long v12, v47, v4

    if-eqz v12, :cond_48

    if-eqz v36, :cond_47

    const-wide v47, 0x200000000L

    goto :goto_2b

    :cond_47
    const-wide v47, 0x100000000L

    :goto_2b
    or-long v2, v2, v47

    :cond_48
    and-long v47, v2, v29

    cmp-long v12, v47, v4

    if-eqz v12, :cond_4a

    if-eqz v36, :cond_49

    const-wide v47, 0x800000000L

    goto :goto_2c

    :cond_49
    const-wide v47, 0x400000000L

    :goto_2c
    or-long v2, v2, v47

    :cond_4a
    const-wide/32 v40, 0x800000

    and-long v47, v2, v40

    cmp-long v12, v47, v4

    if-eqz v12, :cond_4c

    if-eqz v36, :cond_4b

    const-wide v47, 0x20000000000L

    goto :goto_2d

    :cond_4b
    const-wide v47, 0x10000000000L

    :goto_2d
    or-long v2, v2, v47

    :cond_4c
    and-long v27, v2, v27

    cmp-long v12, v27, v4

    const v0, 0x7f0500a9

    const v9, 0x7f0500aa

    if-eqz v12, :cond_4e

    .line 472
    iget-object v12, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->retain:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v36, :cond_4d

    invoke-static {v12, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v12

    goto :goto_2e

    :cond_4d
    invoke-static {v12, v9}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v12

    goto :goto_2e

    :cond_4e
    const/4 v12, 0x0

    :goto_2e
    and-long v25, v2, v25

    cmp-long v25, v25, v4

    if-eqz v25, :cond_50

    .line 477
    iget-object v10, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v36, :cond_4f

    invoke-static {v10, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v10

    goto :goto_2f

    :cond_4f
    invoke-static {v10, v9}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v10

    goto :goto_2f

    :cond_50
    const/4 v10, 0x0

    :goto_2f
    and-long v23, v2, v23

    cmp-long v11, v23, v4

    if-eqz v11, :cond_52

    .line 482
    iget-object v11, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v36, :cond_51

    invoke-static {v11, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v11

    goto :goto_30

    :cond_51
    invoke-static {v11, v9}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v11

    goto :goto_30

    :cond_52
    const/4 v11, 0x0

    :goto_30
    and-long v21, v2, v21

    cmp-long v21, v21, v4

    const v9, 0x7f050093

    const v0, 0x7f050095

    if-eqz v21, :cond_54

    .line 487
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v36, :cond_53

    invoke-static {v4, v9}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    goto :goto_31

    :cond_53
    invoke-static {v4, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    goto :goto_31

    :cond_54
    const/4 v4, 0x0

    :goto_31
    and-long v19, v2, v19

    const-wide/16 v47, 0x0

    cmp-long v5, v19, v47

    if-eqz v5, :cond_56

    if-eqz v36, :cond_55

    .line 492
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const v0, 0x7f0500a9

    invoke-static {v5, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    goto :goto_32

    :cond_55
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const v5, 0x7f0500aa

    invoke-static {v0, v5}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    goto :goto_32

    :cond_56
    const/4 v0, 0x0

    :goto_32
    and-long v17, v2, v17

    const-wide/16 v20, 0x0

    cmp-long v5, v17, v20

    if-eqz v5, :cond_58

    .line 497
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v36, :cond_57

    goto :goto_33

    :cond_57
    const v9, 0x7f050095

    :goto_33
    invoke-static {v5, v9}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    goto :goto_34

    :cond_58
    const/4 v5, 0x0

    :goto_34
    const-wide/16 v20, 0x80

    and-long v20, v2, v20

    const-wide/16 v22, 0x0

    cmp-long v9, v20, v22

    if-eqz v9, :cond_5a

    if-eqz v36, :cond_59

    .line 502
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v18, v0

    const v0, 0x7f050093

    invoke-static {v9, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v9

    goto :goto_35

    :cond_59
    move/from16 v18, v0

    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const v9, 0x7f050095

    invoke-static {v0, v9}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    move v9, v0

    goto :goto_35

    :cond_5a
    move/from16 v18, v0

    const/4 v9, 0x0

    :goto_35
    const-wide/32 v20, 0x800000

    and-long v20, v2, v20

    const-wide/16 v22, 0x0

    cmp-long v0, v20, v22

    if-eqz v0, :cond_5c

    if-eqz v36, :cond_5b

    .line 507
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->retain:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-wide/from16 v20, v2

    const v2, 0x7f050093

    goto :goto_36

    :cond_5b
    move-wide/from16 v20, v2

    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->retain:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const v2, 0x7f050095

    :goto_36
    invoke-static {v0, v2}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    move v2, v0

    move/from16 v0, v18

    move/from16 v3, v36

    goto :goto_37

    :cond_5c
    move-wide/from16 v20, v2

    move/from16 v0, v18

    move/from16 v3, v36

    const/4 v2, 0x0

    :goto_37
    const-wide/16 v17, 0x200

    goto :goto_38

    :cond_5d
    move-wide/from16 v20, v2

    move-wide/from16 v17, v10

    move/from16 v3, v36

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_38
    and-long v17, v20, v17

    const-wide/16 v22, 0x0

    cmp-long v17, v17, v22

    if-eqz v17, :cond_5f

    move/from16 v17, v0

    const/4 v0, 0x3

    if-eq v15, v0, :cond_5e

    const/16 v44, 0x1

    goto :goto_39

    :cond_5e
    const/16 v44, 0x0

    :goto_39
    const-wide/16 v18, 0xf

    goto :goto_3a

    :cond_5f
    move/from16 v17, v0

    const-wide/16 v18, 0xf

    const/16 v44, 0x0

    :goto_3a
    and-long v24, v20, v18

    cmp-long v0, v24, v22

    if-eqz v0, :cond_64

    if-eqz v43, :cond_60

    goto :goto_3b

    :cond_60
    move v9, v11

    :goto_3b
    if-eqz v16, :cond_61

    move v0, v4

    goto :goto_3c

    :cond_61
    move/from16 v0, v17

    :goto_3c
    if-eqz v14, :cond_62

    goto :goto_3d

    :cond_62
    move v2, v12

    :goto_3d
    if-eqz v8, :cond_63

    goto :goto_3e

    :cond_63
    move v5, v10

    goto :goto_3e

    :cond_64
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_3e
    and-long v10, v20, v31

    const-wide/16 v14, 0x0

    cmp-long v4, v10, v14

    if-eqz v4, :cond_69

    if-eqz v13, :cond_65

    goto :goto_3f

    :cond_65
    const/16 v44, 0x0

    :goto_3f
    if-eqz v4, :cond_67

    if-eqz v44, :cond_66

    const-wide/16 v10, 0x20

    goto :goto_40

    :cond_66
    const-wide/16 v10, 0x10

    :goto_40
    or-long v20, v20, v10

    :cond_67
    if-eqz v44, :cond_68

    const/16 v37, 0x0

    goto :goto_41

    :cond_68
    move/from16 v37, v46

    :goto_41
    move/from16 v4, v37

    goto :goto_42

    :cond_69
    const/4 v4, 0x0

    :goto_42
    and-long v10, v20, v29

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_6a

    .line 548
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v8, v6}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 549
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 550
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v6, v7, v3}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 551
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 552
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v6, v7, v3}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 553
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 554
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v6, v7, v3}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 555
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->retain:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 556
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->retain:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v6, v7, v3}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_6a
    const-wide/16 v6, 0xf

    and-long v6, v20, v6

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-eqz v3, :cond_6b

    .line 561
    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v3, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 562
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v9}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 563
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 564
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->retain:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_6b
    and-long v2, v20, v31

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_6c

    .line 569
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mboundView3:Landroid/view/View;

    move/from16 v2, v51

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mboundView5:Landroid/view/View;

    move/from16 v2, v50

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mboundView7:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6c
    return-void

    :catchall_0
    move-exception v0

    .line 134
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 72
    monitor-exit p0

    return v0

    .line 74
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 62
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 63
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 64
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1
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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 105
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->onChangeSelectorSelectIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 103
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->onChangeSelectorEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1
.end method

.method public setSelector(Lcom/geely/hvac/component/SeatTimeSelector;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Selector"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mSelector:Lcom/geely/hvac/component/SeatTimeSelector;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 95
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 94
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

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 82
    check-cast p2, Lcom/geely/hvac/component/SeatTimeSelector;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatHeatTimeSelectorBindingImpl;->setSelector(Lcom/geely/hvac/component/SeatTimeSelector;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
