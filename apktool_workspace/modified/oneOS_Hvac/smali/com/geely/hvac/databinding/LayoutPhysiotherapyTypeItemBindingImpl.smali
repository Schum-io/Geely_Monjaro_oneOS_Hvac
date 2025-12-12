.class public Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBinding;
.source "LayoutPhysiotherapyTypeItemBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

.field private final mboundView1:Lcom/geely/hvac/component/ViewWithBackground;


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

    .line 29
    sget-object v0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
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

    const/4 v0, 0x0

    .line 32
    aget-object v3, p2, v0

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v1, -0x1

    .line 166
    iput-wide v1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    .line 36
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 37
    aget-object p1, p3, v0

    check-cast p1, Lcom/geely/hvac/component/ViewWithBackground;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

    .line 38
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 39
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/ViewWithBackground;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mboundView1:Lcom/geely/hvac/component/ViewWithBackground;

    .line 40
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->tv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewActive(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewActive",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    .line 98
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
    .locals 11

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 109
    iput-wide v2, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 115
    iget-object v5, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mView:Lcom/geely/hvac/component/PhysiotherapyTypeItem;

    const-wide/16 v6, 0x7

    and-long v8, v0, v6

    cmp-long v8, v8, v2

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v5}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;->getActive()Landroidx/databinding/ObservableBoolean;

    move-result-object v4

    .line 126
    :cond_0
    invoke-virtual {p0, v9, v4}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {v4}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v9

    :cond_1
    if-eqz v8, :cond_3

    if-eqz v9, :cond_2

    const-wide/16 v4, 0x10

    or-long/2addr v0, v4

    const-wide/16 v4, 0x40

    or-long/2addr v0, v4

    const-wide/16 v4, 0x100

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x8

    or-long/2addr v0, v4

    const-wide/16 v4, 0x20

    or-long/2addr v0, v4

    const-wide/16 v4, 0x80

    :goto_0
    or-long/2addr v0, v4

    .line 148
    :cond_3
    iget-object v4, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->tv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v9, :cond_4

    const v5, 0x7f0500b4

    goto :goto_1

    :cond_4
    const v5, 0x7f0500b5

    :goto_1
    invoke-static {v4, v5}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    const v5, 0x7f0500b3

    .line 150
    iget-object v8, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

    if-eqz v9, :cond_5

    const v10, 0x7f0500b2

    invoke-static {v8, v10}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v8

    goto :goto_2

    :cond_5
    invoke-static {v8, v5}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v8

    :goto_2
    if-eqz v9, :cond_6

    .line 152
    iget-object v5, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mboundView1:Lcom/geely/hvac/component/ViewWithBackground;

    const v9, 0x7f0500b1

    invoke-static {v5, v9}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mboundView1:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-static {v9, v5}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    :goto_3
    move v9, v5

    move v5, v4

    move v4, v9

    move v9, v8

    goto :goto_4

    :cond_7
    move v4, v9

    move v5, v4

    :goto_4
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v9}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 159
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mboundView1:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 160
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->tv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 50
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
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

    .line 90
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->onChangeViewActive(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 69
    check-cast p2, Lcom/geely/hvac/component/PhysiotherapyTypeItem;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->setView(Lcom/geely/hvac/component/PhysiotherapyTypeItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setView(Lcom/geely/hvac/component/PhysiotherapyTypeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mView:Lcom/geely/hvac/component/PhysiotherapyTypeItem;

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->mDirtyFlags:J

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 82
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBindingImpl;->notifyPropertyChanged(I)V

    .line 83
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutPhysiotherapyTypeItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
