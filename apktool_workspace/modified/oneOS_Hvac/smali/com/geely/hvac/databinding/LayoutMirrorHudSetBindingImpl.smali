.class public Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
.source "LayoutMirrorHudSetBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;,
        Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelHudSeatAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;

.field private mModelMirrorSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView2:Lcom/geely/toolchain/hmi/view/HmiImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090151

    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900af

    const/4 v2, 0x6

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0902e9

    const/4 v2, 0x7

    .line 19
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
    sget-object v0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
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

    const/4 v0, 0x6

    .line 37
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/cardview/widget/CardView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;)V

    const-wide/16 v0, -0x1

    .line 218
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    .line 45
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->hudBg:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->leftNormal:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 47
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 49
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 50
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->rightNormal:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDACTIVE(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDACTIVE",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    .line 108
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
    .locals 17

    move-object/from16 v1, p0

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 119
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x7

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    const-wide/16 v9, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v8, :cond_8

    if-eqz v0, :cond_0

    const v13, 0x20110100

    .line 135
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(I)Landroidx/databinding/ObservableInt;

    move-result-object v13

    goto :goto_0

    :cond_0
    move-object v13, v11

    .line 137
    :goto_0
    invoke-virtual {v1, v12, v13}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_1

    .line 142
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_1
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionAvailable(I)Z

    move-result v13

    goto :goto_2

    :cond_2
    move v13, v12

    :goto_2
    if-eqz v8, :cond_4

    if-eqz v13, :cond_3

    const-wide/16 v14, 0x10

    goto :goto_3

    :cond_3
    const-wide/16 v14, 0x8

    :goto_3
    or-long/2addr v2, v14

    :cond_4
    if-eqz v13, :cond_5

    goto :goto_4

    :cond_5
    const/16 v8, 0x8

    move v12, v8

    :goto_4
    and-long v13, v2, v9

    cmp-long v8, v13, v4

    if-eqz v8, :cond_8

    if-eqz v0, :cond_8

    .line 166
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mModelMirrorSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;

    if-nez v8, :cond_6

    new-instance v8, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;

    invoke-direct {v8}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mModelMirrorSetAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;

    :cond_6
    invoke-virtual {v8, v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl;

    move-result-object v11

    .line 168
    iget-object v8, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mModelHudSeatAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;

    if-nez v8, :cond_7

    new-instance v8, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;

    invoke-direct {v8}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v8, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mModelHudSeatAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;

    :cond_7
    invoke-virtual {v8, v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl$OnClickListenerImpl1;

    move-result-object v0

    move-object/from16 v16, v11

    move-object v11, v0

    move-object/from16 v0, v16

    goto :goto_5

    :cond_8
    move-object v0, v11

    :goto_5
    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_9

    .line 176
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->hudBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v6, v12}, Lcom/geely/hvac/component/ViewWithBackground;->setVisibility(I)V

    .line 177
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v6, v12}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    :cond_9
    and-long v6, v2, v9

    cmp-long v6, v6, v4

    if-eqz v6, :cond_a

    .line 182
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->hudBg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v6, v11}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->leftNormal:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v6, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v6, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->rightNormal:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v6, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const-wide/16 v6, 0x4

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    .line 189
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->leftNormal:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->rightNormal:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
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

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 60
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
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

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCHUDACTIVE(Landroidx/databinding/ObservableInt;I)Z

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

    .line 88
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 92
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
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

    .line 79
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
