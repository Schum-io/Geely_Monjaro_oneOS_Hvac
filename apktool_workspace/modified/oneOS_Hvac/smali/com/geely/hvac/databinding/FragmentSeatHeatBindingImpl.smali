.class public Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;
.super Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;
.source "FragmentSeatHeatBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;,
        Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelRow1RightAutoSeatHeatClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;

.field private mModelRow1RightSeatHeatClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090233

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
    sget-object v0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x4

    .line 37
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;

    const/4 v4, 0x7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/trackballview/TrackballHmiImageView;Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;)V

    const-wide/16 v0, -0x1

    .line 528
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 44
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 45
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    .line 46
    invoke-virtual {p1, v0}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->psdRow1RightSeatHeatStatus:Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetRow1RightSeatHeatAuto(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatHeatAuto",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetRow1RightSeatHeatAuto1(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatHeatAuto",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSeatHeatAutoMode(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSeatHeatAutoMode",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1RightSeatHeatAutoSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatHeatAutoSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1RightSeatHeatLevel(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatHeatLevel",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1RightSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatHeatSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 41

    move-object/from16 v1, p0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 181
    iput-wide v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const/4 v8, 0x2

    const-wide/16 v11, 0x184

    const-wide/16 v14, 0x18a

    const-wide/16 v16, 0x180

    const-wide/16 v18, 0x1000

    const-wide/16 v20, 0x400

    const-wide/16 v22, 0x1b1

    const-wide/16 v24, 0x1c5

    const/16 v26, 0x0

    const/4 v7, 0x0

    if-eqz v6, :cond_19

    const-wide/16 v27, 0x1f5

    and-long v27, v2, v27

    cmp-long v6, v27, v4

    if-eqz v6, :cond_5

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getHvacEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v6, v26

    .line 222
    :goto_0
    invoke-virtual {v1, v7, v6}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 227
    invoke-virtual {v6}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    and-long v27, v2, v22

    cmp-long v27, v27, v4

    if-eqz v27, :cond_3

    if-eqz v6, :cond_2

    or-long v2, v2, v20

    goto :goto_2

    :cond_2
    const-wide/16 v27, 0x200

    or-long v2, v2, v27

    :cond_3
    :goto_2
    and-long v27, v2, v24

    cmp-long v27, v27, v4

    if-eqz v27, :cond_6

    if-eqz v6, :cond_4

    or-long v2, v2, v18

    goto :goto_3

    :cond_4
    const-wide/16 v27, 0x800

    or-long v2, v2, v27

    goto :goto_3

    :cond_5
    move v6, v7

    :cond_6
    :goto_3
    and-long v27, v2, v16

    cmp-long v27, v27, v4

    if-eqz v27, :cond_9

    if-eqz v0, :cond_9

    .line 250
    iget-object v7, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mModelRow1RightSeatHeatClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;

    if-nez v7, :cond_7

    new-instance v7, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;

    invoke-direct {v7}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v7, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mModelRow1RightSeatHeatClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;

    :cond_7
    invoke-virtual {v7, v0}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl;

    move-result-object v7

    .line 252
    iget-object v13, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mModelRow1RightAutoSeatHeatClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;

    if-nez v13, :cond_8

    new-instance v13, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;

    invoke-direct {v13}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v13, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mModelRow1RightAutoSeatHeatClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;

    :cond_8
    invoke-virtual {v13, v0}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl$OnClickListenerImpl1;

    move-result-object v13

    goto :goto_4

    :cond_9
    move-object/from16 v7, v26

    move-object v13, v7

    :goto_4
    and-long v29, v2, v14

    cmp-long v29, v29, v4

    if-eqz v29, :cond_c

    if-eqz v0, :cond_a

    .line 259
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatHeatAutoMode()Landroidx/databinding/ObservableInt;

    move-result-object v29

    .line 261
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatAuto()Landroidx/databinding/ObservableInt;

    move-result-object v30

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    goto :goto_5

    :cond_a
    move-object/from16 v14, v26

    move-object v15, v14

    :goto_5
    const/4 v9, 0x1

    .line 263
    invoke-virtual {v1, v9, v14}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    const/4 v9, 0x3

    .line 264
    invoke-virtual {v1, v9, v15}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_b

    .line 269
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    if-eqz v15, :cond_d

    .line 273
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :cond_d
    const/4 v10, 0x0

    :goto_7
    and-long v14, v2, v11

    cmp-long v14, v14, v4

    if-eqz v14, :cond_10

    if-eqz v0, :cond_e

    .line 280
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatLevel()Landroidx/databinding/ObservableInt;

    move-result-object v14

    goto :goto_8

    :cond_e
    move-object/from16 v14, v26

    .line 282
    :goto_8
    invoke-virtual {v1, v8, v14}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_f

    .line 287
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    goto :goto_9

    :cond_f
    const/4 v15, 0x0

    :goto_9
    if-eqz v0, :cond_11

    .line 293
    invoke-virtual {v0, v15}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatHeatBg(I)I

    move-result v33

    const-wide/16 v31, 0x1c0

    goto :goto_a

    :cond_10
    move-object/from16 v14, v26

    const/4 v15, 0x0

    :cond_11
    const-wide/16 v31, 0x1c0

    const/16 v33, 0x0

    :goto_a
    and-long v34, v2, v31

    cmp-long v34, v34, v4

    if-eqz v34, :cond_18

    if-eqz v0, :cond_12

    .line 300
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatSupported()Landroidx/databinding/ObservableInt;

    move-result-object v35

    move-object/from16 v11, v35

    goto :goto_b

    :cond_12
    move-object/from16 v11, v26

    :goto_b
    const/4 v12, 0x6

    .line 302
    invoke-virtual {v1, v12, v11}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_13

    .line 307
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_c

    :cond_13
    const/4 v12, 0x0

    :goto_c
    if-eqz v0, :cond_14

    .line 313
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v36

    goto :goto_d

    :cond_14
    const/16 v36, 0x0

    :goto_d
    if-eqz v34, :cond_16

    if-eqz v36, :cond_15

    const-wide/32 v37, 0x10000

    goto :goto_e

    :cond_15
    const-wide/32 v37, 0x8000

    :goto_e
    or-long v2, v2, v37

    :cond_16
    if-eqz v36, :cond_17

    const/16 v34, 0x0

    goto :goto_f

    :cond_17
    const/16 v34, 0x4

    :goto_f
    move/from16 v39, v33

    move/from16 v40, v34

    goto :goto_11

    :cond_18
    move-object/from16 v11, v26

    move/from16 v39, v33

    const/4 v12, 0x0

    goto :goto_10

    :cond_19
    move-object/from16 v7, v26

    move-object v11, v7

    move-object v13, v11

    move-object v14, v13

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v39, 0x0

    :goto_10
    const/16 v40, 0x0

    :goto_11
    and-long v20, v2, v20

    cmp-long v20, v20, v4

    if-eqz v20, :cond_1c

    if-eqz v0, :cond_1a

    .line 335
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatAutoSupported()Landroidx/databinding/ObservableInt;

    move-result-object v20

    move-object/from16 v8, v20

    goto :goto_12

    :cond_1a
    move-object/from16 v8, v26

    :goto_12
    const/4 v4, 0x5

    .line 337
    invoke-virtual {v1, v4, v8}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_1b

    .line 342
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_13

    :cond_1b
    const/4 v4, 0x0

    :goto_13
    if-eqz v0, :cond_1c

    .line 348
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v4

    goto :goto_14

    :cond_1c
    const/4 v4, 0x0

    :goto_14
    and-long v18, v2, v18

    const-wide/16 v33, 0x0

    cmp-long v5, v18, v33

    if-eqz v5, :cond_1f

    if-eqz v0, :cond_1d

    .line 355
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatSupported()Landroidx/databinding/ObservableInt;

    move-result-object v11

    :cond_1d
    const/4 v5, 0x6

    .line 357
    invoke-virtual {v1, v5, v11}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_1e

    .line 362
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    :cond_1e
    if-eqz v0, :cond_1f

    .line 368
    invoke-virtual {v0, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v5

    goto :goto_15

    :cond_1f
    const/4 v5, 0x0

    :goto_15
    and-long v11, v2, v22

    const-wide/16 v18, 0x0

    cmp-long v8, v11, v18

    const-wide/32 v11, 0x100000

    if-eqz v8, :cond_22

    if-eqz v6, :cond_20

    goto :goto_16

    :cond_20
    const/4 v4, 0x0

    :goto_16
    if-eqz v8, :cond_23

    if-eqz v4, :cond_21

    or-long/2addr v2, v11

    goto :goto_17

    :cond_21
    const-wide/32 v18, 0x80000

    or-long v2, v2, v18

    goto :goto_17

    :cond_22
    const/4 v4, 0x0

    :cond_23
    :goto_17
    and-long v18, v2, v24

    const-wide/16 v33, 0x0

    cmp-long v8, v18, v33

    const-wide/32 v18, 0x40000

    if-eqz v8, :cond_26

    if-eqz v6, :cond_24

    goto :goto_18

    :cond_24
    const/4 v5, 0x0

    :goto_18
    if-eqz v8, :cond_27

    if-eqz v5, :cond_25

    or-long v2, v2, v18

    goto :goto_19

    :cond_25
    const-wide/32 v36, 0x20000

    or-long v2, v2, v36

    goto :goto_19

    :cond_26
    const/4 v5, 0x0

    :cond_27
    :goto_19
    and-long v18, v2, v18

    const-wide/16 v33, 0x0

    cmp-long v6, v18, v33

    if-eqz v6, :cond_2a

    if-eqz v0, :cond_28

    .line 404
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatLevel()Landroidx/databinding/ObservableInt;

    move-result-object v14

    :cond_28
    const/4 v6, 0x2

    .line 406
    invoke-virtual {v1, v6, v14}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_29

    .line 411
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    :cond_29
    if-eqz v0, :cond_2a

    .line 417
    invoke-virtual {v0, v15}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatOn(I)Z

    move-result v6

    goto :goto_1a

    :cond_2a
    const/4 v6, 0x0

    :goto_1a
    and-long/2addr v11, v2

    const-wide/16 v18, 0x0

    cmp-long v8, v11, v18

    if-eqz v8, :cond_2d

    if-eqz v0, :cond_2b

    .line 424
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatAuto()Landroidx/databinding/ObservableInt;

    move-result-object v26

    :cond_2b
    move-object/from16 v8, v26

    const/4 v11, 0x4

    .line 426
    invoke-virtual {v1, v11, v8}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_2c

    .line 431
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_1b

    :cond_2c
    const/4 v8, 0x0

    :goto_1b
    if-eqz v0, :cond_2d

    .line 437
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isAutoNotError(I)Z

    move-result v0

    goto :goto_1c

    :cond_2d
    const/4 v0, 0x0

    :goto_1c
    and-long v11, v2, v24

    const-wide/16 v18, 0x0

    cmp-long v8, v11, v18

    if-eqz v8, :cond_32

    if-eqz v5, :cond_2e

    goto :goto_1d

    :cond_2e
    const/4 v6, 0x0

    :goto_1d
    if-eqz v8, :cond_30

    if-eqz v6, :cond_2f

    const-wide/16 v11, 0x4000

    goto :goto_1e

    :cond_2f
    const-wide/16 v11, 0x2000

    :goto_1e
    or-long/2addr v2, v11

    :cond_30
    if-eqz v6, :cond_31

    goto :goto_1f

    :cond_31
    const/16 v6, 0x8

    goto :goto_20

    :cond_32
    :goto_1f
    const/4 v6, 0x0

    :goto_20
    and-long v11, v2, v22

    const-wide/16 v18, 0x0

    cmp-long v8, v11, v18

    if-eqz v8, :cond_33

    if-eqz v4, :cond_33

    goto :goto_21

    :cond_33
    const/4 v0, 0x0

    :goto_21
    and-long v11, v2, v24

    cmp-long v4, v11, v18

    if-eqz v4, :cond_34

    .line 467
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v4, v6}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_34
    const-wide/16 v11, 0x184

    and-long/2addr v11, v2

    cmp-long v4, v11, v18

    if-eqz v4, :cond_35

    .line 472
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    move/from16 v6, v39

    invoke-static {v4, v6}, Lcom/geely/hvac/component/ViewAdapter;->bindImageSrc(Landroid/widget/ImageView;I)V

    .line 473
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->psdRow1RightSeatHeatStatus:Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;

    invoke-static {v4, v15}, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;->bindSeatFeatureLevelLevel(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;I)V

    :cond_35
    and-long v11, v2, v16

    cmp-long v4, v11, v18

    if-eqz v4, :cond_36

    .line 478
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-virtual {v4, v13}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->psdRow1RightSeatHeatStatus:Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;

    invoke-virtual {v4, v7}, Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_36
    const-wide/16 v6, 0x1c0

    and-long/2addr v6, v2

    cmp-long v4, v6, v18

    if-eqz v4, :cond_37

    .line 484
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    move/from16 v6, v40

    invoke-virtual {v4, v6}, Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;->setVisibility(I)V

    .line 485
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->psdRow1RightSeatHeatStatus:Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;

    invoke-virtual {v4, v6}, Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;->setVisibility(I)V

    :cond_37
    if-eqz v8, :cond_38

    .line 490
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-static {v4, v0}, Lcom/geely/hvac/component/TextViewWithBg;->bindEnable(Lcom/geely/hvac/component/TextViewWithBg;Z)V

    :cond_38
    const-wide/16 v6, 0x18a

    and-long/2addr v6, v2

    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-eqz v0, :cond_39

    .line 495
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    invoke-static {v0, v10, v9}, Lcom/geely/hvac/component/TextViewWithBg;->bindSeatLevel(Lcom/geely/hvac/component/TextViewWithBg;II)V

    :cond_39
    const-wide/16 v6, 0x1c1

    and-long/2addr v2, v6

    cmp-long v0, v2, v11

    if-eqz v0, :cond_3a

    .line 500
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->psdRow1RightSeatHeatStatus:Lcom/geely/hvac/psd/component/PsdSeatHeatLevel;

    invoke-static {v0, v5}, Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;->bindSeatFeatureLevelEnable(Lcom/geely/hvac/psd/component/PsdSeatFeatureLevel;Z)V

    :cond_3a
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
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->requestRebind()V

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

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->onChangeModelRow1RightSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->onChangeModelRow1RightSeatHeatAutoSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->onChangeModelGetRow1RightSeatHeatAuto1(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->onChangeModelGetRow1RightSeatHeatAuto(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->onChangeModelRow1RightSeatHeatLevel(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->onChangeModelGetSeatHeatAutoMode(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 96
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->onChangeModelHvacEnable(Landroidx/databinding/ObservableBoolean;I)Z

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
    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 88
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lcom/geely/hvac/databinding/FragmentSeatHeatBinding;->requestRebind()V

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

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatHeatBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
