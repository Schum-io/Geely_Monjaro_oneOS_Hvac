.class public Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;
.super Lcom/geely/hvac/databinding/PagerItemFragranceBinding;
.source "PagerItemFragranceBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelBuyFragranceClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView2:Lcom/geely/hvac/component/FragranceType;


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

    .line 30
    sget-object v0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
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

    const/4 v0, 0x3

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/component/FragranceLeveView;

    const/16 v4, 0x9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/PagerItemFragranceBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/FragranceLeveView;)V

    const-wide/16 v0, -0x1

    .line 478
    iput-wide v0, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->buyFragranceBtn:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->fragranceLevel:Lcom/geely/hvac/component/FragranceLeveView;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/FragranceLeveView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 39
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/FragranceType;

    iput-object p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mboundView2:Lcom/geely/hvac/component/FragranceType;

    .line 42
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/FragranceType;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelFragranceEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 187
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

.method private onChangeModelFragranceImages(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceImages",
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

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 115
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

.method private onChangeModelFragranceLevel(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceLevel",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 142
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

.method private onChangeModelFragranceLevelSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceLevelSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 133
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

.method private onChangeModelFragranceSlotIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceSlotIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 151
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

.method private onChangeModelFragranceSlotIndexSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceSlotIndexSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 124
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

.method private onChangeModelFragranceState(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceState",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 160
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

.method private onChangeModelFragranceTypeIds(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceTypeIds",
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

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 178
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

.method private onChangeModelFragranceTypes(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceTypes",
            "fieldId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "[",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 169
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
    .locals 46

    move-object/from16 v1, p0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 198
    iput-wide v4, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x7ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v9, 0x610

    const-wide/16 v11, 0x608

    const/4 v13, 0x2

    const-wide/16 v16, 0x604

    const-wide/16 v18, 0x704

    const-wide/16 v20, 0x6c1

    const-wide/16 v22, 0x1000

    const-wide/16 v24, 0x600

    const-wide/16 v26, 0x4000

    const/4 v14, 0x0

    if-eqz v6, :cond_19

    and-long v30, v2, v24

    cmp-long v6, v30, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 234
    iget-object v6, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mModelBuyFragranceClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;

    if-nez v6, :cond_0

    new-instance v6, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;

    invoke-direct {v6}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v6, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mModelBuyFragranceClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v6, v0}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl$OnClickListenerImpl;

    move-result-object v6

    .line 236
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceLevelChangeListener()Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;

    move-result-object v30

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/16 v30, 0x0

    :goto_0
    and-long v31, v2, v20

    cmp-long v31, v31, v4

    if-eqz v31, :cond_6

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceImages()Landroidx/databinding/ObservableField;

    move-result-object v31

    .line 245
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceTypes()Landroidx/databinding/ObservableField;

    move-result-object v32

    .line 247
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceTypeIds()Landroidx/databinding/ObservableField;

    move-result-object v33

    move-object/from16 v15, v31

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 249
    :goto_1
    invoke-virtual {v1, v14, v15}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v14, 0x6

    .line 250
    invoke-virtual {v1, v14, v7}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v14, 0x7

    .line 251
    invoke-virtual {v1, v14, v8}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_3

    .line 256
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    if-eqz v7, :cond_4

    .line 260
    invoke-virtual {v7}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v8, :cond_5

    .line 264
    invoke-virtual {v8}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_4
    and-long v35, v2, v16

    cmp-long v15, v35, v4

    if-eqz v15, :cond_9

    if-eqz v0, :cond_7

    .line 271
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceLevelSupported()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    .line 273
    :goto_5
    invoke-virtual {v1, v13, v15}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_8

    .line 278
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v35

    move/from16 v13, v35

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    if-eqz v0, :cond_a

    .line 284
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v36

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    const/4 v15, 0x0

    :cond_a
    const/16 v36, 0x0

    :goto_7
    and-long v37, v2, v11

    cmp-long v37, v37, v4

    if-eqz v37, :cond_c

    if-eqz v0, :cond_b

    .line 291
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceLevel()Landroidx/databinding/ObservableInt;

    move-result-object v37

    move-object/from16 v11, v37

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    const/4 v12, 0x3

    .line 293
    invoke-virtual {v1, v12, v11}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_c

    .line 298
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    :goto_9
    and-long v39, v2, v9

    cmp-long v12, v39, v4

    if-eqz v12, :cond_f

    if-eqz v0, :cond_d

    .line 305
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceSlotIndex()Landroidx/databinding/ObservableInt;

    move-result-object v12

    .line 307
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getOnFragranceSlotIndexChangeListener()Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;

    move-result-object v39

    goto :goto_a

    :cond_d
    const/4 v12, 0x0

    const/16 v39, 0x0

    :goto_a
    const/4 v9, 0x4

    .line 309
    invoke-virtual {v1, v9, v12}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_e

    .line 314
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    :goto_b
    const-wide/16 v32, 0x620

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    const-wide/16 v32, 0x620

    const/16 v39, 0x0

    :goto_c
    and-long v41, v2, v32

    cmp-long v10, v41, v4

    if-eqz v10, :cond_11

    if-eqz v0, :cond_10

    .line 321
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceState()Landroidx/databinding/ObservableBoolean;

    move-result-object v10

    goto :goto_d

    :cond_10
    const/4 v10, 0x0

    :goto_d
    const/4 v12, 0x5

    .line 323
    invoke-virtual {v1, v12, v10}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_11

    .line 328
    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_e

    :cond_11
    const/4 v10, 0x0

    :goto_e
    const-wide/16 v41, 0x706

    and-long v41, v2, v41

    cmp-long v12, v41, v4

    if-eqz v12, :cond_18

    if-eqz v0, :cond_12

    .line 335
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v12

    goto :goto_f

    :cond_12
    const/4 v12, 0x0

    :goto_f
    const/16 v4, 0x8

    .line 337
    invoke-virtual {v1, v4, v12}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_13

    .line 342
    invoke-virtual {v12}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    and-long v43, v2, v18

    const-wide/16 v41, 0x0

    cmp-long v5, v43, v41

    if-eqz v5, :cond_15

    if-eqz v4, :cond_14

    or-long v2, v2, v22

    goto :goto_11

    :cond_14
    const-wide/16 v43, 0x800

    or-long v2, v2, v43

    :cond_15
    :goto_11
    const-wide/16 v28, 0x702

    and-long v43, v2, v28

    cmp-long v5, v43, v41

    if-eqz v5, :cond_17

    if-eqz v4, :cond_16

    or-long v2, v2, v26

    goto :goto_12

    :cond_16
    const-wide/16 v43, 0x2000

    or-long v2, v2, v43

    :cond_17
    :goto_12
    move-object/from16 v5, v30

    move-object/from16 v12, v39

    goto :goto_13

    :cond_18
    move-object/from16 v5, v30

    move-object/from16 v12, v39

    const/4 v4, 0x0

    goto :goto_13

    :cond_19
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v36, 0x0

    :goto_13
    and-long v26, v2, v26

    const-wide/16 v41, 0x0

    cmp-long v26, v26, v41

    if-eqz v26, :cond_1c

    if-eqz v0, :cond_1a

    .line 368
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceSlotIndexSupport()Landroidx/databinding/ObservableInt;

    move-result-object v26

    move-object/from16 v27, v15

    move-object/from16 v45, v26

    move/from16 v26, v13

    move-object/from16 v13, v45

    goto :goto_14

    :cond_1a
    move/from16 v26, v13

    move-object/from16 v27, v15

    const/4 v13, 0x0

    :goto_14
    const/4 v15, 0x1

    .line 370
    invoke-virtual {v1, v15, v13}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_1b

    .line 375
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_15

    :cond_1b
    const/4 v13, 0x0

    :goto_15
    if-eqz v0, :cond_1d

    .line 381
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v13

    goto :goto_16

    :cond_1c
    move/from16 v26, v13

    move-object/from16 v27, v15

    :cond_1d
    const/4 v13, 0x0

    :goto_16
    and-long v22, v2, v22

    const-wide/16 v30, 0x0

    cmp-long v15, v22, v30

    if-eqz v15, :cond_20

    if-eqz v0, :cond_1e

    .line 388
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getFragranceLevelSupported()Landroidx/databinding/ObservableInt;

    move-result-object v15

    move/from16 v22, v13

    goto :goto_17

    :cond_1e
    move/from16 v22, v13

    move-object/from16 v15, v27

    :goto_17
    const/4 v13, 0x2

    .line 390
    invoke-virtual {v1, v13, v15}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_1f

    .line 395
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_18

    :cond_1f
    move/from16 v13, v26

    :goto_18
    if-eqz v0, :cond_21

    .line 401
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v36

    goto :goto_19

    :cond_20
    move/from16 v22, v13

    :cond_21
    :goto_19
    move/from16 v0, v36

    and-long v18, v2, v18

    const-wide/16 v26, 0x0

    cmp-long v13, v18, v26

    if-eqz v13, :cond_22

    if-eqz v4, :cond_22

    move v15, v0

    goto :goto_1a

    :cond_22
    const/4 v15, 0x0

    :goto_1a
    const-wide/16 v18, 0x702

    and-long v18, v2, v18

    cmp-long v18, v18, v26

    if-eqz v18, :cond_24

    if-eqz v4, :cond_23

    move/from16 v34, v22

    goto :goto_1b

    :cond_23
    const/16 v34, 0x0

    :goto_1b
    move/from16 v4, v34

    goto :goto_1c

    :cond_24
    const/4 v4, 0x0

    :goto_1c
    and-long v22, v2, v24

    cmp-long v19, v22, v26

    if-eqz v19, :cond_25

    move/from16 v19, v9

    .line 419
    iget-object v9, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->buyFragranceBtn:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v9, v6}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v6, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->fragranceLevel:Lcom/geely/hvac/component/FragranceLeveView;

    invoke-static {v6, v5}, Lcom/geely/hvac/component/FragranceLeveView;->bind(Lcom/geely/hvac/component/FragranceLeveView;Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;)V

    goto :goto_1d

    :cond_25
    move/from16 v19, v9

    :goto_1d
    const-wide/16 v5, 0x608

    and-long/2addr v5, v2

    cmp-long v5, v5, v26

    if-eqz v5, :cond_26

    .line 425
    iget-object v5, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->fragranceLevel:Lcom/geely/hvac/component/FragranceLeveView;

    invoke-static {v5, v11}, Lcom/geely/hvac/component/FragranceLeveView;->bind(Lcom/geely/hvac/component/FragranceLeveView;I)V

    :cond_26
    if-eqz v13, :cond_27

    .line 430
    iget-object v5, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->fragranceLevel:Lcom/geely/hvac/component/FragranceLeveView;

    invoke-static {v5, v15}, Lcom/geely/hvac/component/FragranceLeveView;->bindEnable(Lcom/geely/hvac/component/FragranceLeveView;Z)V

    :cond_27
    const-wide/16 v5, 0x620

    and-long/2addr v5, v2

    const-wide/16 v22, 0x0

    cmp-long v5, v5, v22

    if-eqz v5, :cond_28

    .line 435
    iget-object v5, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->fragranceLevel:Lcom/geely/hvac/component/FragranceLeveView;

    invoke-static {v5, v10}, Lcom/geely/hvac/component/FragranceLeveView;->bind(Lcom/geely/hvac/component/FragranceLeveView;Z)V

    .line 436
    iget-object v5, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mboundView2:Lcom/geely/hvac/component/FragranceType;

    invoke-static {v5, v10}, Lcom/geely/hvac/component/FragranceType;->bindFragranceState(Lcom/geely/hvac/component/FragranceType;Z)V

    :cond_28
    const-wide/16 v5, 0x680

    and-long/2addr v5, v2

    cmp-long v5, v5, v22

    if-eqz v5, :cond_29

    .line 441
    iget-object v5, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->fragranceLevel:Lcom/geely/hvac/component/FragranceLeveView;

    invoke-static {v5, v8}, Lcom/geely/hvac/component/FragranceLeveView;->bind(Lcom/geely/hvac/component/FragranceLeveView;[I)V

    :cond_29
    and-long v5, v2, v16

    cmp-long v5, v5, v22

    if-eqz v5, :cond_2a

    .line 446
    iget-object v5, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mboundView2:Lcom/geely/hvac/component/FragranceType;

    invoke-static {v5, v0}, Lcom/geely/hvac/component/FragranceType;->bindFragranceLevelEnable(Lcom/geely/hvac/component/FragranceType;Z)V

    :cond_2a
    if-eqz v18, :cond_2b

    .line 451
    iget-object v0, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mboundView2:Lcom/geely/hvac/component/FragranceType;

    invoke-static {v0, v4}, Lcom/geely/hvac/component/FragranceType;->bind(Lcom/geely/hvac/component/FragranceType;Z)V

    :cond_2b
    and-long v4, v2, v20

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_2c

    .line 456
    iget-object v0, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mboundView2:Lcom/geely/hvac/component/FragranceType;

    invoke-static {v0, v8, v7, v14}, Lcom/geely/hvac/component/FragranceType;->bind(Lcom/geely/hvac/component/FragranceType;[I[Ljava/lang/String;[I)V

    :cond_2c
    const-wide/16 v4, 0x610

    and-long/2addr v2, v4

    cmp-long v0, v2, v9

    if-eqz v0, :cond_2d

    .line 461
    iget-object v0, v1, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mboundView2:Lcom/geely/hvac/component/FragranceType;

    move/from16 v9, v19

    invoke-static {v0, v9, v12}, Lcom/geely/hvac/component/FragranceType;->bind(Lcom/geely/hvac/component/FragranceType;ILcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;)V

    :cond_2d
    return-void

    :catchall_0
    move-exception v0

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    monitor-exit p0

    return v0

    .line 62
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

    .line 50
    monitor-enter p0

    const-wide/16 v0, 0x400

    .line 51
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 52
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

    .line 107
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceTypeIds(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 103
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceTypes(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 101
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceState(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 99
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceSlotIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 97
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceLevel(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 95
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceLevelSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 93
    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceSlotIndexSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 91
    :pswitch_8
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->onChangeModelFragranceImages(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 79
    iput-object p1, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->mDirtyFlags:J

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 83
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->notifyPropertyChanged(I)V

    .line 84
    invoke-super {p0}, Lcom/geely/hvac/databinding/PagerItemFragranceBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 82
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

    .line 70
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/PagerItemFragranceBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
