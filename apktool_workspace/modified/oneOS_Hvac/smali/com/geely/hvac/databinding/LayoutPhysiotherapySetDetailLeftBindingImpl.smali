.class public Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;
.source "LayoutPhysiotherapySetDetailLeftBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView2:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView4:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

.field private final mboundView5:Lcom/geely/hvac/component/PhysiotherapyType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900af

    const/4 v2, 0x6

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

    .line 36
    sget-object v0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x6

    .line 39
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v4, 0x5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/geely/toolchain/hmi/view/HmiImageView;)V

    const-wide/16 v0, -0x1

    .line 338
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 46
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 47
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 48
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 49
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    .line 50
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 51
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/PhysiotherapyType;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView5:Lcom/geely/hvac/component/PhysiotherapyType;

    .line 52
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/PhysiotherapyType;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->seatMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetPhysiotherapyDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetPhysiotherapyDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetPhysiotherapyTypeModelPhysiotherapyDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetPhysiotherapyTypeModelPhysiotherapyDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetPhysiotherapyTypesModelPhysiotherapyDetailZone(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetPhysiotherapyTypesModelPhysiotherapyDetailZone",
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

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelPhysiotherapyDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelPhysiotherapyDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelSeatPhysiotherapyRes(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSeatPhysiotherapyRes",
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

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 27

    move-object/from16 v1, p0

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 165
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v9, 0x6a

    const-wide/16 v13, 0x60

    const-wide/16 v15, 0x61

    const/16 v17, 0x0

    const/4 v11, 0x0

    if-eqz v6, :cond_16

    and-long v18, v2, v15

    cmp-long v6, v18, v4

    const/4 v12, 0x4

    const/4 v7, 0x1

    if-eqz v6, :cond_a

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyDetailZone()Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v8, v17

    .line 194
    :goto_0
    invoke-virtual {v1, v11, v8}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 199
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v11

    :goto_1
    if-ne v8, v12, :cond_2

    move/from16 v20, v7

    goto :goto_2

    :cond_2
    move/from16 v20, v11

    :goto_2
    if-ne v8, v7, :cond_3

    move v8, v7

    goto :goto_3

    :cond_3
    move v8, v11

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v20, :cond_4

    const-wide/16 v21, 0x400

    goto :goto_4

    :cond_4
    const-wide/16 v21, 0x200

    :goto_4
    or-long v2, v2, v21

    :cond_5
    and-long v21, v2, v15

    cmp-long v6, v21, v4

    if-eqz v6, :cond_7

    if-eqz v8, :cond_6

    const-wide/16 v21, 0x100

    or-long v2, v2, v21

    const-wide/16 v21, 0x1000

    goto :goto_5

    :cond_6
    const-wide/16 v21, 0x80

    or-long v2, v2, v21

    const-wide/16 v21, 0x800

    :goto_5
    or-long v2, v2, v21

    :cond_7
    const/16 v6, 0x8

    if-eqz v20, :cond_8

    move/from16 v20, v11

    goto :goto_6

    :cond_8
    move/from16 v20, v6

    :goto_6
    if-eqz v8, :cond_9

    const v21, 0x7f0d005a

    goto :goto_7

    :cond_9
    const v21, 0x7f0d005b

    :goto_7
    if-eqz v8, :cond_b

    move v6, v11

    goto :goto_8

    :cond_a
    move v6, v11

    move/from16 v20, v6

    move/from16 v21, v20

    :cond_b
    :goto_8
    and-long v22, v2, v13

    cmp-long v8, v22, v4

    if-eqz v8, :cond_c

    if-eqz v0, :cond_c

    .line 238
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyTypeChangeListener()Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

    move-result-object v8

    goto :goto_9

    :cond_c
    move-object/from16 v8, v17

    :goto_9
    const-wide/16 v22, 0x7a

    and-long v22, v2, v22

    cmp-long v22, v22, v4

    if-eqz v22, :cond_13

    if-eqz v0, :cond_d

    .line 245
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyDetailZone()Landroidx/databinding/ObservableInt;

    move-result-object v22

    move-object/from16 v11, v22

    goto :goto_a

    :cond_d
    move-object/from16 v11, v17

    .line 247
    :goto_a
    invoke-virtual {v1, v7, v11}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_e

    .line 252
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    :goto_b
    and-long v23, v2, v9

    cmp-long v11, v23, v4

    if-eqz v11, :cond_10

    if-eqz v0, :cond_f

    .line 259
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyType(I)Landroidx/databinding/ObservableInt;

    move-result-object v11

    goto :goto_c

    :cond_f
    move-object/from16 v11, v17

    :goto_c
    const/4 v13, 0x3

    .line 261
    invoke-virtual {v1, v13, v11}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_10

    .line 266
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_d

    :cond_10
    const/4 v11, 0x0

    :goto_d
    const-wide/16 v13, 0x72

    and-long v25, v2, v13

    cmp-long v13, v25, v4

    if-eqz v13, :cond_12

    if-eqz v0, :cond_11

    .line 273
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyTypes(I)Landroidx/databinding/ObservableField;

    move-result-object v13

    goto :goto_e

    :cond_11
    move-object/from16 v13, v17

    .line 275
    :goto_e
    invoke-virtual {v1, v12, v13}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_12

    .line 280
    invoke-virtual {v13}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    goto :goto_f

    :cond_12
    move-object/from16 v12, v17

    goto :goto_f

    :cond_13
    move-object/from16 v12, v17

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_f
    const-wide/16 v13, 0x64

    and-long v25, v2, v13

    cmp-long v13, v25, v4

    if-eqz v13, :cond_15

    if-eqz v0, :cond_14

    .line 288
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatPhysiotherapyRes()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_10

    :cond_14
    move-object/from16 v0, v17

    :goto_10
    const/4 v13, 0x2

    .line 290
    invoke-virtual {v1, v13, v0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_15

    .line 295
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    :cond_15
    move-object v13, v8

    move v8, v11

    move-object v14, v12

    move-object/from16 v12, v17

    move/from16 v0, v20

    move v11, v6

    move/from16 v6, v21

    goto :goto_11

    :cond_16
    move-object/from16 v12, v17

    move-object v13, v12

    move-object v14, v13

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_11
    and-long/2addr v15, v2

    cmp-long v15, v15, v4

    if-eqz v15, :cond_17

    .line 303
    iget-object v15, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v15, v11}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 304
    iget-object v11, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v11, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 305
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->seatMode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v0, v6}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    :cond_17
    const-wide/16 v15, 0x62

    and-long/2addr v15, v2

    cmp-long v0, v15, v4

    if-eqz v0, :cond_18

    .line 310
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    invoke-static {v0, v7}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->bindSeatMassageAnimateLeftOrRight(Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;I)V

    .line 311
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView5:Lcom/geely/hvac/component/PhysiotherapyType;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/geely/hvac/component/PhysiotherapyType;->setTag(Ljava/lang/Object;)V

    :cond_18
    const-wide/16 v6, 0x64

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_19

    .line 316
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    invoke-static {v0, v12}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->bindSeatPhysiotherapyAnimateRes(Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;Ljava/lang/String;)V

    :cond_19
    and-long v6, v2, v9

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1a

    .line 321
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    invoke-static {v0, v8}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->bindPhysiotherapyAnimateType(Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;I)V

    .line 322
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView5:Lcom/geely/hvac/component/PhysiotherapyType;

    invoke-static {v0, v8}, Lcom/geely/hvac/component/PhysiotherapyType;->bind(Lcom/geely/hvac/component/PhysiotherapyType;I)V

    :cond_1a
    const-wide/16 v6, 0x60

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1b

    .line 327
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView5:Lcom/geely/hvac/component/PhysiotherapyType;

    invoke-static {v0, v13}, Lcom/geely/hvac/component/PhysiotherapyType;->bind(Lcom/geely/hvac/component/PhysiotherapyType;Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;)V

    :cond_1b
    const-wide/16 v6, 0x72

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    .line 332
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mboundView5:Lcom/geely/hvac/component/PhysiotherapyType;

    invoke-static {v0, v14}, Lcom/geely/hvac/component/PhysiotherapyType;->bind(Lcom/geely/hvac/component/PhysiotherapyType;[I)V

    :cond_1c
    return-void

    :catchall_0
    move-exception v0

    .line 166
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 71
    monitor-exit p0

    return v0

    .line 73
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

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 62
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
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

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->onChangeModelGetPhysiotherapyTypesModelPhysiotherapyDetailZone(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 108
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->onChangeModelGetPhysiotherapyTypeModelPhysiotherapyDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 106
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->onChangeModelSeatPhysiotherapyRes(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 104
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->onChangeModelPhysiotherapyDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 102
    :cond_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->onChangeModelGetPhysiotherapyDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1
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

    .line 90
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 94
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
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

    .line 81
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutPhysiotherapySetDetailLeftBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
