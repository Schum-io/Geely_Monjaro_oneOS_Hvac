.class public Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;
.source "LayoutTemperatureToastBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900bb

    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09035f

    const/4 v2, 0x3

    .line 18
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

    .line 27
    sget-object v0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9
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

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/geely/hvac/component/Temperature;

    const/4 v0, 0x3

    aget-object p3, p3, v0

    move-object v8, p3

    check-cast v8, Lcom/geely/hvac/util/TemperatureToastRoot;

    const/4 v4, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/ConstraintLayoutWithBg;Lcom/geely/hvac/component/Temperature;Lcom/geely/hvac/util/TemperatureToastRoot;)V

    const-wide/16 v0, -0x1

    .line 297
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 36
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->root:Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/ConstraintLayoutWithBg;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->temperature:Lcom/geely/hvac/component/Temperature;

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/Temperature;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelFrontLeftTemperature(Landroidx/databinding/ObservableFloat;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFrontLeftTemperature",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelFrontLeftTemperatureSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFrontLeftTemperatureSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 131
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

.method private onChangeModelHvacEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelHvacEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 104
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

.method private onChangeModelTemperatureMax(Landroidx/databinding/ObservableFloat;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelTemperatureMax",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 140
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

.method private onChangeModelTemperatureMin(Landroidx/databinding/ObservableFloat;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelTemperatureMin",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelTemperatureStep(Landroidx/databinding/ObservableFloat;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelTemperatureStep",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 149
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
    .locals 23

    move-object/from16 v1, p0

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 160
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0xf4

    const-wide/16 v9, 0xc2

    const-wide/16 v11, 0xc9

    const-wide/16 v13, 0x200

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v6, :cond_c

    and-long v17, v2, v11

    cmp-long v6, v17, v4

    if-eqz v6, :cond_3

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getHvacEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v17

    move-object/from16 v11, v17

    goto :goto_0

    :cond_0
    move-object/from16 v11, v16

    .line 188
    :goto_0
    invoke-virtual {v1, v15, v11}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_1

    .line 193
    invoke-virtual {v11}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v15

    :goto_1
    if-eqz v6, :cond_4

    if-eqz v11, :cond_2

    or-long/2addr v2, v13

    goto :goto_2

    :cond_2
    const-wide/16 v19, 0x100

    or-long v2, v2, v19

    goto :goto_2

    :cond_3
    move v11, v15

    :cond_4
    :goto_2
    and-long v19, v2, v9

    cmp-long v6, v19, v4

    if-eqz v6, :cond_6

    if-eqz v0, :cond_5

    .line 208
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFrontLeftTemperature()Landroidx/databinding/ObservableFloat;

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object/from16 v6, v16

    :goto_3
    const/4 v12, 0x1

    .line 210
    invoke-virtual {v1, v12, v6}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_6

    .line 215
    invoke-virtual {v6}, Landroidx/databinding/ObservableFloat;->get()F

    move-result v6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    and-long v19, v2, v7

    cmp-long v12, v19, v4

    if-eqz v12, :cond_b

    if-eqz v0, :cond_7

    .line 222
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getTemperatureMin()Landroidx/databinding/ObservableFloat;

    move-result-object v12

    .line 224
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getTemperatureMax()Landroidx/databinding/ObservableFloat;

    move-result-object v19

    .line 226
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFrontLeftTemperatureChangeListener()Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;

    move-result-object v20

    .line 228
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getTemperatureStep()Landroidx/databinding/ObservableFloat;

    move-result-object v21

    move-object/from16 v15, v19

    move-object/from16 v7, v21

    goto :goto_5

    :cond_7
    move-object/from16 v7, v16

    move-object v12, v7

    move-object v15, v12

    move-object/from16 v20, v15

    :goto_5
    const/4 v8, 0x2

    .line 230
    invoke-virtual {v1, v8, v12}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v8, 0x4

    .line 231
    invoke-virtual {v1, v8, v15}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v8, 0x5

    .line 232
    invoke-virtual {v1, v8, v7}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_8

    .line 237
    invoke-virtual {v12}, Landroidx/databinding/ObservableFloat;->get()F

    move-result v8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-eqz v15, :cond_9

    .line 241
    invoke-virtual {v15}, Landroidx/databinding/ObservableFloat;->get()F

    move-result v12

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    if-eqz v7, :cond_a

    .line 245
    invoke-virtual {v7}, Landroidx/databinding/ObservableFloat;->get()F

    move-result v15

    move-object/from16 v7, v20

    move/from16 v22, v15

    move v15, v6

    move/from16 v6, v22

    goto :goto_8

    :cond_a
    move v15, v6

    move-object/from16 v7, v20

    const/4 v6, 0x0

    goto :goto_8

    :cond_b
    move v15, v6

    move-object/from16 v7, v16

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v7, v16

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_8
    and-long/2addr v13, v2

    cmp-long v13, v13, v4

    if-eqz v13, :cond_f

    if-eqz v0, :cond_d

    .line 255
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFrontLeftTemperatureSupport()Landroidx/databinding/ObservableInt;

    move-result-object v16

    :cond_d
    move-object/from16 v13, v16

    const/4 v14, 0x3

    .line 257
    invoke-virtual {v1, v14, v13}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_e

    .line 262
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_9

    :cond_e
    const/4 v13, 0x0

    :goto_9
    if-eqz v0, :cond_f

    .line 268
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    :goto_a
    const-wide/16 v13, 0xc9

    and-long/2addr v13, v2

    cmp-long v13, v13, v4

    if-eqz v13, :cond_10

    if-eqz v11, :cond_10

    goto :goto_b

    :cond_10
    const/4 v0, 0x0

    :goto_b
    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_11

    .line 281
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->temperature:Lcom/geely/hvac/component/Temperature;

    invoke-static {v9, v15}, Lcom/geely/hvac/component/Temperature;->bindTemperature(Lcom/geely/hvac/component/Temperature;F)V

    :cond_11
    if-eqz v13, :cond_12

    .line 286
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->temperature:Lcom/geely/hvac/component/Temperature;

    invoke-static {v9, v0}, Lcom/geely/hvac/component/Temperature;->bindEnable(Lcom/geely/hvac/component/Temperature;Z)V

    :cond_12
    const-wide/16 v9, 0xf4

    and-long/2addr v2, v9

    cmp-long v0, v2, v4

    if-eqz v0, :cond_13

    .line 291
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->temperature:Lcom/geely/hvac/component/Temperature;

    invoke-static {v0, v12, v8, v6, v7}, Lcom/geely/hvac/component/Temperature;->bind(Lcom/geely/hvac/component/Temperature;FFFLcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;)V

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x80

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
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

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableFloat;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->onChangeModelTemperatureStep(Landroidx/databinding/ObservableFloat;I)Z

    move-result p1

    return p1

    .line 94
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableFloat;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->onChangeModelTemperatureMax(Landroidx/databinding/ObservableFloat;I)Z

    move-result p1

    return p1

    .line 92
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->onChangeModelFrontLeftTemperatureSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 90
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableFloat;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->onChangeModelTemperatureMin(Landroidx/databinding/ObservableFloat;I)Z

    move-result p1

    return p1

    .line 88
    :cond_4
    check-cast p2, Landroidx/databinding/ObservableFloat;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->onChangeModelFrontLeftTemperature(Landroidx/databinding/ObservableFloat;I)Z

    move-result p1

    return p1

    .line 86
    :cond_5
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->onChangeModelHvacEnable(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 74
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->notifyPropertyChanged(I)V

    .line 79
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 77
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

    .line 65
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
