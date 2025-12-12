.class public Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
.source "LayoutSeatPositionSaveTabBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mTabItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView3:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView6:Landroidx/constraintlayout/widget/ConstraintLayout;


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

    .line 32
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    .line 35
    aget-object v3, p2, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x7

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v1, 0x8

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v1, -0x1

    .line 389
    iput-wide v1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 43
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id1:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id2:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id3:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 49
    aget-object p1, p3, v0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 51
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mboundView3:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 53
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mboundView6:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeTabCustomTagEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TabCustomTagEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 153
    monitor-enter p0

    .line 154
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 155
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

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 119
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

.method private onChangeTabTag1(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TabTag1",
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

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 146
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

.method private onChangeTabTag2(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TabTag2",
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

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 128
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

.method private onChangeTabTag3(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "TabTag3",
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

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 137
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
    .locals 26

    move-object/from16 v1, p0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 166
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mTab:Lcom/geely/hvac/component/SeatPositionSaveTab;

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v13, 0x62

    const-wide/16 v17, 0x61

    const/16 v19, 0x0

    const/4 v15, 0x0

    if-eqz v6, :cond_20

    and-long v20, v2, v17

    cmp-long v6, v20, v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_11

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatPositionSaveTab;->getTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v16

    move-object/from16 v11, v16

    goto :goto_0

    :cond_0
    move-object/from16 v11, v19

    .line 200
    :goto_0
    invoke-virtual {v1, v15, v11}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_1

    .line 205
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v15

    :goto_1
    if-ne v11, v8, :cond_2

    move v12, v8

    goto :goto_2

    :cond_2
    move v12, v15

    :goto_2
    if-nez v11, :cond_3

    move/from16 v16, v8

    goto :goto_3

    :cond_3
    move/from16 v16, v15

    :goto_3
    if-ne v11, v7, :cond_4

    move v11, v8

    goto :goto_4

    :cond_4
    move v11, v15

    :goto_4
    if-eqz v6, :cond_6

    if-eqz v12, :cond_5

    const-wide/16 v22, 0x100

    or-long v2, v2, v22

    const-wide/16 v22, 0x4000

    goto :goto_5

    :cond_5
    const-wide/16 v22, 0x80

    or-long v2, v2, v22

    const-wide/16 v22, 0x2000

    :goto_5
    or-long v2, v2, v22

    :cond_6
    and-long v22, v2, v17

    cmp-long v6, v22, v4

    if-eqz v6, :cond_8

    if-eqz v16, :cond_7

    const-wide/32 v22, 0x10000

    or-long v2, v2, v22

    const-wide/32 v22, 0x100000

    goto :goto_6

    :cond_7
    const-wide/32 v22, 0x8000

    or-long v2, v2, v22

    const-wide/32 v22, 0x80000

    :goto_6
    or-long v2, v2, v22

    :cond_8
    and-long v22, v2, v17

    cmp-long v6, v22, v4

    if-eqz v6, :cond_a

    if-eqz v11, :cond_9

    const-wide/16 v22, 0x400

    or-long v2, v2, v22

    const-wide/32 v22, 0x40000

    goto :goto_7

    :cond_9
    const-wide/16 v22, 0x200

    or-long v2, v2, v22

    const-wide/32 v22, 0x20000

    :goto_7
    or-long v2, v2, v22

    :cond_a
    const v6, 0x7f0501b3

    const v15, 0x7f0501b4

    .line 248
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v12, :cond_b

    invoke-static {v7, v6}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v7

    goto :goto_8

    :cond_b
    invoke-static {v7, v15}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v7

    :goto_8
    const v9, 0x7f0501b1

    const v10, 0x7f0501b2

    if-eqz v12, :cond_c

    .line 250
    iget-object v12, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id2:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-static {v12, v9}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v12

    goto :goto_9

    :cond_c
    iget-object v12, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id2:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-static {v12, v10}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v12

    .line 252
    :goto_9
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v16, :cond_d

    invoke-static {v8, v6}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v8

    goto :goto_a

    :cond_d
    invoke-static {v8, v15}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v8

    .line 254
    :goto_a
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id1:Lcom/geely/hvac/component/ViewWithBackground;

    if-eqz v16, :cond_e

    invoke-static {v4, v9}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    goto :goto_b

    :cond_e
    invoke-static {v4, v10}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    .line 256
    :goto_b
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v11, :cond_f

    invoke-static {v5, v6}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    goto :goto_c

    :cond_f
    invoke-static {v5, v15}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    .line 258
    :goto_c
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id3:Lcom/geely/hvac/component/ViewWithBackground;

    if-eqz v11, :cond_10

    invoke-static {v6, v9}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v6

    goto :goto_d

    :cond_10
    invoke-static {v6, v10}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v6

    goto :goto_d

    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_d
    and-long v9, v2, v13

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-eqz v9, :cond_13

    if-eqz v0, :cond_12

    .line 264
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatPositionSaveTab;->getTag2()Landroidx/databinding/ObservableField;

    move-result-object v9

    goto :goto_e

    :cond_12
    move-object/from16 v9, v19

    :goto_e
    const/4 v10, 0x1

    .line 266
    invoke-virtual {v1, v10, v9}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_13

    .line 271
    invoke-virtual {v9}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_f

    :cond_13
    move-object/from16 v9, v19

    :goto_f
    const-wide/16 v10, 0x64

    and-long v15, v2, v10

    const-wide/16 v10, 0x0

    cmp-long v15, v15, v10

    if-eqz v15, :cond_15

    if-eqz v0, :cond_14

    .line 278
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatPositionSaveTab;->getTag3()Landroidx/databinding/ObservableField;

    move-result-object v10

    goto :goto_10

    :cond_14
    move-object/from16 v10, v19

    :goto_10
    const/4 v11, 0x2

    .line 280
    invoke-virtual {v1, v11, v10}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_15

    .line 285
    invoke-virtual {v10}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_11

    :cond_15
    move-object/from16 v10, v19

    :goto_11
    const-wide/16 v15, 0x68

    and-long v24, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v11, v24, v15

    if-eqz v11, :cond_17

    if-eqz v0, :cond_16

    .line 292
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatPositionSaveTab;->getTag1()Landroidx/databinding/ObservableField;

    move-result-object v11

    goto :goto_12

    :cond_16
    move-object/from16 v11, v19

    :goto_12
    const/4 v15, 0x3

    .line 294
    invoke-virtual {v1, v15, v11}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_17

    .line 299
    invoke-virtual {v11}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_13

    :cond_17
    move-object/from16 v11, v19

    :goto_13
    const-wide/16 v15, 0x70

    and-long v24, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v23, v24, v15

    if-eqz v23, :cond_1d

    if-eqz v0, :cond_18

    .line 306
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatPositionSaveTab;->getCustomTagEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v15

    goto :goto_14

    :cond_18
    move-object/from16 v15, v19

    :goto_14
    const/4 v13, 0x4

    .line 308
    invoke-virtual {v1, v13, v15}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_19

    .line 313
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v13

    goto :goto_15

    :cond_19
    const/4 v13, 0x0

    :goto_15
    if-eqz v23, :cond_1b

    if-eqz v13, :cond_1a

    const-wide/16 v14, 0x1000

    goto :goto_16

    :cond_1a
    const-wide/16 v14, 0x800

    :goto_16
    or-long/2addr v2, v14

    :cond_1b
    if-eqz v13, :cond_1c

    const/4 v15, 0x0

    goto :goto_17

    :cond_1c
    const/16 v15, 0x8

    :goto_17
    const-wide/16 v13, 0x60

    goto :goto_18

    :cond_1d
    const-wide/16 v13, 0x60

    const/4 v15, 0x0

    :goto_18
    and-long v22, v2, v13

    const-wide/16 v13, 0x0

    cmp-long v16, v22, v13

    if-eqz v16, :cond_1f

    if-eqz v0, :cond_1f

    .line 332
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mTabItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;

    if-nez v13, :cond_1e

    new-instance v13, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;

    invoke-direct {v13}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v13, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mTabItemClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;

    :cond_1e
    invoke-virtual {v13, v0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/component/SeatPositionSaveTab;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl$OnClickListenerImpl;

    move-result-object v19

    :cond_1f
    move v0, v15

    move v15, v4

    move-object/from16 v4, v19

    goto :goto_19

    :cond_20
    move-object/from16 v4, v19

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_19
    and-long v13, v2, v17

    const-wide/16 v16, 0x0

    cmp-long v13, v13, v16

    if-eqz v13, :cond_21

    .line 340
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id1:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v13, v15}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 341
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id2:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v13, v12}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 342
    iget-object v12, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->id3:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v12, v6}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 343
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v8}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 344
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 345
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_21
    const-wide/16 v5, 0x60

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_22

    .line 350
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v5, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v5, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v5, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_22
    const-wide/16 v4, 0x68

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_23

    .line 357
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v4, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_23
    const-wide/16 v4, 0x62

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_24

    .line 362
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v4, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_24
    const-wide/16 v4, 0x64

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_25

    .line 367
    iget-object v4, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->label3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v4, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_25
    const-wide/16 v4, 0x70

    and-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-eqz v2, :cond_26

    .line 372
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mboundView6:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_26
    return-void

    :catchall_0
    move-exception v0

    .line 167
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 72
    monitor-exit p0

    return v0

    .line 74
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

    .line 62
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 63
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 64
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

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->onChangeTabCustomTagEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 109
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->onChangeTabTag1(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 107
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->onChangeTabTag3(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 105
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->onChangeTabTag2(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 103
    :cond_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->onChangeTabTabIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1
.end method

.method public setTab(Lcom/geely/hvac/component/SeatPositionSaveTab;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Tab"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mTab:Lcom/geely/hvac/component/SeatPositionSaveTab;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 95
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 94
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

    .line 82
    check-cast p2, Lcom/geely/hvac/component/SeatPositionSaveTab;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBindingImpl;->setTab(Lcom/geely/hvac/component/SeatPositionSaveTab;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
