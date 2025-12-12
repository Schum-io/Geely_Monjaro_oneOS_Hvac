.class public Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutAcSetBinding;
.source "LayoutAcSetBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c1

    const/4 v2, 0x3

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

    .line 28
    sget-object v0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8
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

    const/4 v0, 0x1

    .line 31
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/hvac/component/AcSetItem;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/geely/hvac/component/AcSetItem;

    const/4 v4, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/AcSetItem;Landroid/widget/LinearLayout;Lcom/geely/hvac/component/AcSetItem;)V

    const-wide/16 v0, -0x1

    .line 274
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 36
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->comfortClose:Lcom/geely/hvac/component/AcSetItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/AcSetItem;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->ionsClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/AcSetItem;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelAutoCloseWindowRemindState(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelAutoCloseWindowRemindState",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 120
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

.method private onChangeModelAutoCloseWindowRemindSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelAutoCloseWindowRemindSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 102
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

.method private onChangeModelGetIonsCloseWindowRemindState(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetIonsCloseWindowRemindState",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 129
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

.method private onChangeModelIonsSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelIonsSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 111
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
    .locals 25

    move-object/from16 v1, p0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 140
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x3f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x38

    const-wide/16 v9, 0x32

    const-wide/16 v11, 0x34

    const-wide/16 v13, 0x31

    const/4 v15, 0x0

    if-eqz v6, :cond_10

    and-long v17, v2, v13

    cmp-long v6, v17, v4

    if-eqz v6, :cond_6

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getAutoCloseWindowRemindSupported()Landroidx/databinding/ObservableInt;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 167
    :goto_0
    invoke-virtual {v1, v15, v13}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_1

    .line 172
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_1

    :cond_1
    move v13, v15

    :goto_1
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v14

    .line 180
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v13

    goto :goto_2

    :cond_2
    move v13, v15

    move v14, v13

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v13, :cond_3

    const-wide/16 v19, 0x80

    goto :goto_3

    :cond_3
    const-wide/16 v19, 0x40

    :goto_3
    or-long v2, v2, v19

    :cond_4
    if-eqz v13, :cond_5

    move v6, v15

    goto :goto_4

    :cond_5
    const/16 v6, 0x8

    goto :goto_4

    :cond_6
    move v6, v15

    move v14, v6

    :goto_4
    and-long v19, v2, v9

    cmp-long v13, v19, v4

    if-eqz v13, :cond_9

    if-eqz v0, :cond_7

    .line 199
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIonsSupported()Landroidx/databinding/ObservableInt;

    move-result-object v13

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    const/4 v15, 0x1

    .line 201
    invoke-virtual {v1, v15, v13}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_8

    .line 206
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    if-eqz v0, :cond_9

    .line 212
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v13

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    and-long v20, v2, v11

    cmp-long v15, v20, v4

    if-eqz v15, :cond_c

    if-eqz v0, :cond_a

    .line 219
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getAutoCloseWindowRemindState()Landroidx/databinding/ObservableBoolean;

    move-result-object v15

    .line 221
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getAutoCloseWindowRemindListener()Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    move-result-object v20

    goto :goto_8

    :cond_a
    const/4 v15, 0x0

    const/16 v20, 0x0

    :goto_8
    const/4 v9, 0x2

    .line 223
    invoke-virtual {v1, v9, v15}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_b

    .line 228
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    :cond_c
    const/4 v9, 0x0

    const/16 v20, 0x0

    :goto_9
    and-long v22, v2, v7

    cmp-long v10, v22, v4

    if-eqz v10, :cond_f

    if-eqz v0, :cond_d

    .line 235
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIonsCloseWindowRemindState()Landroidx/databinding/ObservableBoolean;

    move-result-object v15

    .line 237
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getIonsCloseWindowRemindListener()Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_a

    :cond_d
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_a
    const/4 v0, 0x3

    .line 239
    invoke-virtual {v1, v0, v15}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_e

    .line 244
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v15

    move-object/from16 v10, v16

    move-object/from16 v0, v20

    const-wide/16 v16, 0x31

    move/from16 v24, v15

    move v15, v6

    move/from16 v6, v24

    goto :goto_c

    :cond_e
    move v15, v6

    move-object/from16 v10, v16

    move-object/from16 v0, v20

    const/4 v6, 0x0

    goto :goto_b

    :cond_f
    move v15, v6

    move-object/from16 v0, v20

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_b
    const-wide/16 v16, 0x31

    goto :goto_c

    :cond_10
    move-wide/from16 v16, v13

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_c
    and-long v16, v2, v16

    cmp-long v16, v16, v4

    if-eqz v16, :cond_11

    .line 252
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->comfortClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {v7, v15}, Lcom/geely/hvac/component/AcSetItem;->setVisibility(I)V

    .line 253
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->comfortClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-static {v7, v14}, Lcom/geely/hvac/component/AcSetItem;->bind(Lcom/geely/hvac/component/AcSetItem;Z)V

    :cond_11
    and-long v7, v2, v11

    cmp-long v7, v7, v4

    if-eqz v7, :cond_12

    .line 258
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->comfortClose:Lcom/geely/hvac/component/AcSetItem;

    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->comfortClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {v8}, Lcom/geely/hvac/component/AcSetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f100045

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->comfortClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {v11}, Lcom/geely/hvac/component/AcSetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f100046

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v8, v11, v9, v0}, Lcom/geely/hvac/component/AcSetItem;->bind(Lcom/geely/hvac/component/AcSetItem;Ljava/lang/String;Ljava/lang/String;ZLcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V

    :cond_12
    const-wide/16 v7, 0x32

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_13

    .line 263
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->ionsClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-static {v0, v13}, Lcom/geely/hvac/component/AcSetItem;->bind(Lcom/geely/hvac/component/AcSetItem;Z)V

    :cond_13
    const-wide/16 v7, 0x38

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 268
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->ionsClose:Lcom/geely/hvac/component/AcSetItem;

    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->ionsClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {v2}, Lcom/geely/hvac/component/AcSetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->ionsClose:Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {v3}, Lcom/geely/hvac/component/AcSetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v6, v10}, Lcom/geely/hvac/component/AcSetItem;->bind(Lcom/geely/hvac/component/AcSetItem;Ljava/lang/String;Ljava/lang/String;ZLcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    .line 141
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57
    monitor-exit p0

    return v0

    .line 59
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

    .line 47
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 48
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 49
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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->onChangeModelGetIonsCloseWindowRemindState(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 92
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->onChangeModelAutoCloseWindowRemindState(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 90
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->onChangeModelIonsSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 88
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->onChangeModelAutoCloseWindowRemindSupported(Landroidx/databinding/ObservableInt;I)Z

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

    .line 76
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 80
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->notifyPropertyChanged(I)V

    .line 81
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutAcSetBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 79
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

    .line 67
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAcSetBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
