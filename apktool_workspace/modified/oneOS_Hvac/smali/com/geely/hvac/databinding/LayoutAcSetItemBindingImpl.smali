.class public Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;
.source "LayoutAcSetItemBindingImpl.java"


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
    sget-object v0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
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

    const/4 v0, 0x0

    .line 28
    aget-object v3, p2, v0

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/hvac/component/Switch;

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    move-object v8, p3

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/Switch;Landroid/view/View;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v0, -0x1

    .line 235
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    .line 34
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->desc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/Switch;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->switcherBottomClick:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->title:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelDesc(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelDesc",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelListener(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelListener",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelState(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelState",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelTitle(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelTitle",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 21

    move-object/from16 v1, p0

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 138
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mModel:Lcom/geely/hvac/component/AcSetItem;

    const-wide/16 v6, 0x3f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x34

    const-wide/16 v9, 0x32

    const-wide/16 v11, 0x31

    const-wide/16 v13, 0x38

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v6, :cond_8

    and-long v17, v2, v11

    cmp-long v6, v17, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/geely/hvac/component/AcSetItem;->getTitle()Landroidx/databinding/ObservableField;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v6, v16

    .line 159
    :goto_0
    invoke-virtual {v1, v15, v6}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 164
    invoke-virtual {v6}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v6, v16

    :goto_1
    and-long v17, v2, v9

    cmp-long v17, v17, v4

    if-eqz v17, :cond_3

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {v0}, Lcom/geely/hvac/component/AcSetItem;->getListener()Landroidx/databinding/ObservableField;

    move-result-object v17

    move-object/from16 v15, v17

    goto :goto_2

    :cond_2
    move-object/from16 v15, v16

    :goto_2
    const/4 v11, 0x1

    .line 173
    invoke-virtual {v1, v11, v15}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_3

    .line 178
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    goto :goto_3

    :cond_3
    move-object/from16 v11, v16

    :goto_3
    and-long v19, v2, v7

    cmp-long v12, v19, v4

    if-eqz v12, :cond_5

    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {v0}, Lcom/geely/hvac/component/AcSetItem;->getState()Landroidx/databinding/ObservableBoolean;

    move-result-object v12

    goto :goto_4

    :cond_4
    move-object/from16 v12, v16

    :goto_4
    const/4 v15, 0x2

    .line 187
    invoke-virtual {v1, v15, v12}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_5

    .line 192
    invoke-virtual {v12}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v15

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    and-long v19, v2, v13

    cmp-long v12, v19, v4

    if-eqz v12, :cond_7

    if-eqz v0, :cond_6

    .line 199
    invoke-virtual {v0}, Lcom/geely/hvac/component/AcSetItem;->getDesc()Landroidx/databinding/ObservableField;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object/from16 v0, v16

    :goto_6
    const/4 v12, 0x3

    .line 201
    invoke-virtual {v1, v12, v0}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_7

    .line 206
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    :cond_7
    move-object/from16 v0, v16

    goto :goto_7

    :cond_8
    move-object/from16 v0, v16

    move-object v6, v0

    move-object v11, v6

    const/4 v15, 0x0

    :goto_7
    and-long v12, v2, v13

    cmp-long v12, v12, v4

    if-eqz v12, :cond_9

    .line 214
    iget-object v12, v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->desc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v12, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    and-long/2addr v9, v2

    cmp-long v0, v9, v4

    if-eqz v0, :cond_a

    .line 219
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-static {v0, v11}, Lcom/geely/hvac/component/Switch;->bind(Lcom/geely/hvac/component/Switch;Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V

    :cond_a
    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_b

    .line 224
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-static {v0, v15}, Lcom/geely/hvac/component/Switch;->bind(Lcom/geely/hvac/component/Switch;Z)V

    :cond_b
    const-wide/16 v7, 0x31

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 229
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->title:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 139
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
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x20

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->requestRebind()V

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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->onChangeModelDesc(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 90
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->onChangeModelState(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 88
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->onChangeModelListener(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 86
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->onChangeModelTitle(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1
.end method

.method public setModel(Lcom/geely/hvac/component/AcSetItem;)V
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
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mModel:Lcom/geely/hvac/component/AcSetItem;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->notifyPropertyChanged(I)V

    .line 79
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->requestRebind()V

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
    check-cast p2, Lcom/geely/hvac/component/AcSetItem;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutAcSetItemBindingImpl;->setModel(Lcom/geely/hvac/component/AcSetItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
