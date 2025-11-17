.class public Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
.source "LayoutSetDetailTypeBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

.field private final mboundView2:Landroid/widget/LinearLayout;


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

    .line 30
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12
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

    .line 33
    aget-object v3, p2, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x7

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v1, 0x8

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroid/view/View;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v11, v1

    check-cast v11, Landroid/view/View;

    const/4 v4, 0x7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v1, -0x1

    .line 684
    iput-wide v1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 42
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item0:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->line0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->line1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    aget-object p1, p3, v0

    check-cast p1, Lcom/geely/hvac/component/ViewWithBackground;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

    .line 50
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 51
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeMainModelGetRow1LeftSeatCushionSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatCushionSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 177
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

.method private onChangeMainModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 186
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

.method private onChangeMainModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow1LeftSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 150
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

.method private onChangeMainModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow2RightSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 159
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

.method private onChangeMainModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelGetRow2RightSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 132
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

.method private onChangeMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MainModelSeatDetailPositionIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 168
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

.method private onChangeModelIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 141
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
    .locals 45

    move-object/from16 v1, p0

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 197
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModel:Lcom/geely/hvac/component/SeatDetailType;

    .line 210
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v7, 0x282

    and-long v9, v2, v7

    cmp-long v9, v9, v4

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eqz v9, :cond_13

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/geely/hvac/component/SeatDetailType;->getIndex()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 251
    :goto_0
    invoke-virtual {v1, v12, v15}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_1

    .line 256
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-nez v15, :cond_2

    move/from16 v16, v12

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    if-ne v15, v12, :cond_3

    move/from16 v17, v12

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    if-ne v15, v10, :cond_4

    move/from16 v18, v12

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    :goto_4
    if-ne v15, v11, :cond_5

    move v15, v12

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    if-eqz v9, :cond_7

    if-eqz v16, :cond_6

    const-wide/32 v19, 0x8000

    goto :goto_6

    :cond_6
    const-wide/16 v19, 0x4000

    :goto_6
    or-long v2, v2, v19

    :cond_7
    and-long v19, v2, v7

    cmp-long v9, v19, v4

    if-eqz v9, :cond_9

    if-eqz v17, :cond_8

    const-wide/16 v19, 0x800

    goto :goto_7

    :cond_8
    const-wide/16 v19, 0x400

    :goto_7
    or-long v2, v2, v19

    :cond_9
    and-long v19, v2, v7

    cmp-long v9, v19, v4

    if-eqz v9, :cond_b

    if-eqz v18, :cond_a

    const-wide v19, 0x200000000L

    goto :goto_8

    :cond_a
    const-wide v19, 0x100000000L

    :goto_8
    or-long v2, v2, v19

    :cond_b
    and-long v19, v2, v7

    cmp-long v9, v19, v4

    if-eqz v9, :cond_d

    if-eqz v15, :cond_c

    const-wide/32 v19, 0x200000

    goto :goto_9

    :cond_c
    const-wide/32 v19, 0x100000

    :goto_9
    or-long v2, v2, v19

    :cond_d
    const v9, 0x7f0501c5

    const v13, 0x7f0501c6

    .line 303
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item0:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v16, :cond_e

    invoke-static {v7, v9}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v7

    goto :goto_a

    :cond_e
    invoke-static {v7, v13}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v7

    .line 305
    :goto_a
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v17, :cond_f

    invoke-static {v8, v9}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v8

    goto :goto_b

    :cond_f
    invoke-static {v8, v13}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v8

    .line 307
    :goto_b
    iget-object v10, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v18, :cond_10

    invoke-static {v10, v9}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v10

    goto :goto_c

    :cond_10
    invoke-static {v10, v13}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v10

    :goto_c
    if-eqz v15, :cond_11

    .line 309
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v13, v9}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v9

    goto :goto_d

    :cond_11
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v9, v13}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v9

    :goto_d
    const-wide/16 v17, 0x280

    and-long v17, v2, v17

    cmp-long v13, v17, v4

    if-eqz v13, :cond_14

    if-eqz v0, :cond_14

    .line 314
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModelOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    if-nez v13, :cond_12

    new-instance v13, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    invoke-direct {v13}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v13, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModelOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    :cond_12
    invoke-virtual {v13, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/component/SeatDetailType;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    move-result-object v13

    goto :goto_e

    :cond_13
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_14
    const/4 v13, 0x0

    :goto_e
    const-wide/16 v17, 0x3fd

    and-long v17, v2, v17

    cmp-long v15, v17, v4

    const-wide/32 v17, 0x20000000

    const-wide/16 v21, 0x399

    const-wide/32 v23, 0x80000

    const-wide/32 v25, 0x800000

    const-wide/16 v27, 0x3d4

    const-wide/16 v29, 0x3b0

    if-eqz v15, :cond_20

    if-eqz v6, :cond_15

    .line 324
    invoke-virtual {v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatDetailPositionIndex()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_f

    :cond_15
    const/4 v15, 0x0

    :goto_f
    const/4 v14, 0x4

    .line 326
    invoke-virtual {v1, v14, v15}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_16

    .line 331
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_10

    :cond_16
    const/4 v14, 0x0

    :goto_10
    const-wide/16 v32, 0x3f4    # 5.0E-321

    and-long v32, v2, v32

    cmp-long v15, v32, v4

    if-eqz v15, :cond_1b

    if-nez v14, :cond_17

    move v15, v12

    goto :goto_11

    :cond_17
    const/4 v15, 0x0

    :goto_11
    and-long v32, v2, v27

    cmp-long v32, v32, v4

    if-eqz v32, :cond_19

    if-eqz v15, :cond_18

    or-long v2, v2, v23

    goto :goto_12

    :cond_18
    const-wide/32 v32, 0x40000

    or-long v2, v2, v32

    :cond_19
    :goto_12
    and-long v32, v2, v29

    cmp-long v32, v32, v4

    if-eqz v32, :cond_1c

    if-eqz v15, :cond_1a

    or-long v2, v2, v17

    goto :goto_13

    :cond_1a
    const-wide/32 v32, 0x10000000

    or-long v2, v2, v32

    goto :goto_13

    :cond_1b
    const/4 v15, 0x0

    :cond_1c
    :goto_13
    and-long v32, v2, v21

    cmp-long v32, v32, v4

    if-eqz v32, :cond_1f

    if-ne v14, v12, :cond_1d

    move v14, v12

    goto :goto_14

    :cond_1d
    const/4 v14, 0x0

    :goto_14
    if-eqz v32, :cond_21

    if-eqz v14, :cond_1e

    or-long v2, v2, v25

    goto :goto_15

    :cond_1e
    const-wide/32 v32, 0x400000

    or-long v2, v2, v32

    goto :goto_15

    :cond_1f
    const/4 v14, 0x0

    goto :goto_15

    :cond_20
    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_21
    :goto_15
    const-wide/32 v32, 0x20880000

    and-long v32, v2, v32

    cmp-long v32, v32, v4

    const-wide/32 v33, 0x40000000

    const-wide v35, 0x1000000000L

    if-eqz v32, :cond_31

    and-long v37, v2, v25

    cmp-long v32, v37, v4

    if-eqz v32, :cond_26

    if-eqz v6, :cond_22

    .line 378
    invoke-virtual {v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v37

    move-object/from16 v12, v37

    goto :goto_16

    :cond_22
    const/4 v12, 0x0

    .line 380
    :goto_16
    invoke-virtual {v1, v11, v12}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_23

    .line 385
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_17

    :cond_23
    const/4 v11, 0x0

    :goto_17
    if-eqz v6, :cond_24

    .line 391
    invoke-virtual {v6, v11}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v11

    goto :goto_18

    :cond_24
    const/4 v11, 0x0

    :goto_18
    if-eqz v32, :cond_27

    if-eqz v11, :cond_25

    const-wide v38, 0x2000000000L

    or-long v2, v2, v38

    goto :goto_19

    :cond_25
    or-long v2, v2, v35

    goto :goto_19

    :cond_26
    const/4 v11, 0x0

    :cond_27
    :goto_19
    and-long v17, v2, v17

    cmp-long v12, v17, v4

    if-eqz v12, :cond_2a

    if-eqz v6, :cond_28

    .line 406
    invoke-virtual {v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatCushionSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_1a

    :cond_28
    const/4 v12, 0x0

    :goto_1a
    const/4 v4, 0x5

    .line 408
    invoke-virtual {v1, v4, v12}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_29

    .line 413
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_1b

    :cond_29
    const/4 v4, 0x0

    :goto_1b
    if-eqz v6, :cond_2a

    .line 419
    invoke-virtual {v6, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v4

    goto :goto_1c

    :cond_2a
    const/4 v4, 0x0

    :goto_1c
    and-long v38, v2, v23

    const-wide/16 v17, 0x0

    cmp-long v5, v38, v17

    if-eqz v5, :cond_30

    if-eqz v6, :cond_2b

    .line 426
    invoke-virtual {v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v12

    move/from16 v32, v4

    goto :goto_1d

    :cond_2b
    move/from16 v32, v4

    const/4 v12, 0x0

    :goto_1d
    const/4 v4, 0x6

    .line 428
    invoke-virtual {v1, v4, v12}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_2c

    .line 433
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_1e

    :cond_2c
    const/4 v4, 0x0

    :goto_1e
    if-eqz v6, :cond_2d

    .line 439
    invoke-virtual {v6, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v4

    goto :goto_1f

    :cond_2d
    const/4 v4, 0x0

    :goto_1f
    if-eqz v5, :cond_2f

    if-eqz v4, :cond_2e

    const-wide v38, 0x80000000L

    or-long v2, v2, v38

    goto :goto_20

    :cond_2e
    or-long v2, v2, v33

    :cond_2f
    :goto_20
    move v5, v4

    move/from16 v4, v32

    goto :goto_21

    :cond_30
    move/from16 v32, v4

    const/4 v5, 0x0

    goto :goto_21

    :cond_31
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_21
    and-long v38, v2, v29

    const-wide/16 v17, 0x0

    cmp-long v12, v38, v17

    const-wide/32 v38, 0x20000

    const/16 v32, 0x8

    const-wide/16 v40, 0x330

    if-eqz v12, :cond_38

    if-eqz v15, :cond_32

    goto :goto_22

    :cond_32
    const/4 v4, 0x0

    :goto_22
    if-eqz v12, :cond_34

    if-eqz v4, :cond_33

    or-long v2, v2, v38

    goto :goto_23

    :cond_33
    const-wide/32 v42, 0x10000

    or-long v2, v2, v42

    :cond_34
    :goto_23
    and-long v42, v2, v40

    const-wide/16 v17, 0x0

    cmp-long v12, v42, v17

    if-eqz v12, :cond_36

    if-eqz v4, :cond_35

    const-wide v42, 0x800000000L

    goto :goto_24

    :cond_35
    const-wide v42, 0x400000000L

    :goto_24
    or-long v2, v2, v42

    :cond_36
    and-long v42, v2, v40

    cmp-long v12, v42, v17

    if-eqz v12, :cond_39

    if-eqz v4, :cond_37

    goto :goto_25

    :cond_37
    move/from16 v12, v32

    goto :goto_26

    :cond_38
    const-wide/16 v17, 0x0

    const/4 v4, 0x0

    :cond_39
    :goto_25
    const/4 v12, 0x0

    :goto_26
    and-long v38, v2, v38

    cmp-long v38, v38, v17

    if-eqz v38, :cond_3b

    if-eqz v0, :cond_3b

    .line 487
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModelOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    if-nez v13, :cond_3a

    new-instance v13, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    invoke-direct {v13}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v13, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModelOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    :cond_3a
    invoke-virtual {v13, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/component/SeatDetailType;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    move-result-object v13

    :cond_3b
    and-long v35, v2, v35

    const-wide/16 v17, 0x0

    cmp-long v35, v35, v17

    if-eqz v35, :cond_3e

    if-eqz v6, :cond_3c

    .line 494
    invoke-virtual {v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v35

    move/from16 v31, v12

    const/4 v12, 0x0

    move-object/from16 v44, v35

    move-object/from16 v35, v13

    move-object/from16 v13, v44

    goto :goto_27

    :cond_3c
    move/from16 v31, v12

    move-object/from16 v35, v13

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 496
    :goto_27
    invoke-virtual {v1, v12, v13}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_3d

    .line 501
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_28

    :cond_3d
    move v13, v12

    :goto_28
    if-eqz v6, :cond_3f

    .line 507
    invoke-virtual {v6, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v13

    goto :goto_29

    :cond_3e
    move/from16 v31, v12

    move-object/from16 v35, v13

    const/4 v12, 0x0

    :cond_3f
    move v13, v12

    :goto_29
    and-long v33, v2, v33

    const-wide/16 v17, 0x0

    cmp-long v33, v33, v17

    if-eqz v33, :cond_42

    if-eqz v6, :cond_40

    .line 514
    invoke-virtual {v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v33

    move/from16 v16, v13

    move-object/from16 v12, v33

    goto :goto_2a

    :cond_40
    move/from16 v16, v13

    const/4 v12, 0x0

    :goto_2a
    const/4 v13, 0x2

    .line 516
    invoke-virtual {v1, v13, v12}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_41

    .line 521
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_2b

    :cond_41
    const/4 v12, 0x0

    :goto_2b
    if-eqz v6, :cond_43

    .line 527
    invoke-virtual {v6, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v6

    goto :goto_2c

    :cond_42
    move/from16 v16, v13

    :cond_43
    const/4 v6, 0x0

    :goto_2c
    and-long v12, v2, v29

    const-wide/16 v17, 0x0

    cmp-long v12, v12, v17

    if-eqz v12, :cond_44

    if-eqz v4, :cond_44

    move-object/from16 v4, v35

    goto :goto_2d

    :cond_44
    const/4 v4, 0x0

    :goto_2d
    and-long v12, v2, v23

    cmp-long v12, v12, v17

    if-eqz v12, :cond_45

    if-eqz v5, :cond_46

    const/4 v6, 0x1

    goto :goto_2e

    :cond_45
    const/4 v6, 0x0

    :cond_46
    :goto_2e
    and-long v12, v2, v25

    cmp-long v5, v12, v17

    if-eqz v5, :cond_48

    if-eqz v11, :cond_47

    const/4 v12, 0x1

    goto :goto_2f

    :cond_47
    move/from16 v12, v16

    goto :goto_2f

    :cond_48
    const/4 v12, 0x0

    :goto_2f
    and-long v23, v2, v27

    cmp-long v5, v23, v17

    const-wide/16 v23, 0x354

    if-eqz v5, :cond_50

    if-eqz v15, :cond_49

    goto :goto_30

    :cond_49
    const/4 v6, 0x0

    :goto_30
    and-long v15, v2, v23

    cmp-long v5, v15, v17

    if-eqz v5, :cond_4b

    if-eqz v6, :cond_4a

    const-wide/32 v15, 0x2000000

    goto :goto_31

    :cond_4a
    const-wide/32 v15, 0x1000000

    :goto_31
    or-long/2addr v2, v15

    :cond_4b
    and-long v15, v2, v27

    cmp-long v5, v15, v17

    if-eqz v5, :cond_4d

    if-eqz v6, :cond_4c

    const-wide/32 v15, 0x8000000

    goto :goto_32

    :cond_4c
    const-wide/32 v15, 0x4000000

    :goto_32
    or-long/2addr v2, v15

    :cond_4d
    and-long v15, v2, v23

    cmp-long v5, v15, v17

    if-eqz v5, :cond_4f

    if-eqz v6, :cond_4e

    goto :goto_33

    :cond_4e
    move/from16 v5, v32

    goto :goto_34

    :cond_4f
    :goto_33
    const/4 v5, 0x0

    goto :goto_34

    :cond_50
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_34
    and-long v15, v2, v21

    cmp-long v11, v15, v17

    const-wide/16 v15, 0x319

    if-eqz v11, :cond_58

    if-eqz v14, :cond_51

    goto :goto_35

    :cond_51
    const/4 v12, 0x0

    :goto_35
    if-eqz v11, :cond_53

    if-eqz v12, :cond_52

    const-wide/16 v13, 0x2000

    goto :goto_36

    :cond_52
    const-wide/16 v13, 0x1000

    :goto_36
    or-long/2addr v2, v13

    :cond_53
    and-long v13, v2, v15

    const-wide/16 v17, 0x0

    cmp-long v11, v13, v17

    if-eqz v11, :cond_55

    if-eqz v12, :cond_54

    const-wide v13, 0x8000000000L

    goto :goto_37

    :cond_54
    const-wide v13, 0x4000000000L

    :goto_37
    or-long/2addr v2, v13

    :cond_55
    and-long v13, v2, v15

    cmp-long v11, v13, v17

    if-eqz v11, :cond_57

    if-eqz v12, :cond_56

    const/4 v14, 0x0

    goto :goto_38

    :cond_56
    move/from16 v14, v32

    :goto_38
    move v11, v14

    move v14, v12

    goto :goto_39

    :cond_57
    move v14, v12

    const/4 v11, 0x0

    goto :goto_39

    :cond_58
    const-wide/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_39
    const-wide/32 v12, 0x8002000

    and-long/2addr v12, v2

    cmp-long v12, v12, v17

    if-eqz v12, :cond_5a

    if-eqz v0, :cond_5a

    .line 609
    iget-object v12, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModelOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    if-nez v12, :cond_59

    new-instance v12, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    invoke-direct {v12}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v12, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModelOnClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    :cond_59
    invoke-virtual {v12, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/component/SeatDetailType;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl$OnClickListenerImpl;

    move-result-object v13

    goto :goto_3a

    :cond_5a
    move-object/from16 v13, v35

    :goto_3a
    and-long v21, v2, v21

    const-wide/16 v17, 0x0

    cmp-long v0, v21, v17

    if-eqz v0, :cond_5b

    if-eqz v14, :cond_5b

    move-object v12, v13

    goto :goto_3b

    :cond_5b
    const/4 v12, 0x0

    :goto_3b
    and-long v21, v2, v27

    cmp-long v14, v21, v17

    if-eqz v14, :cond_5d

    if-eqz v6, :cond_5c

    move-object/from16 v19, v13

    goto :goto_3c

    :cond_5c
    const/16 v19, 0x0

    :goto_3c
    move-object/from16 v6, v19

    goto :goto_3d

    :cond_5d
    const/4 v6, 0x0

    :goto_3d
    const-wide/16 v21, 0x280

    and-long v21, v2, v21

    cmp-long v19, v21, v17

    if-eqz v19, :cond_5e

    .line 627
    iget-object v15, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item0:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v15, v13}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5e
    const-wide/16 v15, 0x282

    and-long/2addr v15, v2

    cmp-long v13, v15, v17

    if-eqz v13, :cond_5f

    .line 632
    iget-object v13, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item0:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v13, v7}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 633
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v7, v8}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 634
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v7, v10}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 635
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v7, v9}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_5f
    if-eqz v14, :cond_60

    .line 640
    iget-object v7, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v7, v6}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_60
    and-long v6, v2, v23

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_61

    .line 645
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v6, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 646
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->line0:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_61
    if-eqz v0, :cond_62

    .line 651
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v12}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_62
    const-wide/16 v5, 0x319

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_63

    .line 656
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v11}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 657
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->line1:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_63
    and-long v5, v2, v29

    cmp-long v0, v5, v7

    if-eqz v0, :cond_64

    .line 662
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_64
    and-long v2, v2, v40

    cmp-long v0, v2, v7

    if-eqz v0, :cond_65

    .line 667
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move/from16 v12, v31

    invoke-virtual {v0, v12}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    :cond_65
    return-void

    :catchall_0
    move-exception v0

    .line 198
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70
    monitor-exit p0

    return v0

    .line 72
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

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x200

    .line 61
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
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

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 124
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->onChangeMainModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 122
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->onChangeMainModelGetRow1LeftSeatCushionSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->onChangeMainModelSeatDetailPositionIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->onChangeMainModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 116
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->onChangeMainModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 114
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->onChangeModelIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 112
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->onChangeMainModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "MainModel"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->notifyPropertyChanged(I)V

    .line 105
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lcom/geely/hvac/component/SeatDetailType;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Model"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mModel:Lcom/geely/hvac/component/SeatDetailType;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 96
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2
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

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 80
    check-cast p2, Lcom/geely/hvac/component/SeatDetailType;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->setModel(Lcom/geely/hvac/component/SeatDetailType;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 83
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBindingImpl;->setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
