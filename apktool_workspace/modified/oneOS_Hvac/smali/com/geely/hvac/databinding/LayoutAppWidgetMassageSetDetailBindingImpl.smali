.class public Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBinding;
.source "LayoutAppWidgetMassageSetDetailBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView1:Lcom/geely/hvac/component/AppWidgetMassageType;


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

    .line 29
    sget-object v0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x3

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v0, -0x1

    .line 215
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 34
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/AppWidgetMassageType;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mboundView1:Lcom/geely/hvac/component/AppWidgetMassageType;

    .line 37
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/AppWidgetMassageType;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetMassageTypeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypeModelMassageDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetMassageTypesModelMassageDetailZone(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypesModelMassageDetailZone",
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

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 116
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

.method private onChangeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelMassageDetailZone",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 107
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
    .locals 20

    move-object/from16 v1, p0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 127
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x1e

    const-wide/16 v9, 0x1b

    const-wide/16 v11, 0x18

    const/4 v13, 0x0

    if-eqz v6, :cond_7

    and-long v15, v2, v11

    cmp-long v6, v15, v4

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageTypeChangeListener()Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageDetailZone()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    const/4 v14, 0x1

    .line 153
    invoke-virtual {v1, v14, v15}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_2

    .line 158
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_2

    :cond_2
    move v14, v13

    :goto_2
    and-long v17, v2, v9

    cmp-long v15, v17, v4

    if-eqz v15, :cond_4

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageType(I)Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 167
    :goto_3
    invoke-virtual {v1, v13, v15}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_4

    .line 172
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    :cond_4
    and-long v17, v2, v7

    cmp-long v15, v17, v4

    if-eqz v15, :cond_6

    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageTypes(I)Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    const/4 v15, 0x2

    .line 181
    invoke-virtual {v1, v15, v0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_6

    .line 186
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object/from16 v19, v6

    move-object v6, v0

    move v0, v13

    move v13, v14

    move-object/from16 v14, v19

    goto :goto_5

    :cond_6
    move v0, v13

    move v13, v14

    move-object v14, v6

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move v0, v13

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_5
    const-wide/16 v15, 0x1a

    and-long/2addr v15, v2

    cmp-long v15, v15, v4

    if-eqz v15, :cond_8

    .line 194
    iget-object v15, v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mboundView1:Lcom/geely/hvac/component/AppWidgetMassageType;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/geely/hvac/component/AppWidgetMassageType;->setTag(Ljava/lang/Object;)V

    :cond_8
    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_9

    .line 199
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mboundView1:Lcom/geely/hvac/component/AppWidgetMassageType;

    invoke-static {v9, v0}, Lcom/geely/hvac/component/AppWidgetMassageType;->bind(Lcom/geely/hvac/component/AppWidgetMassageType;I)V

    :cond_9
    and-long v9, v2, v11

    cmp-long v0, v9, v4

    if-eqz v0, :cond_a

    .line 204
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mboundView1:Lcom/geely/hvac/component/AppWidgetMassageType;

    invoke-static {v0, v14}, Lcom/geely/hvac/component/AppWidgetMassageType;->bind(Lcom/geely/hvac/component/AppWidgetMassageType;Lcom/geely/hvac/component/intf/MassageTypeChangeListener;)V

    :cond_a
    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    .line 209
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mboundView1:Lcom/geely/hvac/component/AppWidgetMassageType;

    invoke-static {v0, v6}, Lcom/geely/hvac/component/AppWidgetMassageType;->bind(Lcom/geely/hvac/component/AppWidgetMassageType;[I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 128
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
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->requestRebind()V

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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->onChangeModelGetMassageTypesModelMassageDetailZone(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 88
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->onChangeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 86
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->onChangeModelGetMassageTypeModelMassageDetailZone(Landroidx/databinding/ObservableInt;I)Z

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
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->notifyPropertyChanged(I)V

    .line 79
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBinding;->requestRebind()V

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

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
