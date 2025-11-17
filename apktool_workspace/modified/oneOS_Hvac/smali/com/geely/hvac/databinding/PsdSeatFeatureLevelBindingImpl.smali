.class public Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;
.super Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBinding;
.source "PsdSeatFeatureLevelBindingImpl.java"


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
    sget-object v0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
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

    const/4 v0, 0x0

    .line 28
    aget-object v3, p2, v0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v7, p3

    check-cast v7, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/airbnb/lottie/LottieAnimationView;)V

    const-wide/16 v0, -0x1

    .line 155
    iput-wide v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    .line 33
    iget-object p1, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->disableBg:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->disableImg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewLevelEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewLevelEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    .line 92
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
    .locals 12

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 103
    iput-wide v2, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v4, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mView:Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;

    const/4 v5, 0x0

    const-wide/16 v6, 0x7

    and-long v8, v0, v6

    cmp-long v8, v8, v2

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    if-eqz v4, :cond_0

    .line 117
    invoke-virtual {v4}, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;->getLevelEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v5

    .line 119
    :cond_0
    invoke-virtual {p0, v9, v5}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_1

    .line 124
    invoke-virtual {v5}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v9

    :goto_0
    if-eqz v8, :cond_3

    if-eqz v4, :cond_2

    const-wide/16 v10, 0x10

    or-long/2addr v0, v10

    const-wide/16 v10, 0x40

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0x8

    or-long/2addr v0, v10

    const-wide/16 v10, 0x20

    :goto_1
    or-long/2addr v0, v10

    :cond_3
    const/16 v5, 0x8

    if-eqz v4, :cond_4

    move v8, v9

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    if-eqz v4, :cond_5

    move v9, v5

    :cond_5
    move v4, v9

    move v9, v8

    goto :goto_3

    :cond_6
    move v4, v9

    :goto_3
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 147
    iget-object v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->disableBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v9}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->disableImg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v4}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->lottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    monitor-exit p0

    return v0

    .line 55
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

    .line 43
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 44
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 45
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

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 84
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->onChangeViewLevelEnable(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 63
    check-cast p2, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->setView(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setView(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mView:Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->mDirtyFlags:J

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 76
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBindingImpl;->notifyPropertyChanged(I)V

    .line 77
    invoke-super {p0}, Lcom/geely/hvac/databinding/PsdSeatFeatureLevelBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 75
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
