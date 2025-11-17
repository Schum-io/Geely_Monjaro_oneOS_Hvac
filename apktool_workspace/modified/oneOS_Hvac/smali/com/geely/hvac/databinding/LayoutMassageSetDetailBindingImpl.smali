.class public Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;
.source "LayoutMassageSetDetailBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView2:Lcom/geely/hvac/component/SeatMassageAnimate;

.field private final mboundView3:Lcom/geely/hvac/component/MassageLevel;

.field private final mboundView4:Lcom/geely/hvac/component/MassageType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900af

    const/4 v2, 0x5

    .line 17
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

    .line 34
    sget-object v0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7
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

    const/4 v0, 0x5

    .line 37
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v4, 0x7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;)V

    const-wide/16 v0, -0x1

    .line 385
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatMassageAnimate;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView2:Lcom/geely/hvac/component/SeatMassageAnimate;

    .line 44
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/SeatMassageAnimate;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/MassageLevel;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView3:Lcom/geely/hvac/component/MassageLevel;

    .line 46
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/MassageLevel;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 47
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/MassageType;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView4:Lcom/geely/hvac/component/MassageType;

    .line 48
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/MassageType;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->seatMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 145
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

.method private onChangeModelGetMassageLevelModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageLevelModelMassageDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 118
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

.method private onChangeModelGetMassageTypeModelGetMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypeModelGetMassageDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 127
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

.method private onChangeModelGetMassageTypeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypeModelMassageDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 154
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

