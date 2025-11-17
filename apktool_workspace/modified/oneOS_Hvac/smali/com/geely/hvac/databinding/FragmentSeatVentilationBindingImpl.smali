.class public Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;
.super Lcom/geely/hvac/databinding/FragmentSeatVentilationBinding;
.source "FragmentSeatVentilationBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;,
        Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelRow1RightAutoSeatVentilateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;

.field private mModelRow1RightSeatVentilateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090237

    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

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

    .line 34
    sget-object v0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x2

    .line 37
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    const/4 v4, 0x7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/psd/component/PsdSeatVentilateLevel;Lcom/geely/hvac/trackballview/TrackballHmiImageView;)V

    const-wide/16 v0, -0x1

    .line 532
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 44
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    .line 46
    invoke-virtual {p1, v0}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->psdRow1RightSeatWindStatus:Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetRow1RightSeatVentilateAuto(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatVentilateAuto",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 134
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

.method private onChangeModelGetRow1RightSeatVentilateAuto1(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatVentilateAuto",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 170
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

.method private onChangeModelGetSeatWindAutoMode(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSeatWindAutoMode",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 125
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

.method private onChangeModelHvacEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelHvacEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1RightSeatVentilateAutoSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatVentilateAutoSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 143
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

.method private onChangeModelRow1RightSeatVentilateLevel(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatVentilateLevel",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 161
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

.method private onChangeModelRow1RightSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatVentilateSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 152
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
    .locals 38

    move-object/from16 v1, p0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 181
    iput-wide v4, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v7, 0x1ff

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    const-wide/16 v11, 0x180

    const-wide/16 v13, 0x190

    const-wide/16 v15, 0x1c2

    const-wide/16 v17, 0x400

    const-wide/32 v19, 0x100000

    const/4 v6, 0x4

    const-wide/16 v22, 0x18d

    const-wide/16 v24, 0x1b1

    const/16 v26, 0x0

    const/4 v8, 0x0

    if-eqz v7, :cond_19

    const-wide/16 v27, 0x1bd

    and-long v27, v2, v27

    cmp-long v7, v27, v4

    if-eqz v7, :cond_5

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getHvacEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v26

    .line 222
    :goto_0
    invoke-virtual {v1, v8, v7}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 227
    invoke-virtual {v7}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    and-long v27, v2, v24

    cmp-long v27, v27, v4

    if-eqz v27, :cond_3

    if-eqz v7, :cond_2

    or-long v2, v2, v17

    goto :goto_2

    :cond_2
    const-wide/16 v27, 0x200

    or-long v2, v2, v27

    :cond_3
    :goto_2
    and-long v27, v2, v22

    cmp-long v27, v27, v4

    if-eqz v27, :cond_6

    if-eqz v7, :cond_4

    or-long v2, v2, v19

    goto :goto_3

    :cond_4
    const-wide/32 v27, 0x80000

    or-long v2, v2, v27

    goto :goto_3

    :cond_5
    move v7, v8

    :cond_6
    :goto_3
    and-long v27, v2, v15

    cmp-long v27, v27, v4

    if-eqz v27, :cond_9

    if-eqz v0, :cond_7

    .line 250
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatWindAutoMode()Landroidx/databinding/ObservableInt;

    move-result-object v27

    .line 252
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateAuto()Landroidx/databinding/ObservableInt;

    move-result-object v28

    move-object/from16 v8, v27

    move-object/from16 v15, v28

    goto :goto_4

    :cond_7
    move-object/from16 v8, v26

    move-object v15, v8

    :goto_4
    const/4 v9, 0x1

    .line 254
    invoke-virtual {v1, v9, v8}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v9, 0x6

    .line 255
    invoke-virtual {v1, v9, v15}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_8

    .line 260
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    if-eqz v15, :cond_a

    .line 264
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :cond_a
    const/4 v9, 0x0

    :goto_6
    and-long v15, v2, v13

    cmp-long v10, v15, v4

    if-eqz v10, :cond_11

    if-eqz v0, :cond_b

    .line 271
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateSupported()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_7

    :cond_b
    move-object/from16 v15, v26

    .line 273
    :goto_7
    invoke-virtual {v1, v6, v15}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_c

    .line 278
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v16

    move/from16 v13, v16

    goto :goto_8

    :cond_c
    const/4 v13, 0x0

    :goto_8
    if-eqz v0, :cond_d

    .line 284
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v14

    goto :goto_9

    :cond_d
    const/4 v14, 0x0

    :goto_9
    if-eqz v10, :cond_f

    if-eqz v14, :cond_e

    const-wide/32 v31, 0x10000

    goto :goto_a

    :cond_e
    const-wide/32 v31, 0x8000

    :goto_a
    or-long v2, v2, v31

    :cond_f
    if-eqz v14, :cond_10

    const/4 v10, 0x0

    goto :goto_b

    :cond_10
    move v10, v6

    goto :goto_b

    :cond_11
    move-object/from16 v15, v26

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_b
    and-long v31, v2, v11

    cmp-long v14, v31, v4

    if-eqz v14, :cond_14

    if-eqz v0, :cond_14

    .line 303
    iget-object v14, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mModelRow1RightAutoSeatVentilateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;

    if-nez v14, :cond_12

    new-instance v14, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;

    invoke-direct {v14}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v14, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mModelRow1RightAutoSeatVentilateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;

    :cond_12
    invoke-virtual {v14, v0}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl;

    move-result-object v14

    .line 305
    iget-object v11, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mModelRow1RightSeatVentilateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;

    if-nez v11, :cond_13

    new-instance v11, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;

    invoke-direct {v11}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v11, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mModelRow1RightSeatVentilateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;

    :cond_13
    invoke-virtual {v11, v0}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl$OnClickListenerImpl1;

    move-result-object v11

    goto :goto_c

    :cond_14
    move-object/from16 v11, v26

    move-object v14, v11

    :goto_c
    const-wide/16 v29, 0x1a0

    and-long v33, v2, v29

    cmp-long v12, v33, v4

    if-eqz v12, :cond_18

    if-eqz v0, :cond_15

    .line 312
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateLevel()Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_d

    :cond_15
    move-object/from16 v12, v26

    :goto_d
    const/4 v6, 0x5

    .line 314
    invoke-virtual {v1, v6, v12}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_16

    .line 319
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    if-eqz v0, :cond_17

    .line 325
    invoke-virtual {v0, v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatWindBgAlpha(I)F

    move-result v21

    move/from16 v37, v8

    move v8, v7

    move/from16 v7, v21

    move-object/from16 v21, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v9

    move/from16 v9, v37

    goto :goto_10

    :cond_17
    move-object/from16 v21, v15

    move-object v15, v14

    move v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v9

    goto :goto_f

    :cond_18
    move-object v12, v11

    move-object/from16 v21, v15

    const/4 v6, 0x0

    move v11, v10

    move-object v15, v14

    move v10, v9

    move v14, v13

    move-object/from16 v13, v26

    :goto_f
    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    goto :goto_10

    :cond_19
    move-object/from16 v12, v26

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v21, v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_10
    and-long v19, v2, v19

    cmp-long v19, v19, v4

    if-eqz v19, :cond_1c

    if-eqz v0, :cond_1a

    .line 335
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateAutoSupported()Landroidx/databinding/ObservableInt;

    move-result-object v19

    move-object/from16 v4, v19

    goto :goto_11

    :cond_1a
    move-object/from16 v4, v26

    :goto_11
    const/4 v5, 0x3

    .line 337
    invoke-virtual {v1, v5, v4}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_1b

    .line 342
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_12

    :cond_1b
    const/4 v4, 0x0

    :goto_12
    if-eqz v0, :cond_1c

    .line 348
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v4

    goto :goto_13

    :cond_1c
    const/4 v4, 0x0

    :goto_13
    and-long v17, v2, v17

    const-wide/16 v19, 0x0

    cmp-long v5, v17, v19

    if-eqz v5, :cond_1f

    if-eqz v0, :cond_1d

    .line 355
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateSupported()Landroidx/databinding/ObservableInt;

    move-result-object v21

    :cond_1d
    move/from16 v16, v4

    move-object/from16 v5, v21

    const/4 v4, 0x4

    .line 357
    invoke-virtual {v1, v4, v5}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_1e

    .line 362
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    :cond_1e
    if-eqz v0, :cond_20

    .line 368
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v4

    goto :goto_14

    :cond_1f
    move/from16 v16, v4

    :cond_20
    const/4 v4, 0x0

    :goto_14
    and-long v17, v2, v24

    const-wide/16 v19, 0x0

    cmp-long v5, v17, v19

    const-wide/16 v17, 0x1000

    if-eqz v5, :cond_23

    if-eqz v8, :cond_21

    goto :goto_15

    :cond_21
    const/4 v4, 0x0

    :goto_15
    if-eqz v5, :cond_24

    if-eqz v4, :cond_22

    or-long v2, v2, v17

    goto :goto_16

    :cond_22
    const-wide/16 v33, 0x800

    or-long v2, v2, v33

    goto :goto_16

    :cond_23
    const/4 v4, 0x0

    :cond_24
    :goto_16
    and-long v33, v2, v22

    const-wide/16 v19, 0x0

    cmp-long v5, v33, v19

    const-wide/32 v33, 0x40000

    if-eqz v5, :cond_27

    if-eqz v8, :cond_25

    goto :goto_17

    :cond_25
    const/16 v16, 0x0

    :goto_17
    if-eqz v5, :cond_28

    if-eqz v16, :cond_26

    or-long v2, v2, v33

    goto :goto_18

    :cond_26
    const-wide/32 v35, 0x20000

    or-long v2, v2, v35

    goto :goto_18

    :cond_27
    const/16 v16, 0x0

    :cond_28
    :goto_18
    and-long v33, v2, v33

    const-wide/16 v19, 0x0

    cmp-long v5, v33, v19

    if-eqz v5, :cond_2b

    if-eqz v0, :cond_29

    .line 404
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateAuto()Landroidx/databinding/ObservableInt;

    move-result-object v26

    :cond_29
    move-object/from16 v5, v26

    const/4 v8, 0x2

    .line 406
    invoke-virtual {v1, v8, v5}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_2a

    .line 411
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_19

    :cond_2a
    const/4 v5, 0x0

    :goto_19
    if-eqz v0, :cond_2b

    .line 417
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isAutoNotError(I)Z

    move-result v5

    goto :goto_1a

    :cond_2b
    const/4 v5, 0x0

    :goto_1a
    and-long v17, v2, v17

    const-wide/16 v19, 0x0

    cmp-long v8, v17, v19

    if-eqz v8, :cond_2e

    if-eqz v0, :cond_2c

    .line 424
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateLevel()Landroidx/databinding/ObservableInt;

    move-result-object v13

    :cond_2c
    const/4 v8, 0x5

    .line 426
    invoke-virtual {v1, v8, v13}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_2d

    .line 431
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    :cond_2d
    if-eqz v0, :cond_2e

    .line 437
    invoke-virtual {v0, v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatVentilateOn(I)Z

    move-result v0

    goto :goto_1b

    :cond_2e
    const/4 v0, 0x0

    :goto_1b
    and-long v13, v2, v24

    const-wide/16 v17, 0x0

    cmp-long v8, v13, v17

    if-eqz v8, :cond_33

    if-eqz v4, :cond_2f

    goto :goto_1c

    :cond_2f
    const/4 v0, 0x0

    :goto_1c
    if-eqz v8, :cond_31

    if-eqz v0, :cond_30

    const-wide/16 v13, 0x4000

    goto :goto_1d

    :cond_30
    const-wide/16 v13, 0x2000

    :goto_1d
    or-long/2addr v2, v13

    :cond_31
    if-eqz v0, :cond_32

    goto :goto_1e

    :cond_32
    const/16 v0, 0x8

    goto :goto_1f

    :cond_33
    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    and-long v13, v2, v22

    const-wide/16 v17, 0x0

    cmp-long v8, v13, v17

    if-eqz v8, :cond_34

    if-eqz v16, :cond_34

    goto :goto_20

    :cond_34
    const/4 v5, 0x0

    :goto_20
    const-wide/16 v13, 0x1a0

    and-long/2addr v13, v2

    cmp-long v13, v13, v17

    if-eqz v13, :cond_36

    .line 466
    invoke-static {}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->getBuildSdkInt()I

    move-result v13

    const/16 v14, 0xb

    if-lt v13, v14, :cond_35

    .line 468
    iget-object v13, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v13, v7}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setAlpha(F)V

    .line 472
    :cond_35
    iget-object v7, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->psdRow1RightSeatWindStatus:Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;

    invoke-static {v7, v6}, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;I)V

    :cond_36
    and-long v6, v2, v24

    const-wide/16 v13, 0x0

    cmp-long v6, v6, v13

    if-eqz v6, :cond_37

    .line 477
    iget-object v6, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v6, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_37
    const-wide/16 v6, 0x180

    and-long/2addr v6, v2

    cmp-long v0, v6, v13

    if-eqz v0, :cond_38

    .line 482
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v0, v15}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->psdRow1RightSeatWindStatus:Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;

    invoke-virtual {v0, v12}, Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    const-wide/16 v6, 0x190

    and-long/2addr v6, v2

    cmp-long v0, v6, v13

    if-eqz v0, :cond_39

    .line 488
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v0, v11}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setVisibility(I)V

    .line 489
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->psdRow1RightSeatWindStatus:Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;

    invoke-virtual {v0, v11}, Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;->setVisibility(I)V

    :cond_39
    if-eqz v8, :cond_3a

    .line 494
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-static {v0, v5}, Lcom/geely/hvac/component/TextViewWithBg;->bindEnable(Lcom/geely/hvac/component/TextViewWithBg;Z)V

    :cond_3a
    const-wide/16 v5, 0x1c2

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3b

    .line 499
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-static {v0, v10, v9}, Lcom/geely/hvac/component/TextViewWithBg;->bindSeatLevel(Lcom/geely/hvac/component/TextViewWithBg;II)V

    :cond_3b
    const-wide/16 v5, 0x191

    and-long/2addr v2, v5

    cmp-long v0, v2, v7

    if-eqz v0, :cond_3c

    .line 504
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->psdRow1RightSeatWindStatus:Lcom/geely/hvac/psd/component/PsdSeatVentilateLevel;

    invoke-static {v0, v4}, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;Z)V

    :cond_3c
    return-void

    :catchall_0
    move-exception v0

    .line 182
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65
    monitor-exit p0

    return v0

    .line 67
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

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 56
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 57
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

    .line 108
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->onChangeModelGetRow1RightSeatVentilateAuto1(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->onChangeModelRow1RightSeatVentilateLevel(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->onChangeModelRow1RightSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->onChangeModelRow1RightSeatVentilateAutoSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->onChangeModelGetRow1RightSeatVentilateAuto(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->onChangeModelGetSeatWindAutoMode(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 96
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->onChangeModelHvacEnable(Landroidx/databinding/ObservableBoolean;I)Z

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

    .line 84
    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 88
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 87
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

    .line 75
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatVentilationBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
