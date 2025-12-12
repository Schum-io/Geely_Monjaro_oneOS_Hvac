.class public Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;
.super Lcom/geely/hvac/databinding/FragmentSeatMassageBinding;
.source "FragmentSeatMassageBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelMassageLevelClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView3:Lcom/geely/hvac/psd/component/PsdMassageType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    .line 32
    sget-object v0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2
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

    const/4 v0, 0x2

    .line 35
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    const/4 v1, 0x5

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/geely/hvac/databinding/FragmentSeatMassageBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/psd/component/PsdSeatMassageLevel;)V

    const-wide/16 v0, -0x1

    .line 400
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 41
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/psd/component/PsdMassageType;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView3:Lcom/geely/hvac/psd/component/PsdMassageType;

    .line 43
    invoke-virtual {p1, v0}, Lcom/geely/hvac/psd/component/PsdMassageType;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->row1RightMassage:Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetMassageLevelGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageLevelGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetMassageStateGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageStateGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    .line 109
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

.method private onChangeModelGetMassageTypeGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypeGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetMassageTypesGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypesGlyCarAreaIdSEATROW1RIGHT",
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

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

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

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

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
    .locals 38

    move-object/from16 v1, p0

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 156
    iput-wide v4, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x68

    const-wide/16 v12, 0x64

    const-wide/16 v14, 0x70

    const-wide/16 v16, 0x62

    const-wide/16 v18, 0x71

    const-wide/16 v20, 0x1000

    const/16 v22, 0x0

    const-wide/16 v23, 0x69

    const/16 v25, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v6, :cond_16

    and-long v28, v2, v18

    cmp-long v6, v28, v4

    if-eqz v6, :cond_4

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageState(I)Landroidx/databinding/ObservableBoolean;

    move-result-object v6

    .line 189
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageLevel(I)Landroidx/databinding/ObservableInt;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object/from16 v6, v25

    move-object v11, v6

    .line 191
    :goto_0
    invoke-virtual {v1, v10, v6}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 192
    invoke-virtual {v1, v9, v11}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 197
    invoke-virtual {v6}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v28

    move/from16 v10, v28

    :cond_1
    if-eqz v11, :cond_2

    .line 201
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 206
    :goto_1
    invoke-static {v10, v11}, Lcom/geely/hvac/component/SeatMassageLevel;->getLevel(ZI)I

    move-result v29

    and-long v30, v2, v14

    cmp-long v30, v30, v4

    if-eqz v30, :cond_3

    .line 210
    invoke-static {v11}, Lcom/geely/hvac/component/SeatMassageLevel;->getLevelBgAlpha(I)F

    move-result v11

    goto :goto_2

    :cond_3
    move/from16 v11, v22

    goto :goto_2

    :cond_4
    move/from16 v11, v22

    move-object/from16 v6, v25

    const/4 v10, 0x0

    const/16 v29, 0x0

    :goto_2
    and-long v30, v2, v16

    cmp-long v30, v30, v4

    if-eqz v30, :cond_6

    if-eqz v0, :cond_5

    .line 217
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageType(I)Landroidx/databinding/ObservableInt;

    move-result-object v30

    move-object/from16 v14, v30

    goto :goto_3

    :cond_5
    move-object/from16 v14, v25

    :goto_3
    const/4 v15, 0x1

    .line 219
    invoke-virtual {v1, v15, v14}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_6

    .line 224
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    and-long v32, v2, v12

    cmp-long v15, v32, v4

    if-eqz v15, :cond_8

    if-eqz v0, :cond_7

    .line 231
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageTypes(I)Landroidx/databinding/ObservableField;

    move-result-object v15

    goto :goto_5

    :cond_7
    move-object/from16 v15, v25

    :goto_5
    const/4 v12, 0x2

    .line 233
    invoke-virtual {v1, v12, v15}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_8

    .line 238
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    goto :goto_6

    :cond_8
    move-object/from16 v12, v25

    :goto_6
    and-long v34, v2, v23

    cmp-long v13, v34, v4

    if-eqz v13, :cond_12

    if-eqz v0, :cond_9

    const v13, 0x10050a00

    .line 245
    invoke-virtual {v0, v13, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v13

    goto :goto_7

    :cond_9
    move-object/from16 v13, v25

    :goto_7
    const/4 v15, 0x3

    .line 247
    invoke-virtual {v1, v15, v13}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_a

    .line 252
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    and-long v34, v2, v7

    cmp-long v15, v34, v4

    if-eqz v15, :cond_f

    if-eqz v0, :cond_b

    .line 259
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v22

    .line 261
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isPsdActiveAlpha(I)F

    move-result v34

    goto :goto_9

    :cond_b
    move/from16 v34, v22

    const/16 v22, 0x0

    :goto_9
    if-eqz v15, :cond_d

    if-eqz v22, :cond_c

    const-wide/16 v35, 0x400

    goto :goto_a

    :cond_c
    const-wide/16 v35, 0x200

    :goto_a
    or-long v2, v2, v35

    :cond_d
    if-eqz v22, :cond_e

    const/4 v15, 0x0

    goto :goto_b

    :cond_e
    const/16 v15, 0x8

    :goto_b
    move/from16 v22, v34

    goto :goto_c

    :cond_f
    const/4 v15, 0x0

    :goto_c
    if-eqz v0, :cond_10

    .line 279
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v13

    goto :goto_d

    :cond_10
    const/4 v13, 0x0

    :goto_d
    and-long v34, v2, v23

    cmp-long v34, v34, v4

    if-eqz v34, :cond_13

    if-eqz v13, :cond_11

    or-long v2, v2, v20

    goto :goto_e

    :cond_11
    const-wide/16 v34, 0x800

    or-long v2, v2, v34

    goto :goto_e

    :cond_12
    const/4 v13, 0x0

    const/4 v15, 0x0

    :cond_13
    :goto_e
    const-wide/16 v26, 0x60

    and-long v34, v2, v26

    cmp-long v34, v34, v4

    if-eqz v34, :cond_15

    if-eqz v0, :cond_15

    .line 294
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageTypeChangeListener()Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    move-result-object v25

    .line 296
    iget-object v7, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mModelMassageLevelClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;

    if-nez v7, :cond_14

    new-instance v7, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;

    invoke-direct {v7}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v7, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mModelMassageLevelClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;

    :cond_14
    invoke-virtual {v7, v0}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl$OnClickListenerImpl;

    move-result-object v7

    move-object v8, v7

    move-object/from16 v7, v25

    goto :goto_f

    :cond_15
    move-object/from16 v7, v25

    move-object v8, v7

    :goto_f
    move/from16 v37, v29

    move-object/from16 v25, v6

    move/from16 v6, v22

    goto :goto_10

    :cond_16
    move/from16 v6, v22

    move v11, v6

    move-object/from16 v7, v25

    move-object v8, v7

    move-object v12, v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v37, 0x0

    :goto_10
    and-long v20, v2, v20

    cmp-long v20, v20, v4

    if-eqz v20, :cond_18

    if-eqz v0, :cond_17

    .line 306
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageState(I)Landroidx/databinding/ObservableBoolean;

    move-result-object v25

    :cond_17
    move-object/from16 v0, v25

    const/4 v9, 0x0

    .line 308
    invoke-virtual {v1, v9, v0}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_19

    .line 313
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_11

    :cond_18
    const/4 v9, 0x0

    :cond_19
    :goto_11
    and-long v21, v2, v23

    cmp-long v0, v21, v4

    if-eqz v0, :cond_1e

    if-eqz v13, :cond_1a

    goto :goto_12

    :cond_1a
    move v10, v9

    :goto_12
    if-eqz v0, :cond_1c

    if-eqz v10, :cond_1b

    const-wide/16 v21, 0x100

    goto :goto_13

    :cond_1b
    const-wide/16 v21, 0x80

    :goto_13
    or-long v2, v2, v21

    :cond_1c
    if-eqz v10, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v9, 0x8

    :cond_1e
    :goto_14
    move v10, v9

    const-wide/16 v21, 0x70

    and-long v21, v2, v21

    cmp-long v0, v21, v4

    const/16 v9, 0xb

    if-eqz v0, :cond_1f

    .line 337
    invoke-static {}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->getBuildSdkInt()I

    move-result v0

    if-lt v0, v9, :cond_1f

    .line 339
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v11}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setAlpha(F)V

    :cond_1f
    and-long v21, v2, v23

    cmp-long v0, v21, v4

    if-eqz v0, :cond_20

    .line 345
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v10}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_20
    const-wide/16 v10, 0x40

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_21

    .line 350
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView3:Lcom/geely/hvac/psd/component/PsdMassageType;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/geely/hvac/psd/component/PsdMassageType;->setTag(Ljava/lang/Object;)V

    .line 351
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->row1RightMassage:Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;->setTag(Ljava/lang/Object;)V

    :cond_21
    and-long v10, v2, v16

    cmp-long v0, v10, v4

    if-eqz v0, :cond_22

    .line 356
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView3:Lcom/geely/hvac/psd/component/PsdMassageType;

    invoke-static {v0, v14}, Lcom/geely/hvac/psd/component/PsdMassageType;->bind(Lcom/geely/hvac/psd/component/PsdMassageType;I)V

    :cond_22
    const-wide/16 v10, 0x60

    and-long/2addr v10, v2

    cmp-long v0, v10, v4

    if-eqz v0, :cond_23

    .line 361
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView3:Lcom/geely/hvac/psd/component/PsdMassageType;

    invoke-static {v0, v7}, Lcom/geely/hvac/psd/component/PsdMassageType;->bind(Lcom/geely/hvac/psd/component/PsdMassageType;Lcom/geely/hvac/component/intf/MassageTypeChangeListener;)V

    .line 362
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->row1RightMassage:Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    invoke-virtual {v0, v8}, Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_23
    const-wide/16 v7, 0x64

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_24

    .line 367
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mboundView3:Lcom/geely/hvac/psd/component/PsdMassageType;

    invoke-static {v0, v12}, Lcom/geely/hvac/psd/component/PsdMassageType;->bind(Lcom/geely/hvac/psd/component/PsdMassageType;[I)V

    :cond_24
    const-wide/16 v7, 0x68

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_26

    .line 371
    invoke-static {}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->getBuildSdkInt()I

    move-result v0

    if-lt v0, v9, :cond_25

    .line 373
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->row1RightMassage:Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    invoke-virtual {v0, v6}, Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;->setAlpha(F)V

    .line 377
    :cond_25
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->row1RightMassage:Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    invoke-static {v0, v13}, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;Z)V

    .line 378
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->row1RightMassage:Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    invoke-virtual {v0, v15}, Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;->setVisibility(I)V

    :cond_26
    and-long v2, v2, v18

    cmp-long v0, v2, v4

    if-eqz v0, :cond_27

    .line 383
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->row1RightMassage:Lcom/geely/hvac/psd/component/PsdSeatMassageLevel;

    move/from16 v2, v37

    invoke-static {v0, v2}, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;I)V

    :cond_27
    return-void

    :catchall_0
    move-exception v0

    .line 157
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 53
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

    .line 101
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->onChangeModelGetMassageLevelGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 99
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 97
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->onChangeModelGetMassageTypesGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 95
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->onChangeModelGetMassageTypeGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 93
    :cond_4
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->onChangeModelGetMassageStateGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 81
    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->mDirtyFlags:J

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 85
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->notifyPropertyChanged(I)V

    .line 86
    invoke-super {p0}, Lcom/geely/hvac/databinding/FragmentSeatMassageBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 84
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

    .line 72
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatMassageBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
