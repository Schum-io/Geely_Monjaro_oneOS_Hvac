.class public Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;
.source "LayoutSeatHeatWindStateBindingImpl.java"


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
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

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

    .line 28
    aget-object v3, p2, v0

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    move-object v6, p3

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiImageView;)V

    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->mDirtyFlags:J

    .line 32
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->bg:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->img:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 73
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 75
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->mDirtyFlags:J

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 51
    monitor-exit p0

    return v0

    .line 53
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

    .line 41
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 42
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->mDirtyFlags:J

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 43
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

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
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

    const/4 p1, 0x1

    return p1
.end method
