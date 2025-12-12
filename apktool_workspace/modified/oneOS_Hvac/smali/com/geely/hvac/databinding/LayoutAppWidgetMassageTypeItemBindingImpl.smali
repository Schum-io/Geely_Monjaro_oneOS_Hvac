.class public Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;
.source "LayoutAppWidgetMassageTypeItemBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Lcom/geely/hvac/component/ViewWithBackground;


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

    .line 27
    sget-object v0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

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

    .line 30
    aget-object v3, p2, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 150
    iput-wide v1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    .line 34
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 35
    aget-object p1, p3, v0

    check-cast p1, Lcom/geely/hvac/component/ViewWithBackground;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

    .line 36
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->tv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->invalidateAll()V

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

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    .line 94
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
    .locals 10

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v4, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mView:Lcom/geely/hvac/component/AppWidgetMassageTypeItem;

    const/4 v5, 0x0

    const-wide/16 v6, 0x7

    and-long v8, v0, v6

    cmp-long v8, v8, v2

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v4}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->getActive()Landroidx/databinding/ObservableBoolean;

    move-result-object v5

    .line 120
    :cond_0
    invoke-virtual {p0, v9, v5}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_1

    .line 125
    invoke-virtual {v5}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v9

    :cond_1
    if-eqz v8, :cond_3

    if-eqz v9, :cond_2

    const-wide/16 v4, 0x10

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x8

    :goto_0
    or-long/2addr v0, v4

    .line 138
    :cond_3
    iget-object v4, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->tv:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    const v5, 0x7f0500b4

    goto :goto_1

    :cond_4
    const v5, 0x7f0500b5

    :goto_1
    invoke-static {v4, v5}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    move v9, v4

    :cond_5
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 106
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
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->requestRebind()V

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

    .line 86
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->onChangeViewActive(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 65
    check-cast p2, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->setView(Lcom/geely/hvac/component/AppWidgetMassageTypeItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setView(Lcom/geely/hvac/component/AppWidgetMassageTypeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mView:Lcom/geely/hvac/component/AppWidgetMassageTypeItem;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 78
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBindingImpl;->notifyPropertyChanged(I)V

    .line 79
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;->requestRebind()V

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
