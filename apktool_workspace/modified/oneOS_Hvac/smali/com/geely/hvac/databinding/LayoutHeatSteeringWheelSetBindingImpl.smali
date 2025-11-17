.class public Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBinding;
.source "LayoutHeatSteeringWheelSetBindingImpl.java"


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

    sput-object v0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c1

    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090319

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

    .line 29
    sget-object v0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x2

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/component/Switch;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/Switch;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v0, -0x1

    .line 152
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 37
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 38
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/Switch;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelSteeringWheelHeatAutoState(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSteeringWheelHeatAutoState",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    .line 96
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

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 107
    iput-wide v2, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v4, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v5, 0x7

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSteeringWheelHeatAutoState()Landroidx/databinding/ObservableBoolean;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v9

    .line 122
    :goto_0
    invoke-virtual {p0, v8, v10}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_1

    .line 127
    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v8

    :cond_1
    and-long v10, v0, v6

    cmp-long v10, v10, v2

    if-eqz v10, :cond_2

    if-eqz v4, :cond_2

    .line 133
    invoke-virtual {v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSteeringWheelHeatAutoListener()Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    move-result-object v9

    :cond_2
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-static {v0, v9}, Lcom/geely/hvac/component/Switch;->bind(Lcom/geely/hvac/component/Switch;Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 146
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-static {v0, v8}, Lcom/geely/hvac/component/Switch;->bind(Lcom/geely/hvac/component/Switch;Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 108
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
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 48
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->requestRebind()V

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

    .line 88
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->onChangeModelSteeringWheelHeatAutoState(Landroidx/databinding/ObservableBoolean;I)Z

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
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 80
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->notifyPropertyChanged(I)V

    .line 81
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBinding;->requestRebind()V

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

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutHeatSteeringWheelSetBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
