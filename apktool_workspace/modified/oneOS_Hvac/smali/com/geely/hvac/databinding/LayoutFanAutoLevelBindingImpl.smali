.class public Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;
.source "LayoutFanAutoLevelBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;


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
    sget-object v0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

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

    .line 32
    aget-object v3, p2, v0

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiTextView;

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v0, -0x1

    .line 250
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 38
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 39
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 41
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->softLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->invalidateAll()V

    return-void
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

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

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

.method private onChangeViewFanAutoLevel(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewFanAutoLevel",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 21

    move-object/from16 v1, p0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 122
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mView:Lcom/geely/hvac/component/FanAutoLevel;

    const-wide/16 v7, 0xf

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    const-wide/16 v8, 0xe

    const-wide/16 v10, 0xd

    const/4 v12, 0x0

    if-eqz v7, :cond_15

    and-long v13, v2, v10

    cmp-long v7, v13, v4

    const/4 v14, 0x1

    if-eqz v7, :cond_e

    if-eqz v6, :cond_0

    .line 144
    invoke-virtual {v6}, Lcom/geely/hvac/component/FanAutoLevel;->getFanAutoLevel()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 146
    :goto_0
    invoke-virtual {v1, v12, v15}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_1

    .line 151
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    goto :goto_1

    :cond_1
    move v15, v12

    :goto_1
    const/4 v0, 0x5

    if-ne v15, v0, :cond_2

    move v0, v14

    goto :goto_2

    :cond_2
    move v0, v12

    :goto_2
    if-ne v15, v14, :cond_3

    move/from16 v16, v14

    goto :goto_3

    :cond_3
    move/from16 v16, v12

    :goto_3
    const/4 v12, 0x3

    if-ne v15, v12, :cond_4

    move v12, v14

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    if-eqz v7, :cond_6

    if-eqz v0, :cond_5

    const-wide/16 v18, 0x80

    goto :goto_5

    :cond_5
    const-wide/16 v18, 0x40

    :goto_5
    or-long v2, v2, v18

    :cond_6
    and-long v18, v2, v10

    cmp-long v7, v18, v4

    if-eqz v7, :cond_8

    if-eqz v16, :cond_7

    const-wide/16 v18, 0x20

    goto :goto_6

    :cond_7
    const-wide/16 v18, 0x10

    :goto_6
    or-long v2, v2, v18

    :cond_8
    and-long v18, v2, v10

    cmp-long v7, v18, v4

    if-eqz v7, :cond_a

    if-eqz v12, :cond_9

    const-wide/16 v18, 0x800

    goto :goto_7

    :cond_9
    const-wide/16 v18, 0x400

    :goto_7
    or-long v2, v2, v18

    :cond_a
    const v7, 0x7f05008c

    const v15, 0x7f05008d

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v7}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    goto :goto_8

    :cond_b
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v15}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    .line 190
    :goto_8
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->softLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v16, :cond_c

    invoke-static {v13, v7}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v13

    goto :goto_9

    :cond_c
    invoke-static {v13, v15}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v13

    :goto_9
    if-eqz v12, :cond_d

    .line 192
    iget-object v12, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v12, v7}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v7

    goto :goto_a

    :cond_d
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v7, v15}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v7

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_a
    and-long v18, v2, v8

    cmp-long v12, v18, v4

    if-eqz v12, :cond_14

    if-eqz v6, :cond_f

    .line 198
    invoke-virtual {v6}, Lcom/geely/hvac/component/FanAutoLevel;->getEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    .line 200
    :goto_b
    invoke-virtual {v1, v14, v6}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_10

    .line 205
    invoke-virtual {v6}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v6

    move/from16 v17, v6

    goto :goto_c

    :cond_10
    const/16 v17, 0x0

    :goto_c
    if-eqz v12, :cond_12

    if-eqz v17, :cond_11

    const-wide/16 v14, 0x200

    goto :goto_d

    :cond_11
    const-wide/16 v14, 0x100

    :goto_d
    or-long/2addr v2, v14

    :cond_12
    if-eqz v17, :cond_13

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_13
    const v6, 0x3f19999a    # 0.6f

    :goto_e
    move v12, v7

    move/from16 v7, v17

    move/from16 v20, v6

    move v6, v0

    move/from16 v0, v20

    goto :goto_f

    :cond_14
    move v6, v0

    move v12, v7

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_f

    :cond_15
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_f
    and-long/2addr v10, v2

    cmp-long v10, v10, v4

    if-eqz v10, :cond_16

    .line 225
    iget-object v10, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v10, v12}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 226
    iget-object v10, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v10, v6}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 227
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->softLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v13}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_16
    and-long/2addr v2, v8

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    .line 231
    invoke-static {}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->getBuildSdkInt()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_17

    .line 233
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setAlpha(F)V

    .line 234
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setAlpha(F)V

    .line 235
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->softLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setAlpha(F)V

    .line 239
    :cond_17
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 240
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setClickable(Z)V

    .line 241
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setClickable(Z)V

    .line 242
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 243
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->softLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setClickable(Z)V

    .line 244
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->softLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    :cond_18
    return-void

    :catchall_0
    move-exception v0

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
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

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 52
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
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

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->onChangeViewEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 92
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->onChangeViewFanAutoLevel(Landroidx/databinding/ObservableInt;I)Z

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

    .line 71
    check-cast p2, Lcom/geely/hvac/component/FanAutoLevel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->setView(Lcom/geely/hvac/component/FanAutoLevel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setView(Lcom/geely/hvac/component/FanAutoLevel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mView:Lcom/geely/hvac/component/FanAutoLevel;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 84
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBindingImpl;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
