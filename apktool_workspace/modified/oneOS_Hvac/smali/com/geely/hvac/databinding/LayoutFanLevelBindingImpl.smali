.class public Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
.source "LayoutFanLevelBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


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

    .line 25
    sget-object v0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10
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

    .line 28
    aget-object v3, p2, v0

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiImageView;

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/geely/hvac/component/ManualFanLevel;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v9, p3

    check-cast v9, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/airbnb/lottie/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ManualFanLevel;Lcom/airbnb/lottie/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;)V

    const-wide/16 v0, -0x1

    .line 218
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    .line 35
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->add:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->addDisable:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->manualFanLevel:Lcom/geely/hvac/component/ManualFanLevel;

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/ManualFanLevel;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->reduce:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->reduceDisable:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewCurrentLevel(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewCurrentLevel",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    .line 100
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

.method private onChangeViewEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

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

.method private onChangeViewMaxFanLevel(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewMaxFanLevel",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 129
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mView:Lcom/geely/hvac/component/FanLevel;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x1a

    const-wide/16 v9, 0x1c

    const-wide/16 v11, 0x18

    const-wide/16 v13, 0x19

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v6, :cond_7

    and-long v17, v2, v13

    cmp-long v6, v17, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/geely/hvac/component/FanLevel;->getCurrentLevel()Landroidx/databinding/ObservableInt;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v6, v16

    .line 149
    :goto_0
    invoke-virtual {v1, v15, v6}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 154
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v15

    :goto_1
    and-long v17, v2, v11

    cmp-long v17, v17, v4

    if-eqz v17, :cond_2

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/geely/hvac/component/FanLevel;->getListener()Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;

    move-result-object v17

    goto :goto_2

    :cond_2
    move-object/from16 v17, v16

    :goto_2
    and-long v18, v2, v7

    cmp-long v18, v18, v4

    if-eqz v18, :cond_4

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {v0}, Lcom/geely/hvac/component/FanLevel;->getMaxFanLevel()Landroidx/databinding/ObservableInt;

    move-result-object v18

    move-object/from16 v15, v18

    goto :goto_3

    :cond_3
    move-object/from16 v15, v16

    :goto_3
    const/4 v7, 0x1

    .line 170
    invoke-virtual {v1, v7, v15}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_4

    .line 175
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    and-long v20, v2, v9

    cmp-long v8, v20, v4

    if-eqz v8, :cond_6

    if-eqz v0, :cond_5

    .line 182
    invoke-virtual {v0}, Lcom/geely/hvac/component/FanLevel;->getEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v16

    :cond_5
    move-object/from16 v0, v16

    const/4 v8, 0x2

    .line 184
    invoke-virtual {v1, v8, v0}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_6

    .line 189
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v15

    move v0, v15

    move v15, v6

    move-object/from16 v6, v17

    goto :goto_5

    :cond_6
    move v15, v6

    move-object/from16 v6, v17

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v6, v16

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_5
    and-long/2addr v13, v2

    cmp-long v8, v13, v4

    if-eqz v8, :cond_8

    .line 197
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->manualFanLevel:Lcom/geely/hvac/component/ManualFanLevel;

    invoke-static {v8, v15}, Lcom/geely/hvac/component/ManualFanLevel;->bindCurrentLevel(Lcom/geely/hvac/component/ManualFanLevel;I)V

    :cond_8
    and-long/2addr v11, v2

    cmp-long v8, v11, v4

    if-eqz v8, :cond_9

    .line 202
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->manualFanLevel:Lcom/geely/hvac/component/ManualFanLevel;

    invoke-static {v8, v6}, Lcom/geely/hvac/component/ManualFanLevel;->bindFanLevelChangeListener(Lcom/geely/hvac/component/ManualFanLevel;Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;)V

    :cond_9
    and-long v8, v2, v9

    cmp-long v6, v8, v4

    if-eqz v6, :cond_a

    .line 207
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->manualFanLevel:Lcom/geely/hvac/component/ManualFanLevel;

    invoke-static {v6, v0}, Lcom/geely/hvac/component/ManualFanLevel;->bindFanLevelEnable(Lcom/geely/hvac/component/ManualFanLevel;Z)V

    :cond_a
    const-wide/16 v8, 0x1a

    and-long/2addr v2, v8

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    .line 212
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->manualFanLevel:Lcom/geely/hvac/component/ManualFanLevel;

    invoke-static {v0, v7}, Lcom/geely/hvac/component/ManualFanLevel;->bindMaxLevel(Lcom/geely/hvac/component/ManualFanLevel;I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 130
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
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 48
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->requestRebind()V

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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->onChangeViewEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 90
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->onChangeViewMaxFanLevel(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 88
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->onChangeViewCurrentLevel(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1
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

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    .line 67
    check-cast p2, Lcom/geely/hvac/component/FanLevel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->setView(Lcom/geely/hvac/component/FanLevel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setView(Lcom/geely/hvac/component/FanLevel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mView:Lcom/geely/hvac/component/FanLevel;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 80
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutFanLevelBindingImpl;->notifyPropertyChanged(I)V

    .line 81
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->requestRebind()V

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
