.class public Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;
.super Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBinding;
.source "FragmentSeatPhysicalTherapyBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelPhysiotherapyStateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView2:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

.field private final mboundView3:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

.field private final mboundView5:Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;


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

    .line 36
    sget-object v0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2
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

    .line 39
    aget-object v1, p3, v0

    check-cast v1, Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/trackballview/TrackballHmiImageView;)V

    const-wide/16 v0, -0x1

    .line 442
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 45
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView2:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    .line 47
    invoke-virtual {p1, v0}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 48
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    .line 49
    invoke-virtual {p1, v0}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 50
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;

    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView5:Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;

    .line 51
    invoke-virtual {p1, v0}, Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->row1RightPhysiotherapy:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetPhysiotherapyStateGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetPhysiotherapyStateGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetPhysiotherapyTypeGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetPhysiotherapyTypeGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetPhysiotherapyTypesGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetPhysiotherapyTypesGlyCarAreaIdSEATROW1RIGHT",
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

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 40

    move-object/from16 v1, p0

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 153
    iput-wide v4, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v7, 0x3f

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    const-wide/32 v12, 0x8000

    const-wide/16 v14, 0x34

    const-wide/16 v16, 0x32

    const-wide/16 v19, 0x31

    const-wide/16 v21, 0x30

    const-wide/16 v23, 0x38

    const/16 v25, 0x8

    const-wide/16 v26, 0x3c

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-eqz v7, :cond_19

    and-long v31, v2, v21

    cmp-long v7, v31, v4

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 187
    iget-object v7, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mModelPhysiotherapyStateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;

    if-nez v7, :cond_0

    new-instance v7, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;

    invoke-direct {v7}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v7, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mModelPhysiotherapyStateClickAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;

    :cond_0
    invoke-virtual {v7, v0}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl$OnClickListenerImpl;

    move-result-object v7

    .line 189
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyTypeChangeListener()Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

    move-result-object v31

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/16 v31, 0x0

    :goto_0
    and-long v32, v2, v19

    cmp-long v32, v32, v4

    if-eqz v32, :cond_3

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyType(I)Landroidx/databinding/ObservableInt;

    move-result-object v32

    move-object/from16 v8, v32

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 198
    :goto_1
    invoke-virtual {v1, v11, v8}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_3

    .line 203
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v11

    :goto_2
    and-long v34, v2, v16

    cmp-long v9, v34, v4

    if-eqz v9, :cond_5

    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyTypes(I)Landroidx/databinding/ObservableField;

    move-result-object v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    const/4 v11, 0x1

    .line 212
    invoke-virtual {v1, v11, v9}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_5

    .line 217
    invoke-virtual {v9}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    and-long v35, v2, v26

    cmp-long v11, v35, v4

    if-eqz v11, :cond_12

    if-eqz v0, :cond_6

    const v6, 0x2d500100

    .line 224
    invoke-virtual {v0, v6, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    const/4 v10, 0x2

    .line 226
    invoke-virtual {v1, v10, v6}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_7

    .line 231
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    if-eqz v0, :cond_8

    .line 237
    invoke-virtual {v0, v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v10

    .line 239
    invoke-virtual {v0, v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v37

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    const/16 v37, 0x0

    :goto_7
    if-eqz v11, :cond_a

    if-eqz v10, :cond_9

    const-wide/16 v38, 0x200

    goto :goto_8

    :cond_9
    const-wide/16 v38, 0x100

    :goto_8
    or-long v2, v2, v38

    :cond_a
    and-long v38, v2, v26

    cmp-long v11, v38, v4

    if-eqz v11, :cond_c

    if-eqz v37, :cond_b

    const-wide/16 v38, 0x800

    or-long v2, v2, v38

    or-long/2addr v2, v12

    goto :goto_9

    :cond_b
    const-wide/16 v38, 0x400

    or-long v2, v2, v38

    const-wide/16 v38, 0x4000

    or-long v2, v2, v38

    :cond_c
    :goto_9
    and-long v38, v2, v14

    cmp-long v11, v38, v4

    if-eqz v11, :cond_11

    if-eqz v0, :cond_d

    .line 263
    invoke-virtual {v0, v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isLocationVisibility(I)Z

    move-result v18

    .line 265
    invoke-virtual {v0, v6}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isPsdActiveAlpha(I)F

    move-result v6

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    const/16 v18, 0x0

    :goto_a
    if-eqz v11, :cond_f

    if-eqz v18, :cond_e

    const-wide/32 v38, 0x80000

    goto :goto_b

    :cond_e
    const-wide/32 v38, 0x40000

    :goto_b
    or-long v2, v2, v38

    :cond_f
    if-eqz v18, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v11, v25

    goto :goto_d

    :cond_11
    const/4 v6, 0x0

    :goto_c
    const/4 v11, 0x0

    goto :goto_d

    :cond_12
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v37, 0x0

    :goto_d
    and-long v38, v2, v23

    cmp-long v18, v38, v4

    if-eqz v18, :cond_18

    if-eqz v0, :cond_13

    const/4 v14, 0x4

    .line 285
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyState(I)Landroidx/databinding/ObservableBoolean;

    move-result-object v15

    const/4 v14, 0x3

    goto :goto_e

    :cond_13
    const/4 v14, 0x3

    const/4 v15, 0x0

    .line 287
    :goto_e
    invoke-virtual {v1, v14, v15}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_14

    .line 292
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v14

    goto :goto_f

    :cond_14
    const/4 v14, 0x0

    :goto_f
    if-eqz v18, :cond_16

    if-eqz v14, :cond_15

    const-wide/16 v32, 0x2000

    or-long v2, v2, v32

    goto :goto_10

    :cond_15
    const-wide/16 v28, 0x1000

    or-long v2, v2, v28

    .line 305
    :cond_16
    :goto_10
    iget-object v12, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->row1RightPhysiotherapy:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v12}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v14, :cond_17

    const v13, 0x7f0701d3

    goto :goto_11

    :cond_17
    const v13, 0x7f0701d2

    :goto_11
    invoke-static {v12, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v13, v9

    move v9, v11

    move-object v11, v15

    move v15, v14

    move-object/from16 v14, v31

    goto :goto_12

    :cond_18
    move-object v13, v9

    move v9, v11

    move-object/from16 v14, v31

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto :goto_12

    :cond_19
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

    const/16 v37, 0x0

    :goto_12
    const-wide/32 v30, 0x8a00

    and-long v30, v2, v30

    cmp-long v18, v30, v4

    if-eqz v18, :cond_1e

    if-eqz v0, :cond_1a

    const/4 v4, 0x4

    .line 314
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysiotherapyState(I)Landroidx/databinding/ObservableBoolean;

    move-result-object v11

    :cond_1a
    const/4 v0, 0x3

    .line 316
    invoke-virtual {v1, v0, v11}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_1b

    .line 321
    invoke-virtual {v11}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v15

    :cond_1b
    and-long v4, v2, v23

    const-wide/16 v30, 0x0

    cmp-long v0, v4, v30

    if-eqz v0, :cond_1d

    if-eqz v15, :cond_1c

    const-wide/16 v4, 0x2000

    goto :goto_13

    :cond_1c
    const-wide/16 v4, 0x1000

    :goto_13
    or-long/2addr v2, v4

    :cond_1d
    const-wide/32 v4, 0x8000

    and-long/2addr v4, v2

    cmp-long v0, v4, v30

    if-eqz v0, :cond_1f

    xor-int/lit8 v0, v15, 0x1

    goto :goto_14

    :cond_1e
    move-wide/from16 v30, v4

    :cond_1f
    const/4 v0, 0x0

    :goto_14
    and-long v4, v2, v26

    cmp-long v4, v4, v30

    if-eqz v4, :cond_2c

    if-eqz v10, :cond_20

    move v5, v15

    goto :goto_15

    :cond_20
    const/4 v5, 0x0

    :goto_15
    if-eqz v37, :cond_21

    goto :goto_16

    :cond_21
    const/4 v15, 0x0

    :goto_16
    if-eqz v37, :cond_22

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    :goto_17
    if-eqz v4, :cond_24

    if-eqz v5, :cond_23

    const-wide/16 v10, 0x80

    goto :goto_18

    :cond_23
    const-wide/16 v10, 0x40

    :goto_18
    or-long/2addr v2, v10

    :cond_24
    and-long v10, v2, v26

    const-wide/16 v28, 0x0

    cmp-long v4, v10, v28

    if-eqz v4, :cond_26

    if-eqz v15, :cond_25

    const-wide/32 v10, 0x200000

    goto :goto_19

    :cond_25
    const-wide/32 v10, 0x100000

    :goto_19
    or-long/2addr v2, v10

    :cond_26
    and-long v10, v2, v26

    cmp-long v4, v10, v28

    if-eqz v4, :cond_28

    if-eqz v0, :cond_27

    const-wide/32 v10, 0x20000

    goto :goto_1a

    :cond_27
    const-wide/32 v10, 0x10000

    :goto_1a
    or-long/2addr v2, v10

    :cond_28
    if-eqz v5, :cond_29

    const/4 v4, 0x0

    goto :goto_1b

    :cond_29
    move/from16 v4, v25

    :goto_1b
    if-eqz v15, :cond_2a

    const/4 v5, 0x0

    goto :goto_1c

    :cond_2a
    move/from16 v5, v25

    :goto_1c
    if-eqz v0, :cond_2b

    const/16 v25, 0x0

    :cond_2b
    move v11, v4

    move/from16 v0, v25

    goto :goto_1d

    :cond_2c
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1d
    and-long v25, v2, v26

    const-wide/16 v27, 0x0

    cmp-long v4, v25, v27

    if-eqz v4, :cond_2d

    .line 384
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v4, v11}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 385
    iget-object v4, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView2:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v4, v0}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setVisibility(I)V

    .line 386
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v0, v5}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setVisibility(I)V

    :cond_2d
    const-wide/16 v4, 0x34

    and-long/2addr v4, v2

    cmp-long v0, v4, v27

    if-eqz v0, :cond_2f

    .line 390
    invoke-static {}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->getBuildSdkInt()I

    move-result v0

    const/16 v4, 0xb

    if-lt v0, v4, :cond_2e

    .line 392
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView2:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v0, v6}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setAlpha(F)V

    .line 393
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView3:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v0, v6}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setAlpha(F)V

    .line 394
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->row1RightPhysiotherapy:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v0, v6}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setAlpha(F)V

    .line 398
    :cond_2e
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->row1RightPhysiotherapy:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v0, v9}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setVisibility(I)V

    :cond_2f
    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_30

    .line 403
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView5:Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;->setTag(Ljava/lang/Object;)V

    .line 404
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->row1RightPhysiotherapy:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setTag(Ljava/lang/Object;)V

    :cond_30
    and-long v4, v2, v19

    cmp-long v0, v4, v9

    if-eqz v0, :cond_31

    .line 409
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView5:Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;

    invoke-static {v0, v8}, Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;->bind(Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;I)V

    :cond_31
    and-long v4, v2, v21

    cmp-long v0, v4, v9

    if-eqz v0, :cond_32

    .line 414
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView5:Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;

    invoke-static {v0, v14}, Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;->bind(Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;)V

    .line 415
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->row1RightPhysiotherapy:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-virtual {v0, v7}, Lcom/geely/hvac/trackballview/TrackballHmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_32
    and-long v4, v2, v16

    cmp-long v0, v4, v9

    if-eqz v0, :cond_33

    .line 420
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mboundView5:Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;

    invoke-static {v0, v13}, Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;->bind(Lcom/geely/hvac/psd/component/PsdPhysiotherapyType;[I)V

    :cond_33
    and-long v2, v2, v23

    cmp-long v0, v2, v9

    if-eqz v0, :cond_34

    .line 425
    iget-object v0, v1, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->row1RightPhysiotherapy:Lcom/geely/hvac/trackballview/TrackballHmiImageView;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_34
    return-void

    :catchall_0
    move-exception v0

    .line 154
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
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x20

    .line 61
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->requestRebind()V

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

    .line 107
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->onChangeModelGetPhysiotherapyStateGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 105
    :cond_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 103
    :cond_2
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->onChangeModelGetPhysiotherapyTypesGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 101
    :cond_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->onChangeModelGetPhysiotherapyTypeGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1
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

    .line 89
    iput-object p1, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 93
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
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

    .line 80
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/FragmentSeatPhysicalTherapyBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
