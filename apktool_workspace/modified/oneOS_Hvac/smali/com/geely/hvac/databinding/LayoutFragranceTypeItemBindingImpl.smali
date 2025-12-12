.class public Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
.source "LayoutFragranceTypeItemBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;


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
    sget-object v0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

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

    .line 32
    aget-object v3, p2, v0

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v5, v1

    check-cast v5, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    move-object v6, v1

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiImageView;Landroid/view/View;Landroidx/cardview/widget/CardView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v0, -0x1

    .line 644
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->disableBg:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->iconBorder:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->iconWrap:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->indicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->label:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 47
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 48
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 49
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->invalidateAll()V

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

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 136
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

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 163
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

.method private onChangeViewFragranceState(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewFragranceState",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

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

.method private onChangeViewInstalledFragrance(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewInstalledFragrance",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

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

.method private onChangeViewTypeImage(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewTypeImage",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 172
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

.method private onChangeViewTypeName(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewTypeName",
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

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 145
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

.method private onChangeViewUnKnowFragrance(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ViewUnKnowFragrance",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 154
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
    .locals 56

    move-object/from16 v1, p0

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 183
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mView:Lcom/geely/hvac/component/FragranceTypeItem;

    const-wide/16 v7, 0x1ff

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    const-wide/32 v8, 0x20000000

    const-wide/16 v12, 0x188

    const-wide/32 v14, 0x8000000

    const-wide/32 v16, 0x400000

    const-wide/16 v18, 0x182

    const-wide/16 v20, 0x1a0

    const-wide/16 v22, 0x4000

    const-wide/32 v24, 0x10000

    const-wide/32 v26, 0x8000

    const-wide/16 v29, 0x181

    const-wide/16 v31, 0x190

    const/16 v33, 0x8

    const/4 v10, 0x1

    const-wide/16 v36, 0x1a7

    const-wide/16 v38, 0x192

    const/4 v11, 0x0

    if-eqz v7, :cond_24

    and-long v40, v2, v29

    cmp-long v7, v40, v4

    if-eqz v7, :cond_5

    if-eqz v6, :cond_0

    .line 223
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getFragranceState()Landroidx/databinding/ObservableBoolean;

    move-result-object v40

    move-object/from16 v0, v40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    invoke-virtual {v1, v11, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v41

    goto :goto_1

    :cond_1
    move/from16 v41, v11

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v41, :cond_2

    const-wide/32 v42, 0x40000000

    or-long v2, v2, v42

    goto :goto_2

    :cond_2
    or-long/2addr v2, v8

    :cond_3
    :goto_2
    if-eqz v41, :cond_4

    const v7, 0x7f0d0016

    goto :goto_3

    :cond_4
    const v7, 0x7f0d0017

    goto :goto_3

    :cond_5
    move v7, v11

    move/from16 v41, v7

    const/4 v0, 0x0

    :goto_3
    and-long v42, v2, v38

    cmp-long v42, v42, v4

    if-eqz v42, :cond_10

    if-eqz v6, :cond_6

    .line 249
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getInstalledFragrance()Landroidx/databinding/ObservableBoolean;

    move-result-object v43

    move-object/from16 v8, v43

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    .line 251
    :goto_4
    invoke-virtual {v1, v10, v8}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_7

    .line 256
    invoke-virtual {v8}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_5

    :cond_7
    move v9, v11

    :goto_5
    if-eqz v42, :cond_9

    if-eqz v9, :cond_8

    or-long v2, v2, v22

    goto :goto_6

    :cond_8
    const-wide/16 v44, 0x2000

    or-long v2, v2, v44

    :cond_9
    :goto_6
    xor-int/lit8 v42, v9, 0x1

    and-long v44, v2, v18

    cmp-long v44, v44, v4

    if-eqz v44, :cond_b

    if-eqz v42, :cond_a

    const-wide/32 v44, 0x100000

    goto :goto_7

    :cond_a
    const-wide/32 v44, 0x80000

    :goto_7
    or-long v2, v2, v44

    :cond_b
    and-long v44, v2, v38

    cmp-long v44, v44, v4

    if-eqz v44, :cond_d

    if-eqz v42, :cond_c

    const-wide/32 v44, 0x10000000

    or-long v2, v2, v44

    goto :goto_8

    :cond_c
    or-long/2addr v2, v14

    :cond_d
    :goto_8
    and-long v44, v2, v18

    cmp-long v44, v44, v4

    if-eqz v44, :cond_f

    if-eqz v42, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v44, v33

    goto :goto_a

    :cond_f
    :goto_9
    move/from16 v44, v11

    goto :goto_a

    :cond_10
    move v9, v11

    move/from16 v42, v9

    move/from16 v44, v42

    const/4 v8, 0x0

    :goto_a
    and-long v45, v2, v12

    cmp-long v45, v45, v4

    if-eqz v45, :cond_12

    if-eqz v6, :cond_11

    .line 297
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getTypeName()Landroidx/databinding/ObservableField;

    move-result-object v45

    move-object/from16 v12, v45

    goto :goto_b

    :cond_11
    const/4 v12, 0x0

    :goto_b
    const/4 v13, 0x3

    .line 299
    invoke-virtual {v1, v13, v12}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_12

    .line 304
    invoke-virtual {v12}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    :goto_c
    and-long v47, v2, v31

    cmp-long v13, v47, v4

    if-eqz v13, :cond_18

    if-eqz v6, :cond_13

    .line 311
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getUnKnowFragrance()Landroidx/databinding/ObservableBoolean;

    move-result-object v47

    move-object/from16 v11, v47

    const/4 v10, 0x4

    goto :goto_d

    :cond_13
    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 313
    :goto_d
    invoke-virtual {v1, v10, v11}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_14

    .line 318
    invoke-virtual {v11}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    :goto_e
    if-eqz v13, :cond_16

    if-eqz v10, :cond_15

    or-long v2, v2, v24

    goto :goto_f

    :cond_15
    or-long v2, v2, v26

    :cond_16
    :goto_f
    if-eqz v10, :cond_17

    goto :goto_10

    :cond_17
    move/from16 v13, v33

    goto :goto_11

    :cond_18
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_10
    const/4 v13, 0x0

    :goto_11
    and-long v49, v2, v36

    cmp-long v49, v49, v4

    if-eqz v49, :cond_20

    if-eqz v6, :cond_19

    .line 337
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v49

    move-object/from16 v14, v49

    goto :goto_12

    :cond_19
    const/4 v14, 0x0

    :goto_12
    const/4 v15, 0x5

    .line 339
    invoke-virtual {v1, v15, v14}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_1a

    .line 344
    invoke-virtual {v14}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v14

    goto :goto_13

    :cond_1a
    const/4 v14, 0x0

    :goto_13
    and-long v51, v2, v20

    cmp-long v15, v51, v4

    if-eqz v15, :cond_1c

    if-eqz v14, :cond_1b

    const-wide/16 v51, 0x400

    goto :goto_14

    :cond_1b
    const-wide/16 v51, 0x200

    :goto_14
    or-long v2, v2, v51

    :cond_1c
    and-long v51, v2, v36

    cmp-long v15, v51, v4

    if-eqz v15, :cond_1e

    if-eqz v14, :cond_1d

    or-long v2, v2, v16

    goto :goto_15

    :cond_1d
    const-wide/32 v51, 0x200000

    or-long v2, v2, v51

    :cond_1e
    :goto_15
    and-long v51, v2, v20

    cmp-long v15, v51, v4

    if-eqz v15, :cond_21

    if-eqz v14, :cond_1f

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_1f
    const v15, 0x3f19999a    # 0.6f

    :goto_16
    move/from16 v28, v15

    goto :goto_17

    :cond_20
    const/4 v14, 0x0

    :cond_21
    const/16 v28, 0x0

    :goto_17
    const-wide/16 v34, 0x1c0

    and-long v51, v2, v34

    cmp-long v15, v51, v4

    if-eqz v15, :cond_23

    if-eqz v6, :cond_22

    .line 373
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getTypeImage()Landroidx/databinding/ObservableField;

    move-result-object v15

    goto :goto_18

    :cond_22
    const/4 v15, 0x0

    :goto_18
    const/4 v4, 0x6

    .line 375
    invoke-virtual {v1, v4, v15}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_23

    .line 380
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object v5, v4

    move/from16 v15, v44

    move-wide v3, v2

    move/from16 v2, v28

    goto :goto_19

    :cond_23
    move-wide v3, v2

    move/from16 v2, v28

    move/from16 v15, v44

    const/4 v5, 0x0

    goto :goto_19

    :cond_24
    move-wide v3, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    :goto_19
    and-long v16, v3, v16

    const-wide/16 v51, 0x0

    cmp-long v16, v16, v51

    if-eqz v16, :cond_26

    if-eqz v6, :cond_25

    .line 390
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getActive()Landroidx/databinding/ObservableBoolean;

    move-result-object v16

    move-object/from16 v17, v8

    move-object/from16 v55, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v55

    goto :goto_1a

    :cond_25
    move-object/from16 v16, v0

    move-object/from16 v17, v8

    const/4 v0, 0x0

    :goto_1a
    const/4 v8, 0x2

    .line 392
    invoke-virtual {v1, v8, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_27

    .line 397
    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    goto :goto_1b

    :cond_26
    move-object/from16 v16, v0

    move-object/from16 v17, v8

    :cond_27
    const/4 v0, 0x0

    :goto_1b
    const-wide/32 v49, 0x8000000

    and-long v49, v3, v49

    const-wide/16 v51, 0x0

    cmp-long v8, v49, v51

    if-eqz v8, :cond_2b

    if-eqz v6, :cond_28

    .line 404
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getUnKnowFragrance()Landroidx/databinding/ObservableBoolean;

    move-result-object v11

    :cond_28
    const/4 v8, 0x4

    .line 406
    invoke-virtual {v1, v8, v11}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_29

    .line 411
    invoke-virtual {v11}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    :cond_29
    and-long v49, v3, v31

    const-wide/16 v51, 0x0

    cmp-long v8, v49, v51

    if-eqz v8, :cond_2c

    if-eqz v10, :cond_2a

    or-long v3, v3, v24

    goto :goto_1c

    :cond_2a
    or-long v3, v3, v26

    goto :goto_1c

    :cond_2b
    const-wide/16 v51, 0x0

    :cond_2c
    :goto_1c
    and-long v49, v3, v36

    cmp-long v8, v49, v51

    const-wide/32 v49, 0x1000000

    if-eqz v8, :cond_2f

    if-eqz v14, :cond_2d

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x0

    :goto_1d
    if-eqz v8, :cond_30

    if-eqz v0, :cond_2e

    or-long v3, v3, v49

    goto :goto_1e

    :cond_2e
    const-wide/32 v53, 0x800000

    or-long v3, v3, v53

    goto :goto_1e

    :cond_2f
    const/4 v0, 0x0

    :cond_30
    :goto_1e
    and-long v53, v3, v38

    const-wide/16 v51, 0x0

    cmp-long v8, v53, v51

    if-eqz v8, :cond_35

    if-eqz v42, :cond_31

    const/4 v14, 0x1

    goto :goto_1f

    :cond_31
    move v14, v10

    :goto_1f
    if-eqz v8, :cond_33

    if-eqz v14, :cond_32

    const-wide/32 v53, 0x4000000

    goto :goto_20

    :cond_32
    const-wide/32 v53, 0x2000000

    :goto_20
    or-long v3, v3, v53

    :cond_33
    if-eqz v14, :cond_34

    goto :goto_21

    :cond_34
    move/from16 v8, v33

    goto :goto_22

    :cond_35
    :goto_21
    const/4 v8, 0x0

    :goto_22
    and-long v49, v3, v49

    const-wide/16 v51, 0x0

    cmp-long v14, v49, v51

    if-eqz v14, :cond_39

    if-eqz v6, :cond_36

    .line 459
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getInstalledFragrance()Landroidx/databinding/ObservableBoolean;

    move-result-object v14

    goto :goto_23

    :cond_36
    move-object/from16 v14, v17

    :goto_23
    move/from16 v17, v9

    const/4 v9, 0x1

    .line 461
    invoke-virtual {v1, v9, v14}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_37

    .line 466
    invoke-virtual {v14}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_24

    :cond_37
    move/from16 v9, v17

    :goto_24
    and-long v49, v3, v38

    const-wide/16 v51, 0x0

    cmp-long v14, v49, v51

    if-eqz v14, :cond_3a

    if-eqz v9, :cond_38

    or-long v3, v3, v22

    goto :goto_25

    :cond_38
    const-wide/16 v49, 0x2000

    or-long v3, v3, v49

    goto :goto_25

    :cond_39
    move/from16 v17, v9

    const-wide/16 v51, 0x0

    :cond_3a
    :goto_25
    and-long v49, v3, v36

    cmp-long v14, v49, v51

    const-wide/16 v49, 0x1a6

    if-eqz v14, :cond_41

    if-eqz v0, :cond_3b

    move v0, v9

    goto :goto_26

    :cond_3b
    const/4 v0, 0x0

    :goto_26
    if-eqz v14, :cond_3d

    if-eqz v0, :cond_3c

    const-wide/16 v53, 0x1000

    goto :goto_27

    :cond_3c
    const-wide/16 v53, 0x800

    :goto_27
    or-long v3, v3, v53

    :cond_3d
    and-long v53, v3, v49

    const-wide/16 v51, 0x0

    cmp-long v14, v53, v51

    if-eqz v14, :cond_3f

    if-eqz v0, :cond_3e

    const-wide v53, 0x400000000L

    goto :goto_28

    :cond_3e
    const-wide v53, 0x200000000L

    :goto_28
    or-long v3, v3, v53

    :cond_3f
    and-long v53, v3, v49

    cmp-long v14, v53, v51

    if-eqz v14, :cond_42

    if-eqz v0, :cond_40

    goto :goto_29

    :cond_40
    move/from16 v14, v33

    goto :goto_2a

    :cond_41
    const-wide/16 v51, 0x0

    const/4 v0, 0x0

    :cond_42
    :goto_29
    const/4 v14, 0x0

    :goto_2a
    const-wide/16 v53, 0x1000

    and-long v53, v3, v53

    cmp-long v17, v53, v51

    if-eqz v17, :cond_46

    if-eqz v6, :cond_43

    .line 511
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getFragranceState()Landroidx/databinding/ObservableBoolean;

    move-result-object v16

    :cond_43
    move/from16 v17, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v11

    const/4 v11, 0x0

    .line 513
    invoke-virtual {v1, v11, v10}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_44

    .line 518
    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v41

    :cond_44
    and-long v53, v3, v29

    const-wide/16 v51, 0x0

    cmp-long v10, v53, v51

    if-eqz v10, :cond_47

    if-eqz v41, :cond_45

    const-wide/32 v42, 0x40000000

    goto :goto_2b

    :cond_45
    const-wide/32 v42, 0x20000000

    :goto_2b
    or-long v3, v3, v42

    goto :goto_2c

    :cond_46
    move/from16 v17, v10

    move-object/from16 v16, v11

    const/4 v11, 0x0

    const-wide/16 v51, 0x0

    :cond_47
    :goto_2c
    and-long v22, v3, v22

    cmp-long v10, v22, v51

    if-eqz v10, :cond_4c

    if-eqz v6, :cond_48

    .line 533
    invoke-virtual {v6}, Lcom/geely/hvac/component/FragranceTypeItem;->getUnKnowFragrance()Landroidx/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_2d

    :cond_48
    move-object/from16 v6, v16

    :goto_2d
    const/4 v10, 0x4

    .line 535
    invoke-virtual {v1, v10, v6}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_49

    .line 540
    invoke-virtual {v6}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_2e

    :cond_49
    move/from16 v10, v17

    :goto_2e
    and-long v16, v3, v31

    const-wide/16 v22, 0x0

    cmp-long v6, v16, v22

    if-eqz v6, :cond_4b

    if-eqz v10, :cond_4a

    or-long v3, v3, v24

    goto :goto_2f

    :cond_4a
    or-long v3, v3, v26

    :cond_4b
    :goto_2f
    const/4 v6, 0x1

    xor-int/2addr v6, v10

    goto :goto_30

    :cond_4c
    move v6, v11

    :goto_30
    and-long v16, v3, v36

    const-wide/16 v22, 0x0

    cmp-long v10, v16, v22

    if-eqz v10, :cond_51

    if-eqz v0, :cond_4d

    goto :goto_31

    :cond_4d
    move/from16 v41, v11

    :goto_31
    if-eqz v10, :cond_4f

    if-eqz v41, :cond_4e

    const-wide/32 v16, 0x40000

    goto :goto_32

    :cond_4e
    const-wide/32 v16, 0x20000

    :goto_32
    or-long v3, v3, v16

    .line 571
    :cond_4f
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->label:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v41, :cond_50

    const v10, 0x7f0500a8

    goto :goto_33

    :cond_50
    const v10, 0x7f0500a9

    :goto_33
    invoke-static {v0, v10}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    goto :goto_34

    :cond_51
    move v0, v11

    :goto_34
    and-long v16, v3, v38

    const-wide/16 v22, 0x0

    cmp-long v10, v16, v22

    if-eqz v10, :cond_56

    if-eqz v9, :cond_52

    goto :goto_35

    :cond_52
    move v6, v11

    :goto_35
    if-eqz v10, :cond_54

    if-eqz v6, :cond_53

    const-wide v9, 0x100000000L

    goto :goto_36

    :cond_53
    const-wide v9, 0x80000000L

    :goto_36
    or-long/2addr v3, v9

    :cond_54
    if-eqz v6, :cond_55

    move/from16 v33, v11

    :cond_55
    move/from16 v11, v33

    :cond_56
    and-long v9, v3, v38

    const-wide/16 v16, 0x0

    cmp-long v6, v9, v16

    if-eqz v6, :cond_57

    .line 594
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->disableBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v6, v8}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 595
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->iconWrap:Landroidx/cardview/widget/CardView;

    invoke-virtual {v6, v11}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    :cond_57
    and-long v8, v3, v20

    cmp-long v6, v8, v16

    if-eqz v6, :cond_58

    .line 599
    invoke-static {}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->getBuildSdkInt()I

    move-result v6

    const/16 v8, 0xb

    if-lt v6, v8, :cond_58

    .line 601
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v6, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setAlpha(F)V

    :cond_58
    const-wide/16 v8, 0x1c0

    and-long/2addr v8, v3

    cmp-long v2, v8, v16

    if-eqz v2, :cond_59

    .line 607
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v2, v5}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_59
    and-long v5, v3, v49

    cmp-long v2, v5, v16

    if-eqz v2, :cond_5a

    .line 612
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->iconBorder:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->indicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v2, v14}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_5a
    and-long v5, v3, v29

    cmp-long v2, v5, v16

    if-eqz v2, :cond_5b

    .line 618
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->indicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v2, v7}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    :cond_5b
    const-wide/16 v5, 0x188

    and-long/2addr v5, v3

    cmp-long v2, v5, v16

    if-eqz v2, :cond_5c

    .line 623
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->label:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v2, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5c
    and-long v5, v3, v36

    cmp-long v2, v5, v16

    if-eqz v2, :cond_5d

    .line 628
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->label:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_5d
    and-long v5, v3, v31

    cmp-long v0, v5, v16

    if-eqz v0, :cond_5e

    .line 633
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v13}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_5e
    and-long v2, v3, v18

    cmp-long v0, v2, v16

    if-eqz v0, :cond_5f

    .line 638
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v15}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_5f
    return-void

    :catchall_0
    move-exception v0

    .line 184
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
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

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 58
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
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

    .line 110
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->onChangeViewTypeImage(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->onChangeViewEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->onChangeViewUnKnowFragrance(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->onChangeViewTypeName(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->onChangeViewActive(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->onChangeViewInstalledFragrance(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->onChangeViewFragranceState(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 77
    check-cast p2, Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->setView(Lcom/geely/hvac/component/FragranceTypeItem;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setView(Lcom/geely/hvac/component/FragranceTypeItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "View"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mView:Lcom/geely/hvac/component/FragranceTypeItem;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 90
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
