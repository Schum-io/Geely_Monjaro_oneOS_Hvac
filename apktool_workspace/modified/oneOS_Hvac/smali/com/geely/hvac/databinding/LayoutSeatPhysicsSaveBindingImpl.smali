.class public Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;
.source "LayoutSeatPhysicsSaveBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;,
        Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;,
        Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelHudSeatAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;

.field private mModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;

.field private mModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView1:Lcom/geely/hvac/component/SeatPositionSaveTab;

.field private final mboundView5:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView7:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView8:Landroidx/cardview/widget/CardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090151

    const/16 v2, 0xd

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090095

    const/16 v2, 0xe

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900b1

    const/16 v2, 0xf

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09019a

    const/16 v2, 0x10

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900b0

    const/16 v2, 0x11

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090335

    const/16 v2, 0x12

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09014d

    const/16 v2, 0x13

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09014c

    const/16 v2, 0x14

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09018c

    const/16 v2, 0x15

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09027b

    const/16 v2, 0x16

    .line 26
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

    .line 48
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 23
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

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0xe

    .line 51
    aget-object v4, p3, v4

    check-cast v4, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v5, 0x11

    aget-object v5, p3, v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v6, 0xf

    aget-object v6, p3, v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v7, 0x4

    aget-object v7, p3, v7

    check-cast v7, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v8, 0x14

    aget-object v8, p3, v8

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v9, 0x13

    aget-object v9, p3, v9

    check-cast v9, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v10, 0xd

    aget-object v10, p3, v10

    check-cast v10, Landroidx/cardview/widget/CardView;

    const/16 v11, 0x15

    aget-object v11, p3, v11

    check-cast v11, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v12, 0x10

    aget-object v12, p3, v12

    check-cast v12, Landroid/view/View;

    const/16 v13, 0xa

    aget-object v13, p3, v13

    check-cast v13, Lcom/geely/hvac/component/TextViewWithBg;

    const/4 v14, 0x3

    aget-object v14, p3, v14

    check-cast v14, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v15, 0xc

    aget-object v15, p3, v15

    check-cast v15, Lcom/geely/hvac/component/TextViewWithBg;

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Lcom/geely/hvac/component/TextViewWithBg;

    const/16 v17, 0x2

    aget-object v17, p3, v17

    check-cast v17, Lcom/geely/hvac/component/TextViewWithBg;

    const/16 v18, 0xb

    aget-object v18, p3, v18

    check-cast v18, Lcom/geely/hvac/component/TextViewWithBg;

    const/16 v19, 0x16

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/LinearLayout;

    const/16 v20, 0x6

    aget-object v20, p3, v20

    check-cast v20, Lcom/geely/hvac/component/ViewWithBackground;

    const/16 v21, 0x12

    aget-object v21, p3, v21

    check-cast v21, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v22, 0x9

    move/from16 v3, v22

    invoke-direct/range {v0 .. v21}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/cardview/widget/CardView;Lcom/geely/hvac/component/ViewWithBackground;Landroid/view/View;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/hvac/component/TextViewWithBg;Landroid/widget/LinearLayout;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 699
    iput-wide v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 71
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->hudBg:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 72
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 74
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/hvac/component/SeatPositionSaveTab;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView1:Lcom/geely/hvac/component/SeatPositionSaveTab;

    .line 75
    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/SeatPositionSaveTab;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 76
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView5:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 77
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 78
    aget-object v0, p3, v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView7:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 79
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 80
    aget-object v0, p3, v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView8:Landroidx/cardview/widget/CardView;

    .line 81
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->resetRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save1:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->saveRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v0, v2, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->swBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 89
    invoke-virtual {v2, v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDBRIGHTNESSADJUST(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDBRIGHTNESSADJUST",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDPOSITIONADJUST(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDPOSITIONADJUST",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 233
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

.method private onChangeModelLeftSaveSetPositionSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelLeftSaveSetPositionSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 206
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

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 215
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

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 197
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

.method private onChangeModelSeatPositionSaveSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSeatPositionSaveSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 179
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

.method private onChangeModelSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSeatSaveEnable",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 188
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

.method private onChangeModelSeatSaveTabIndex(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSeatSaveTabIndex",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 224
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

.method private onChangeModelSeatSaveTags(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSeatSaveTags",
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

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

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
    .locals 57

    move-object/from16 v1, p0

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 244
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v7, 0x7ff

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    const-wide/16 v10, 0x628

    const-wide/16 v12, 0x4000

    const-wide/16 v14, 0x604

    const-wide/32 v16, 0x400000

    const-wide/16 v18, 0x800

    const-wide/16 v20, 0x1000

    const-wide/16 v22, 0x602

    const-wide/32 v24, 0x40000

    const-wide/16 v26, 0x700

    const-wide/16 v28, 0x701

    const-wide/16 v30, 0x650

    const-wide/16 v32, 0x600

    const-wide/16 v35, 0x608

    const/4 v6, 0x1

    const/16 v38, 0x0

    if-eqz v7, :cond_2b

    and-long v41, v2, v22

    cmp-long v7, v41, v4

    if-eqz v7, :cond_1

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveTags()Landroidx/databinding/ObservableField;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, v38

    .line 295
    :goto_0
    invoke-virtual {v1, v6, v7}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_1

    .line 300
    invoke-virtual {v7}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v7, v38

    :goto_1
    and-long v41, v2, v35

    cmp-long v9, v41, v4

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    .line 307
    iget-object v9, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;

    if-nez v9, :cond_2

    new-instance v9, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;

    invoke-direct {v9}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v9, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModelSeatPositionSaveAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;

    :cond_2
    invoke-virtual {v9, v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl;

    move-result-object v9

    .line 309
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;

    if-nez v6, :cond_3

    new-instance v6, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;

    invoke-direct {v6}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v6, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModelSeatPositionSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;

    :cond_3
    invoke-virtual {v6, v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl1;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object/from16 v6, v38

    move-object v9, v6

    :goto_2
    and-long v42, v2, v32

    cmp-long v42, v42, v4

    if-eqz v42, :cond_8

    if-eqz v0, :cond_6

    .line 316
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isHudAndRearMirrorActive()Z

    move-result v43

    .line 318
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModelHudSeatAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;

    if-nez v8, :cond_5

    new-instance v8, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;

    invoke-direct {v8}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;-><init>()V

    iput-object v8, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModelHudSeatAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;

    :cond_5
    invoke-virtual {v8, v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;

    move-result-object v8

    .line 320
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getPhysicsSetAlertSeatSaveTabChangeListener()Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;

    move-result-object v45

    goto :goto_3

    :cond_6
    move-object/from16 v8, v38

    move-object/from16 v45, v8

    const/16 v43, 0x0

    :goto_3
    if-eqz v42, :cond_9

    if-eqz v43, :cond_7

    or-long v2, v2, v20

    goto :goto_4

    :cond_7
    or-long v2, v2, v18

    goto :goto_4

    :cond_8
    move-object/from16 v8, v38

    move-object/from16 v45, v8

    const/16 v43, 0x0

    :cond_9
    :goto_4
    and-long v46, v2, v14

    cmp-long v42, v46, v4

    if-eqz v42, :cond_10

    if-eqz v0, :cond_a

    .line 335
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatPositionSaveSupport()Landroidx/databinding/ObservableInt;

    move-result-object v46

    move-object/from16 v14, v46

    goto :goto_5

    :cond_a
    move-object/from16 v14, v38

    :goto_5
    const/4 v15, 0x2

    .line 337
    invoke-virtual {v1, v15, v14}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_b

    .line 342
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-eqz v0, :cond_c

    .line 348
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v14

    goto :goto_7

    :cond_c
    const/4 v14, 0x0

    :goto_7
    if-eqz v42, :cond_e

    if-eqz v14, :cond_d

    const-wide/32 v48, 0x10000

    goto :goto_8

    :cond_d
    const-wide/32 v48, 0x8000

    :goto_8
    or-long v2, v2, v48

    :cond_e
    if-eqz v14, :cond_f

    goto :goto_9

    :cond_f
    const/16 v14, 0x8

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v14, 0x0

    :goto_a
    and-long v48, v2, v10

    cmp-long v15, v48, v4

    if-eqz v15, :cond_18

    if-eqz v0, :cond_11

    .line 367
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v42

    move-object/from16 v10, v42

    goto :goto_b

    :cond_11
    move-object/from16 v10, v38

    :goto_b
    const/4 v11, 0x3

    .line 369
    invoke-virtual {v1, v11, v10}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_12

    .line 374
    invoke-virtual {v10}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v10

    goto :goto_c

    :cond_12
    const/4 v10, 0x0

    :goto_c
    if-eqz v15, :cond_14

    if-eqz v10, :cond_13

    or-long v2, v2, v16

    goto :goto_d

    :cond_13
    const-wide/32 v50, 0x200000

    or-long v2, v2, v50

    :cond_14
    :goto_d
    and-long v50, v2, v35

    cmp-long v11, v50, v4

    if-eqz v11, :cond_16

    if-eqz v10, :cond_15

    const-wide/32 v50, 0x4000000

    goto :goto_e

    :cond_15
    const-wide/32 v50, 0x2000000

    :goto_e
    or-long v2, v2, v50

    :cond_16
    and-long v50, v2, v35

    cmp-long v11, v50, v4

    if-eqz v11, :cond_19

    if-eqz v10, :cond_17

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_17
    const v11, 0x3e99999a    # 0.3f

    :goto_f
    move/from16 v34, v11

    goto :goto_10

    :cond_18
    const/4 v10, 0x0

    :cond_19
    const/16 v34, 0x0

    :goto_10
    and-long v50, v2, v30

    cmp-long v11, v50, v4

    if-eqz v11, :cond_1d

    if-eqz v0, :cond_1a

    .line 403
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSeatSaveEnable()Landroidx/databinding/ObservableBoolean;

    move-result-object v15

    goto :goto_11

    :cond_1a
    move-object/from16 v15, v38

    :goto_11
    const/4 v4, 0x4

    .line 405
    invoke-virtual {v1, v4, v15}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_1b

    .line 410
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_12

    :cond_1b
    const/4 v4, 0x0

    :goto_12
    if-eqz v11, :cond_1e

    if-eqz v4, :cond_1c

    or-long/2addr v2, v12

    goto :goto_13

    :cond_1c
    const-wide/16 v52, 0x2000

    or-long v2, v2, v52

    goto :goto_13

    :cond_1d
    const/4 v4, 0x0

    :cond_1e
    :goto_13
    const-wide/16 v39, 0x680

    and-long v52, v2, v39

    const-wide/16 v50, 0x0

    cmp-long v5, v52, v50

    if-eqz v5, :cond_20

    if-eqz v0, :cond_1f

    .line 425
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSaveTabIndex()Landroidx/databinding/ObservableInt;

    move-result-object v5

    goto :goto_14

    :cond_1f
    move-object/from16 v5, v38

    :goto_14
    const/4 v11, 0x7

    .line 427
    invoke-virtual {v1, v11, v5}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_20

    .line 432
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_15

    :cond_20
    const/4 v5, 0x0

    :goto_15
    and-long v52, v2, v28

    const-wide/16 v50, 0x0

    cmp-long v11, v52, v50

    if-eqz v11, :cond_2a

    if-eqz v0, :cond_21

    const v15, 0x27010600

    .line 439
    invoke-virtual {v0, v15}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(I)Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_16

    :cond_21
    move-object/from16 v15, v38

    :goto_16
    const/16 v12, 0x8

    .line 441
    invoke-virtual {v1, v12, v15}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_22

    .line 446
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_17

    :cond_22
    const/4 v13, 0x0

    :goto_17
    if-eqz v0, :cond_23

    .line 452
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v13

    goto :goto_18

    :cond_23
    const/4 v13, 0x0

    :goto_18
    if-eqz v11, :cond_25

    if-eqz v13, :cond_24

    or-long v2, v2, v24

    goto :goto_19

    :cond_24
    const-wide/32 v54, 0x20000

    or-long v2, v2, v54

    :cond_25
    :goto_19
    and-long v54, v2, v26

    const-wide/16 v50, 0x0

    cmp-long v11, v54, v50

    if-eqz v11, :cond_27

    if-eqz v13, :cond_26

    const-wide/32 v54, 0x100000

    goto :goto_1a

    :cond_26
    const-wide/32 v54, 0x80000

    :goto_1a
    or-long v2, v2, v54

    :cond_27
    and-long v54, v2, v26

    cmp-long v11, v54, v50

    if-eqz v11, :cond_29

    if-eqz v13, :cond_28

    const/4 v11, 0x0

    goto :goto_1b

    :cond_28
    move v11, v12

    :goto_1b
    move v15, v14

    move-object/from16 v12, v45

    move v14, v13

    move v13, v11

    move v11, v10

    goto :goto_1c

    :cond_29
    move v11, v10

    move v15, v14

    move-object/from16 v12, v45

    move-object v10, v9

    move v14, v13

    const/4 v13, 0x0

    goto :goto_1d

    :cond_2a
    const-wide/16 v50, 0x0

    move v11, v10

    move v15, v14

    move-object/from16 v12, v45

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1c
    move-object v10, v9

    :goto_1d
    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move/from16 v6, v34

    goto :goto_1e

    :cond_2b
    move-wide/from16 v50, v4

    move-object/from16 v7, v38

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v43, 0x0

    :goto_1e
    and-long v24, v2, v24

    cmp-long v24, v24, v50

    if-eqz v24, :cond_2e

    move-object/from16 v24, v10

    if-eqz v0, :cond_2c

    const v10, 0x27010500

    .line 484
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(I)Landroidx/databinding/ObservableInt;

    move-result-object v10

    move-object/from16 v25, v7

    goto :goto_1f

    :cond_2c
    move-object/from16 v25, v7

    move-object/from16 v10, v38

    :goto_1f
    const/4 v7, 0x0

    .line 486
    invoke-virtual {v1, v7, v10}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_2d

    .line 491
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_20

    :cond_2d
    move v10, v7

    :goto_20
    if-eqz v0, :cond_2f

    .line 497
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v10

    goto :goto_21

    :cond_2e
    move-object/from16 v25, v7

    move-object/from16 v24, v10

    const/4 v7, 0x0

    :cond_2f
    move v10, v7

    :goto_21
    and-long v20, v2, v20

    const-wide/16 v44, 0x0

    cmp-long v20, v20, v44

    if-eqz v20, :cond_30

    if-eqz v0, :cond_30

    const/16 v7, 0x1e0

    .line 504
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->dp(I)I

    move-result v7

    goto :goto_22

    :cond_30
    const/4 v7, 0x0

    :goto_22
    and-long v18, v2, v18

    cmp-long v18, v18, v44

    if-eqz v18, :cond_31

    if-eqz v0, :cond_31

    move/from16 v18, v7

    const/16 v7, 0x136

    .line 511
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->dp(I)I

    move-result v7

    goto :goto_23

    :cond_31
    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_23
    and-long v16, v2, v16

    cmp-long v16, v16, v44

    if-eqz v16, :cond_34

    if-eqz v0, :cond_32

    .line 518
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getLeftSaveSetPositionSupport()Landroidx/databinding/ObservableInt;

    move-result-object v16

    move/from16 v17, v10

    move-object/from16 v56, v16

    move/from16 v16, v7

    move-object/from16 v7, v56

    goto :goto_24

    :cond_32
    move/from16 v16, v7

    move/from16 v17, v10

    move-object/from16 v7, v38

    :goto_24
    const/4 v10, 0x5

    .line 520
    invoke-virtual {v1, v10, v7}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_33

    .line 525
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_25

    :cond_33
    const/4 v7, 0x0

    :goto_25
    if-eqz v0, :cond_35

    .line 531
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v7

    goto :goto_26

    :cond_34
    move/from16 v16, v7

    move/from16 v17, v10

    :cond_35
    const/4 v7, 0x0

    :goto_26
    const-wide/16 v44, 0x4000

    and-long v44, v2, v44

    const-wide/16 v50, 0x0

    cmp-long v10, v44, v50

    if-eqz v10, :cond_38

    if-eqz v0, :cond_36

    .line 538
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRightSaveSetPositionSupport()Landroidx/databinding/ObservableInt;

    move-result-object v38

    :cond_36
    move/from16 v19, v7

    move-object/from16 v10, v38

    const/4 v7, 0x6

    .line 540
    invoke-virtual {v1, v7, v10}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_37

    .line 545
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_27

    :cond_37
    const/4 v7, 0x0

    :goto_27
    if-eqz v0, :cond_39

    .line 551
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v0

    goto :goto_28

    :cond_38
    move/from16 v19, v7

    :cond_39
    const/4 v0, 0x0

    :goto_28
    and-long v44, v2, v32

    const-wide/16 v50, 0x0

    cmp-long v7, v44, v50

    if-eqz v7, :cond_3b

    if-eqz v43, :cond_3a

    move/from16 v7, v18

    goto :goto_29

    :cond_3a
    move/from16 v7, v16

    goto :goto_29

    :cond_3b
    const/4 v7, 0x0

    :goto_29
    and-long v42, v2, v30

    cmp-long v10, v42, v50

    if-eqz v10, :cond_3c

    if-eqz v4, :cond_3c

    goto :goto_2a

    :cond_3c
    const/4 v0, 0x0

    :goto_2a
    and-long v42, v2, v28

    cmp-long v4, v42, v50

    if-eqz v4, :cond_41

    if-eqz v14, :cond_3d

    move/from16 v10, v17

    goto :goto_2b

    :cond_3d
    const/4 v10, 0x0

    :goto_2b
    if-eqz v4, :cond_3f

    if-eqz v10, :cond_3e

    const-wide/32 v16, 0x1000000

    goto :goto_2c

    :cond_3e
    const-wide/32 v16, 0x800000

    :goto_2c
    or-long v2, v2, v16

    :cond_3f
    if-eqz v10, :cond_40

    const/16 v37, 0x0

    goto :goto_2d

    :cond_40
    const/16 v37, 0x8

    :goto_2d
    move/from16 v4, v37

    goto :goto_2e

    :cond_41
    const/4 v4, 0x0

    :goto_2e
    const-wide/16 v16, 0x628

    and-long v16, v2, v16

    const-wide/16 v37, 0x0

    cmp-long v10, v16, v37

    if-eqz v10, :cond_43

    if-eqz v11, :cond_42

    goto :goto_2f

    :cond_42
    const/16 v19, 0x0

    :goto_2f
    move/from16 v14, v19

    goto :goto_30

    :cond_43
    const/4 v14, 0x0

    :goto_30
    and-long v16, v2, v32

    cmp-long v16, v16, v37

    if-eqz v16, :cond_44

    move/from16 v16, v0

    .line 591
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->hudBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v9}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView1:Lcom/geely/hvac/component/SeatPositionSaveTab;

    invoke-static {v0, v12}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bind(Lcom/geely/hvac/component/SeatPositionSaveTab;Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;)V

    .line 593
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView8:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v7}, Lcom/geely/hvac/component/ViewAdapter;->layoutHeight(Landroid/view/View;I)V

    goto :goto_31

    :cond_44
    move/from16 v16, v0

    :goto_31
    and-long v17, v2, v28

    cmp-long v0, v17, v37

    if-eqz v0, :cond_45

    .line 598
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->hudBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 599
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView5:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v4}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_45
    const-wide/16 v17, 0x604

    and-long v17, v2, v17

    cmp-long v0, v17, v37

    if-eqz v0, :cond_46

    .line 604
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView1:Lcom/geely/hvac/component/SeatPositionSaveTab;

    invoke-virtual {v0, v15}, Lcom/geely/hvac/component/SeatPositionSaveTab;->setVisibility(I)V

    :cond_46
    const-wide/16 v17, 0x680

    and-long v17, v2, v17

    cmp-long v0, v17, v37

    if-eqz v0, :cond_47

    .line 609
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView1:Lcom/geely/hvac/component/SeatPositionSaveTab;

    invoke-static {v0, v5}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bind(Lcom/geely/hvac/component/SeatPositionSaveTab;I)V

    :cond_47
    and-long v4, v2, v22

    cmp-long v0, v4, v37

    if-eqz v0, :cond_48

    .line 614
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView1:Lcom/geely/hvac/component/SeatPositionSaveTab;

    invoke-static {v0, v8}, Lcom/geely/hvac/component/SeatPositionSaveTab;->bindSeatSaveTabTags(Lcom/geely/hvac/component/SeatPositionSaveTab;[Ljava/lang/String;)V

    :cond_48
    and-long v4, v2, v26

    cmp-long v0, v4, v37

    if-eqz v0, :cond_49

    .line 619
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mboundView7:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v13}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 620
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->swBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, v13}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    :cond_49
    if-eqz v10, :cond_4a

    .line 625
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v14}, Lcom/geely/hvac/component/TextViewWithBg;->setClickable(Z)V

    .line 626
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v14}, Lcom/geely/hvac/component/TextViewWithBg;->setFocusable(Z)V

    .line 627
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v14}, Lcom/geely/hvac/component/TextViewWithBg;->setClickable(Z)V

    .line 628
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v14}, Lcom/geely/hvac/component/TextViewWithBg;->setFocusable(Z)V

    :cond_4a
    const-wide/16 v4, 0x400

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_4b

    .line 633
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset:Lcom/geely/hvac/component/TextViewWithBg;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 634
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    .line 635
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->resetRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 636
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 637
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save1:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    .line 638
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->saveRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/geely/hvac/component/TextViewWithBg;->setTag(Ljava/lang/Object;)V

    :cond_4b
    and-long v4, v2, v35

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_4d

    .line 642
    invoke-static {}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->getBuildSdkInt()I

    move-result v0

    const/16 v4, 0xb

    if-lt v0, v4, :cond_4c

    .line 644
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v6}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setAlpha(F)V

    .line 645
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save1:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v6}, Lcom/geely/hvac/component/TextViewWithBg;->setAlpha(F)V

    .line 649
    :cond_4c
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v11}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setFocusable(Z)V

    .line 650
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->reset1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-object/from16 v6, v25

    invoke-static {v0, v6, v11}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    .line 651
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save1:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v11}, Lcom/geely/hvac/component/TextViewWithBg;->setFocusable(Z)V

    .line 652
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->save1:Lcom/geely/hvac/component/TextViewWithBg;

    move-object/from16 v9, v24

    invoke-static {v0, v9, v11}, Landroidx/databinding/adapters/ViewBindingAdapter;->setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V

    :cond_4d
    and-long v2, v2, v30

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4e

    .line 657
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->resetRight:Lcom/geely/hvac/component/TextViewWithBg;

    move/from16 v2, v16

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setClickable(Z)V

    .line 658
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->resetRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setFocusable(Z)V

    .line 659
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->saveRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setClickable(Z)V

    .line 660
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->saveRight:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/TextViewWithBg;->setFocusable(Z)V

    :cond_4e
    return-void

    :catchall_0
    move-exception v0

    .line 245
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 106
    monitor-exit p0

    return v0

    .line 108
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

    .line 96
    monitor-enter p0

    const-wide/16 v0, 0x400

    .line 97
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 98
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

    .line 153
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDPOSITIONADJUST(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 151
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelSeatSaveTabIndex(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 149
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelRightSaveSetPositionSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 147
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelLeftSaveSetPositionSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 145
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelRightSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 143
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelSeatSaveEnable(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 141
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelSeatPositionSaveSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 139
    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelSeatSaveTags(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 137
    :pswitch_8
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDBRIGHTNESSADJUST(Landroidx/databinding/ObservableInt;I)Z

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

    .line 125
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 129
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->notifyPropertyChanged(I)V

    .line 130
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 128
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

    .line 116
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