.method private onChangeModelGetMassageTypesModelMassageDetailZone(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypesModelMassageDetailZone",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "[I>;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 172
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

.method private onChangeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelMassageDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 136
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

.method private onChangeModelSeatMassageRes(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSeatMassageRes",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 163
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
    .locals 33

    move-object/from16 v1, p0

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 183
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x1c4

    const-wide/16 v9, 0x194

    const-wide/16 v13, 0x18a

    const-wide/16 v17, 0x185

    const-wide/16 v19, 0x188

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v6, :cond_17

    and-long v23, v2, v17

    cmp-long v6, v23, v4

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageLevelChangeListener()Lcom/geely/hvac/component/intf/SelectorChangedListener;

    move-result-object v23

    goto :goto_0

    :cond_0
    move-object/from16 v23, v16

    :goto_0
    const-wide/16 v24, 0x1d5

    and-long v24, v2, v24

    cmp-long v24, v24, v4

    if-eqz v24, :cond_9

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageDetailZone()Landroidx/databinding/ObservableInt;

    move-result-object v24

    move-object/from16 v11, v24

    goto :goto_1

    :cond_1
    move-object/from16 v11, v16

    :goto_1
    const/4 v12, 0x2

    .line 221
    invoke-virtual {v1, v12, v11}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_2

    .line 226
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_2

    :cond_2
    move v11, v15

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0, v11}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageLevel(I)Landroidx/databinding/ObservableInt;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object/from16 v6, v16

    .line 235
    :goto_3
    invoke-virtual {v1, v15, v6}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_4

    .line 240
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_4

    :cond_4
    move v6, v15

    :goto_4
    and-long v26, v2, v9

    cmp-long v12, v26, v4

    if-eqz v12, :cond_6

    if-eqz v0, :cond_5

    .line 247
    invoke-virtual {v0, v11}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageType(I)Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_5

    :cond_5
    move-object/from16 v12, v16

    :goto_5
    const/4 v15, 0x4

    .line 249
    invoke-virtual {v1, v15, v12}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_6

    .line 254
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    and-long v27, v2, v7

    cmp-long v15, v27, v4

    if-eqz v15, :cond_8

    if-eqz v0, :cond_7

    .line 261
    invoke-virtual {v0, v11}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageTypes(I)Landroidx/databinding/ObservableField;

    move-result-object v15

    goto :goto_7

    :cond_7
    move-object/from16 v15, v16

    :goto_7
    const/4 v7, 0x6

    .line 263
    invoke-virtual {v1, v7, v15}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_8

    .line 268
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    goto :goto_8

    :cond_8
    move-object/from16 v7, v16

    goto :goto_8

    :cond_9
    move-object/from16 v7, v16

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    and-long v29, v2, v13

    cmp-long v8, v29, v4

    if-eqz v8, :cond_12

    if-eqz v0, :cond_a

    .line 276
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageDetailZone()Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_9

    :cond_a
    move-object/from16 v8, v16

    :goto_9
    const/4 v15, 0x3

    .line 278
    invoke-virtual {v1, v15, v8}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_b

    .line 283
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    :goto_a
    if-eqz v0, :cond_c

    .line 289
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageType(I)Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_b

    :cond_c
    move-object/from16 v15, v16

    :goto_b
    const/4 v9, 0x1

    .line 291
    invoke-virtual {v1, v9, v15}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_d

    .line 296
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    :goto_c
    and-long v31, v2, v19

    cmp-long v15, v31, v4

    if-eqz v15, :cond_13

    if-ne v8, v9, :cond_e

    goto :goto_d

    :cond_e
    const/4 v9, 0x0

    :goto_d
    if-eqz v15, :cond_10

    if-eqz v9, :cond_f

    const-wide/16 v31, 0x400

    goto :goto_e

    :cond_f
    const-wide/16 v31, 0x200

    :goto_e
    or-long v2, v2, v31

    :cond_10
    if-eqz v9, :cond_11

    const v9, 0x7f0d005a

    goto :goto_f

    :cond_11
    const v9, 0x7f0d005b

    :goto_f
    move v15, v9

    goto :goto_10

    :cond_12
    const/4 v8, 0x0

    const/4 v10, 0x0

    :cond_13
    const/4 v15, 0x0

    :goto_10
    const-wide/16 v24, 0x180

    and-long v31, v2, v24

    cmp-long v9, v31, v4

    if-eqz v9, :cond_14

    if-eqz v0, :cond_14

    .line 320
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageTypeChangeListener()Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    move-result-object v9

    goto :goto_11

    :cond_14
    move-object/from16 v9, v16

    :goto_11
    const-wide/16 v21, 0x1a0

    and-long v31, v2, v21

    cmp-long v26, v31, v4

    if-eqz v26, :cond_16

    if-eqz v0, :cond_15

    .line 327
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatMassageRes()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_12

    :cond_15
    move-object/from16 v0, v16

    :goto_12
    const/4 v13, 0x5

    .line 329
    invoke-virtual {v1, v13, v0}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_16

    .line 334
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    :cond_16
    move-object v13, v7

    move v0, v15

    move-object/from16 v7, v16

    move v15, v8

    move-object/from16 v8, v23

    goto :goto_13

    :cond_17
    move-object/from16 v7, v16

    move-object v8, v7

    move-object v9, v8

    move-object v13, v9

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_13
    and-long v19, v2, v19

    cmp-long v14, v19, v4

    if-eqz v14, :cond_18

    .line 342
    iget-object v14, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView2:Lcom/geely/hvac/component/SeatMassageAnimate;

    invoke-static {v14, v15}, Lcom/geely/hvac/component/SeatMassageAnimate;->bindSeatMassageAnimateLeftOrRight(Lcom/geely/hvac/component/SeatMassageAnimate;I)V

    .line 343
    iget-object v14, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->seatMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v14, v0}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    :cond_18
    const-wide/16 v14, 0x1a0

    and-long/2addr v14, v2

    cmp-long v0, v14, v4

    if-eqz v0, :cond_19

    .line 348
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView2:Lcom/geely/hvac/component/SeatMassageAnimate;

    invoke-static {v0, v7}, Lcom/geely/hvac/component/SeatMassageAnimate;->bindSeatMassageAnimateRes(Lcom/geely/hvac/component/SeatMassageAnimate;Ljava/lang/String;)V

    :cond_19
    const-wide/16 v14, 0x18a

    and-long/2addr v14, v2

    cmp-long v0, v14, v4

    if-eqz v0, :cond_1a

    .line 353
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView2:Lcom/geely/hvac/component/SeatMassageAnimate;

    invoke-static {v0, v10}, Lcom/geely/hvac/component/SeatMassageAnimate;->bindMassageAnimateType(Lcom/geely/hvac/component/SeatMassageAnimate;I)V

    :cond_1a
    const-wide/16 v14, 0x184

    and-long/2addr v14, v2

    cmp-long v0, v14, v4

    if-eqz v0, :cond_1b

    .line 358
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView3:Lcom/geely/hvac/component/MassageLevel;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/geely/hvac/component/MassageLevel;->setTag(Ljava/lang/Object;)V

    .line 359
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView4:Lcom/geely/hvac/component/MassageType;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/geely/hvac/component/MassageType;->setTag(Ljava/lang/Object;)V

    :cond_1b
    and-long v10, v2, v17

    cmp-long v0, v10, v4

    if-eqz v0, :cond_1c

    .line 364
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView3:Lcom/geely/hvac/component/MassageLevel;

    invoke-static {v0, v6, v8}, Lcom/geely/hvac/component/Selector;->bind(Lcom/geely/hvac/component/Selector;ILcom/geely/hvac/component/intf/SelectorChangedListener;)V

    :cond_1c
    const-wide/16 v6, 0x194

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1d

    .line 369
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView4:Lcom/geely/hvac/component/MassageType;

    invoke-static {v0, v12}, Lcom/geely/hvac/component/MassageType;->bind(Lcom/geely/hvac/component/MassageType;I)V

    :cond_1d
    const-wide/16 v6, 0x180

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1e

    .line 374
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView4:Lcom/geely/hvac/component/MassageType;

    invoke-static {v0, v9}, Lcom/geely/hvac/component/MassageType;->bind(Lcom/geely/hvac/component/MassageType;Lcom/geely/hvac/component/intf/MassageTypeChangeListener;)V

    :cond_1e
    const-wide/16 v6, 0x1c4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    .line 379
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mboundView4:Lcom/geely/hvac/component/MassageType;

    invoke-static {v0, v13}, Lcom/geely/hvac/component/MassageType;->bind(Lcom/geely/hvac/component/MassageType;[I)V

    :cond_1f
    return-void

    :catchall_0
    move-exception v0

    .line 184
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
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

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 58
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
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

    .line 110
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->onChangeModelGetMassageTypesModelMassageDetailZone(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->onChangeModelSeatMassageRes(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->onChangeModelGetMassageTypeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->onChangeModelGetMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->onChangeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->onChangeModelGetMassageTypeModelGetMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->onChangeModelGetMassageLevelModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 86
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 90
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
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

    .line 77
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMassageSetDetailBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
