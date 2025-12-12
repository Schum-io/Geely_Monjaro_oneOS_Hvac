.class public Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;
.super Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
.source "FragmentSeatLocationBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;,
        Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;

.field private mModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


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
    sget-object v0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15
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

    move-object v14, p0

    const/16 v0, 0x8

    .line 32
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v3, 0x7

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;)V

    const-wide/16 v0, -0x1

    .line 616
    iput-wide v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    .line 44
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 50
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v14, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 56
    invoke-virtual {p0, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetRow1RightSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatBackrestSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetRow1RightSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow2RightSeatLegSupportHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow2RightSeatLegSupportLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPOSITIONSAVEGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPOSITIONSAVEGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRightSaveSetPositionSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRightSaveSetPositionSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRightSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRightSeatSaveEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 51

    move-object/from16 v1, p0

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 189
    iput-wide v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    .line 190
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v7, 0x1ff

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    const-wide/16 v14, 0x180

    const-wide/16 v16, 0x184

    const-wide/16 v18, 0x182

    const-wide/16 v20, 0x181

    const-wide/16 v22, 0x400

    const-wide/16 v24, 0x198

    const/4 v6, 0x4

    const/16 v27, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_32

    and-long v30, v2, v20

    cmp-long v7, v30, v4

    if-eqz v7, :cond_6

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v30

    move-object/from16 v9, v30

    goto :goto_0

    :cond_0
    move-object/from16 v9, v27

    .line 241
    :goto_0
    invoke-virtual {v1, v8, v9}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_1

    .line 246
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    if-eqz v7, :cond_4

    if-eqz v9, :cond_3

    const-wide/32 v31, 0x400000

    goto :goto_3

    :cond_3
    const-wide/32 v31, 0x200000

    :goto_3
    or-long v2, v2, v31

    :cond_4
    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    const/16 v7, 0x8

    goto :goto_5

    :cond_6
    :goto_4
    move v7, v8

    :goto_5
    and-long v31, v2, v24

    cmp-long v9, v31, v4

    if-eqz v9, :cond_c

    if-eqz v0, :cond_9

    .line 271
    iget-object v8, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;

    if-nez v8, :cond_7

    new-instance v8, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;

    invoke-direct {v8}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;

    :cond_7
    invoke-virtual {v8, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl;

    move-result-object v8

    .line 273
    iget-object v12, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;

    if-nez v12, :cond_8

    new-instance v12, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;

    invoke-direct {v12}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v12, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;

    :cond_8
    invoke-virtual {v12, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl$OnClickListenerImpl1;

    move-result-object v12

    .line 275
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSeatSaveEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v13

    goto :goto_6

    :cond_9
    move-object/from16 v8, v27

    move-object v12, v8

    move-object v13, v12

    :goto_6
    const/4 v10, 0x3

    .line 277
    invoke-virtual {v1, v10, v13}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_a

    .line 282
    invoke-virtual {v13}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    :goto_7
    if-eqz v9, :cond_d

    if-eqz v10, :cond_b

    or-long v2, v2, v22

    goto :goto_8

    :cond_b
    const-wide/16 v36, 0x200

    or-long v2, v2, v36

    goto :goto_8

    :cond_c
    move-object/from16 v8, v27

    move-object v12, v8

    const/4 v10, 0x0

    :cond_d
    :goto_8
    and-long v36, v2, v18

    cmp-long v9, v36, v4

    if-eqz v9, :cond_14

    if-eqz v0, :cond_e

    const v11, 0x2d400100

    .line 297
    invoke-virtual {v0, v11, v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v11

    goto :goto_9

    :cond_e
    move-object/from16 v11, v27

    :goto_9
    const/4 v13, 0x1

    .line 299
    invoke-virtual {v1, v13, v11}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_f

    .line 304
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_a

    :cond_f
    const/4 v11, 0x0

    :goto_a
    if-eqz v0, :cond_10

    .line 310
    invoke-virtual {v0, v11}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v11

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    :goto_b
    if-eqz v9, :cond_12

    if-eqz v11, :cond_11

    const-wide/32 v36, 0x10000

    goto :goto_c

    :cond_11
    const-wide/32 v36, 0x8000

    :goto_c
    or-long v2, v2, v36

    :cond_12
    if-eqz v11, :cond_13

    goto :goto_d

    :cond_13
    const/16 v9, 0x8

    goto :goto_e

    :cond_14
    :goto_d
    const/4 v9, 0x0

    :goto_e
    and-long v36, v2, v14

    cmp-long v11, v36, v4

    if-eqz v11, :cond_15

    if-eqz v0, :cond_15

    .line 329
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportLengthBackwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v11

    .line 331
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportHeightDownListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v13

    .line 333
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatBackrestUpListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v36

    .line 335
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLengthBackwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v37

    .line 337
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportHeightUpListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v38

    .line 339
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLegSupportLengthForwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v39

    .line 341
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatLengthForwardListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v40

    .line 343
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatBackrestDownListener()Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    move-result-object v41

    goto :goto_f

    :cond_15
    move-object/from16 v11, v27

    move-object v13, v11

    move-object/from16 v36, v13

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    :goto_f
    and-long v42, v2, v16

    cmp-long v42, v42, v4

    if-eqz v42, :cond_1c

    if-eqz v0, :cond_16

    .line 350
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatBackrestSupport()Landroidx/databinding/ObservableInt;

    move-result-object v43

    move-object/from16 v14, v43

    goto :goto_10

    :cond_16
    move-object/from16 v14, v27

    :goto_10
    const/4 v15, 0x2

    .line 352
    invoke-virtual {v1, v15, v14}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_17

    .line 357
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_11

    :cond_17
    const/4 v14, 0x0

    :goto_11
    if-eqz v0, :cond_18

    .line 363
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v14

    goto :goto_12

    :cond_18
    const/4 v14, 0x0

    :goto_12
    if-eqz v42, :cond_1a

    if-eqz v14, :cond_19

    const-wide/32 v44, 0x40000

    goto :goto_13

    :cond_19
    const-wide/32 v44, 0x20000

    :goto_13
    or-long v2, v2, v44

    :cond_1a
    if-eqz v14, :cond_1b

    goto :goto_14

    :cond_1b
    const/16 v14, 0x8

    goto :goto_15

    :cond_1c
    :goto_14
    const/4 v14, 0x0

    :goto_15
    const-wide/16 v34, 0x190

    and-long v44, v2, v34

    cmp-long v15, v44, v4

    if-eqz v15, :cond_23

    if-eqz v0, :cond_1d

    .line 382
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSaveSetPositionSupport()Landroidx/databinding/ObservableInt;

    move-result-object v42

    move-object/from16 v4, v42

    goto :goto_16

    :cond_1d
    move-object/from16 v4, v27

    .line 384
    :goto_16
    invoke-virtual {v1, v6, v4}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_1e

    .line 389
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_17

    :cond_1e
    const/4 v5, 0x0

    :goto_17
    if-eqz v0, :cond_1f

    .line 395
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v42

    goto :goto_18

    :cond_1f
    const/16 v42, 0x0

    :goto_18
    if-eqz v15, :cond_21

    if-eqz v42, :cond_20

    const-wide/32 v46, 0x1000000

    goto :goto_19

    :cond_20
    const-wide/32 v46, 0x800000

    :goto_19
    or-long v2, v2, v46

    :cond_21
    if-eqz v42, :cond_22

    goto :goto_1a

    :cond_22
    const/16 v15, 0x8

    goto :goto_1b

    :cond_23
    move-object/from16 v4, v27

    const/4 v5, 0x0

    :goto_1a
    const/4 v15, 0x0

    :goto_1b
    const-wide/16 v32, 0x1a0

    and-long v46, v2, v32

    const-wide/16 v44, 0x0

    cmp-long v42, v46, v44

    if-eqz v42, :cond_2a

    if-eqz v0, :cond_24

    .line 414
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v46

    move-object/from16 v47, v4

    move-object/from16 v6, v46

    goto :goto_1c

    :cond_24
    move-object/from16 v47, v4

    move-object/from16 v6, v27

    :goto_1c
    const/4 v4, 0x5

    .line 416
    invoke-virtual {v1, v4, v6}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_25

    .line 421
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_1d

    :cond_25
    const/4 v4, 0x0

    :goto_1d
    if-eqz v0, :cond_26

    .line 427
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v4

    goto :goto_1e

    :cond_26
    const/4 v4, 0x0

    :goto_1e
    if-eqz v42, :cond_28

    if-eqz v4, :cond_27

    const-wide/32 v48, 0x100000

    goto :goto_1f

    :cond_27
    const-wide/32 v48, 0x80000

    :goto_1f
    or-long v2, v2, v48

    :cond_28
    if-eqz v4, :cond_29

    goto :goto_20

    :cond_29
    const/16 v4, 0x8

    goto :goto_21

    :cond_2a
    move-object/from16 v47, v4

    :goto_20
    const/4 v4, 0x0

    :goto_21
    const-wide/16 v28, 0x1c0

    and-long v48, v2, v28

    const-wide/16 v44, 0x0

    cmp-long v6, v48, v44

    if-eqz v6, :cond_31

    if-eqz v0, :cond_2b

    .line 446
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v27

    :cond_2b
    move/from16 v42, v4

    move/from16 v48, v5

    move-object/from16 v4, v27

    const/4 v5, 0x6

    .line 448
    invoke-virtual {v1, v5, v4}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_2c

    .line 453
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_22

    :cond_2c
    const/4 v4, 0x0

    :goto_22
    if-eqz v0, :cond_2d

    .line 459
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v4

    goto :goto_23

    :cond_2d
    const/4 v4, 0x0

    :goto_23
    if-eqz v6, :cond_2f

    if-eqz v4, :cond_2e

    const-wide/16 v5, 0x4000

    goto :goto_24

    :cond_2e
    const-wide/16 v5, 0x2000

    :goto_24
    or-long/2addr v2, v5

    :cond_2f
    if-eqz v4, :cond_30

    const/16 v30, 0x0

    goto :goto_25

    :cond_30
    const/16 v30, 0x8

    :goto_25
    move-object/from16 v50, v8

    move-object/from16 v5, v37

    move-object/from16 v6, v40

    move-object/from16 v8, v41

    move/from16 v4, v42

    move-object/from16 v27, v47

    move/from16 v37, v15

    move-object/from16 v15, v39

    move-object/from16 v39, v12

    move-object/from16 v12, v36

    move/from16 v36, v7

    move-object/from16 v7, v38

    move/from16 v38, v9

    move/from16 v9, v30

    move/from16 v30, v48

    goto :goto_26

    :cond_31
    move/from16 v42, v4

    move/from16 v48, v5

    move-object/from16 v50, v8

    move-object/from16 v5, v37

    move-object/from16 v6, v40

    move-object/from16 v8, v41

    move-object/from16 v27, v47

    move/from16 v30, v48

    move/from16 v37, v15

    move-object/from16 v15, v39

    move-object/from16 v39, v12

    move-object/from16 v12, v36

    move/from16 v36, v7

    move-object/from16 v7, v38

    move/from16 v38, v9

    const/4 v9, 0x0

    goto :goto_26

    :cond_32
    move-object/from16 v5, v27

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v39, v15

    move-object/from16 v50, v39

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v30, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    :goto_26
    and-long v22, v2, v22

    const-wide/16 v40, 0x0

    cmp-long v22, v22, v40

    if-eqz v22, :cond_35

    if-eqz v0, :cond_33

    .line 481
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSaveSetPositionSupport()Landroidx/databinding/ObservableInt;

    move-result-object v27

    :cond_33
    move/from16 v23, v4

    move/from16 v22, v9

    move-object/from16 v9, v27

    const/4 v4, 0x4

    .line 483
    invoke-virtual {v1, v4, v9}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_34

    .line 488
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_27

    :cond_34
    move/from16 v4, v30

    :goto_27
    if-eqz v0, :cond_36

    .line 494
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_28

    :cond_35
    move/from16 v23, v4

    move/from16 v22, v9

    :cond_36
    const/4 v0, 0x0

    :goto_28
    and-long v40, v2, v24

    const-wide/16 v44, 0x0

    cmp-long v4, v40, v44

    if-eqz v4, :cond_3b

    if-eqz v10, :cond_37

    move/from16 v31, v0

    goto :goto_29

    :cond_37
    const/16 v31, 0x0

    :goto_29
    if-eqz v4, :cond_39

    if-eqz v31, :cond_38

    const-wide/16 v9, 0x1000

    goto :goto_2a

    :cond_38
    const-wide/16 v9, 0x800

    :goto_2a
    or-long/2addr v2, v9

    :cond_39
    if-eqz v31, :cond_3a

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2b

    :cond_3a
    const v0, 0x3e99999a    # 0.3f

    :goto_2b
    move/from16 v4, v31

    goto :goto_2c

    :cond_3b
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2c
    const-wide/16 v9, 0x100

    and-long/2addr v9, v2

    const-wide/16 v26, 0x0

    cmp-long v9, v9, v26

    if-eqz v9, :cond_3c

    .line 519
    iget-object v9, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v26, v4

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 520
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 521
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    const/16 v9, 0x40

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 522
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 523
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 524
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 525
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 526
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 527
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    .line 528
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setTag(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_3c
    move/from16 v26, v4

    :goto_2d
    and-long v9, v2, v16

    const-wide/16 v16, 0x0

    cmp-long v4, v9, v16

    if-eqz v4, :cond_3d

    .line 533
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v4, v14}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 534
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v4, v14}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_3d
    const-wide/16 v9, 0x180

    and-long/2addr v9, v2

    cmp-long v4, v9, v16

    if-eqz v4, :cond_3e

    .line 539
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v8}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 540
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->backrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v12}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 541
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v13}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 542
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v15}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 543
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v11}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 544
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v7}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 545
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v6}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    .line 546
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-static {v4, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    :cond_3e
    const-wide/16 v4, 0x1a0

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3f

    .line 551
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v5, v23

    invoke-virtual {v4, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 552
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v4, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_3f
    const-wide/16 v4, 0x1c0

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_40

    .line 557
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v5, v22

    invoke-virtual {v4, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 558
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->legRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v4, v5}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_40
    and-long v4, v2, v24

    cmp-long v4, v4, v6

    if-eqz v4, :cond_42

    .line 562
    invoke-static {}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->getBuildSdkInt()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_41

    .line 564
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v4, v0}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setAlpha(F)V

    .line 565
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v4, v0}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setAlpha(F)V

    .line 569
    :cond_41
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    move/from16 v4, v26

    invoke-virtual {v0, v4}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setFocusable(Z)V

    .line 570
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    move-object/from16 v12, v39

    invoke-static {v0, v12, v4}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 571
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v0, v4}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setFocusable(Z)V

    .line 572
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    move-object/from16 v8, v50

    invoke-static {v0, v8, v4}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_42
    and-long v4, v2, v18

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_43

    .line 577
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    move/from16 v9, v38

    invoke-virtual {v0, v9}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setVisibility(I)V

    :cond_43
    const-wide/16 v4, 0x190

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_44

    .line 582
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    move/from16 v15, v37

    invoke-virtual {v0, v15}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setVisibility(I)V

    :cond_44
    and-long v2, v2, v20

    cmp-long v0, v2, v6

    if-eqz v0, :cond_45

    .line 587
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    move/from16 v7, v36

    invoke-virtual {v0, v7}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    .line 588
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->seatRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    invoke-virtual {v0, v7}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setVisibility(I)V

    :cond_45
    return-void

    :catchall_0
    move-exception v0

    .line 190
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 73
    monitor-exit p0

    return v0

    .line 75
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

    .line 63
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 64
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 65
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

    .line 116
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->onChangeModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 114
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->onChangeModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 112
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->onChangeModelRightSaveSetPositionSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 110
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->onChangeModelRightSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->onChangeModelGetRow1RightSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPOSITIONSAVEGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->onChangeModelGetRow1RightSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z

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

    .line 92
    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 96
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->requestRebind()V

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

    .line 83
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatLocationBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
