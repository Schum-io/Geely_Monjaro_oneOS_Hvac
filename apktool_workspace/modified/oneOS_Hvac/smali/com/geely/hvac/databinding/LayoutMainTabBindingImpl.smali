.class public Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutMainTabBinding;
.source "LayoutMainTabBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mTabOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;


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

    .line 26
    sget-object v0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

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

    .line 29
    aget-object v3, p2, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiTextView;

    aget-object p3, p3, v0

    move-object v9, p3

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Landroid/widget/LinearLayout;)V

    const-wide/16 v0, -0x1

    .line 214
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    .line 36
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->ac:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->fragrance:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->seat:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->tabWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeTabTabIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TabTabIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    .line 97
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
    .locals 18

    move-object/from16 v1, p0

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 108
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mTab:Lcom/geely/hvac/component/MainTab;

    const-wide/16 v6, 0x7

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    const-wide/16 v9, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v8, :cond_10

    and-long v13, v2, v9

    cmp-long v13, v13, v4

    if-eqz v13, :cond_1

    if-eqz v0, :cond_1

    .line 128
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mTabOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;

    if-nez v13, :cond_0

    new-instance v13, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;

    invoke-direct {v13}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v13, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mTabOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v13, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/component/MainTab;)Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl$OnClickListenerImpl;

    move-result-object v13

    goto :goto_0

    :cond_1
    move-object v13, v11

    :goto_0
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Lcom/geely/hvac/component/MainTab;->getTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v11

    .line 136
    :cond_2
    invoke-virtual {v1, v12, v11}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_3

    .line 141
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v12

    :goto_1
    const/4 v11, 0x1

    if-ne v0, v11, :cond_4

    move v14, v11

    goto :goto_2

    :cond_4
    move v14, v12

    :goto_2
    if-nez v0, :cond_5

    move v15, v11

    goto :goto_3

    :cond_5
    move v15, v12

    :goto_3
    const/4 v11, 0x2

    if-ne v0, v11, :cond_6

    const/4 v12, 0x1

    :cond_6
    if-eqz v8, :cond_8

    if-eqz v14, :cond_7

    const-wide/16 v16, 0x10

    goto :goto_4

    :cond_7
    const-wide/16 v16, 0x8

    :goto_4
    or-long v2, v2, v16

    :cond_8
    and-long v16, v2, v6

    cmp-long v0, v16, v4

    if-eqz v0, :cond_a

    if-eqz v15, :cond_9

    const-wide/16 v16, 0x40

    goto :goto_5

    :cond_9
    const-wide/16 v16, 0x20

    :goto_5
    or-long v2, v2, v16

    :cond_a
    and-long v16, v2, v6

    cmp-long v0, v16, v4

    if-eqz v0, :cond_c

    if-eqz v12, :cond_b

    const-wide/16 v16, 0x100

    goto :goto_6

    :cond_b
    const-wide/16 v16, 0x80

    :goto_6
    or-long v2, v2, v16

    :cond_c
    const v0, 0x7f0500a8

    const v8, 0x7f0500a9

    .line 178
    iget-object v11, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->seat:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v14, :cond_d

    invoke-static {v11, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v11

    goto :goto_7

    :cond_d
    invoke-static {v11, v8}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v11

    .line 180
    :goto_7
    iget-object v14, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->ac:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v15, :cond_e

    invoke-static {v14, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v14

    goto :goto_8

    :cond_e
    invoke-static {v14, v8}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v14

    :goto_8
    if-eqz v12, :cond_f

    .line 182
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->fragrance:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v8, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    goto :goto_9

    :cond_f
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->fragrance:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v8}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    :goto_9
    move v12, v0

    move v8, v11

    move v0, v12

    move-object v11, v13

    move v12, v14

    goto :goto_a

    :cond_10
    move v0, v12

    move v8, v0

    :goto_a
    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_11

    .line 188
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->ac:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v9, v11}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->fragrance:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v9, v11}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->seat:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v9, v11}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    .line 195
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->ac:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v12}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 196
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->fragrance:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 197
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->seat:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v8}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58
    monitor-exit p0

    return v0

    .line 60
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

    .line 48
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 49
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
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

    .line 89
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->onChangeTabTabIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1
.end method

.method public setTab(Lcom/geely/hvac/component/MainTab;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Tab"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mTab:Lcom/geely/hvac/component/MainTab;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->mDirtyFlags:J

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 81
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->notifyPropertyChanged(I)V

    .line 82
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 80
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

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 68
    check-cast p2, Lcom/geely/hvac/component/MainTab;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMainTabBindingImpl;->setTab(Lcom/geely/hvac/component/MainTab;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
