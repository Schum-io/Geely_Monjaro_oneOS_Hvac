.class public Lcom/geely/hvac/databinding/ActivityTestBindingImpl;
.super Lcom/geely/hvac/databinding/ActivityTestBinding;
.source "ActivityTestBindingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;,
        Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;,
        Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private mModelTestMassageLevelAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;

.field private mModelTestMassageSwitchAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;

.field private mModelTestMassageTypeAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView1:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView3:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView4:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView5:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private final mboundView6:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private final mboundView7:Lcom/geely/toolchain/hmi/view/HmiButton;


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

    .line 44
    sget-object v0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3
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

    const/4 v0, 0x7

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/ActivityTestBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 466
    iput-wide v1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 49
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 51
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 52
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 53
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 54
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 55
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 56
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 57
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 58
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 59
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView5:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 60
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 61
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView6:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 62
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTag(Ljava/lang/Object;)V

    .line 63
    aget-object p1, p3, v0

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView7:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 64
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTag(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelGetMassageLevelGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageLevelGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetMassageStateGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageStateGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetMassageTypeGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypeGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetMassageTypesGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableField;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetMassageTypesGlyCarAreaIdSEATROW1LEFT",
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

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGEGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGEGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGEPROGRAMGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGEPROGRAMGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 32

    move-object/from16 v1, p0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 198
    iput-wide v4, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v11, 0x188

    const-wide/16 v13, 0x180

    const-wide/16 v15, 0x182

    const-wide/16 v17, 0x184

    const-wide/16 v19, 0x181

    const-wide/16 v21, 0x1c0

    const/16 v23, 0x0

    if-eqz v6, :cond_1c

    and-long v24, v2, v19

    cmp-long v6, v24, v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageLevel(I)Landroidx/databinding/ObservableInt;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object/from16 v6, v23

    .line 236
    :goto_0
    invoke-virtual {v1, v9, v6}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_1

    .line 241
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v9

    .line 246
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u7b49\u7ea7\uff1a"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, v23

    :goto_2
    and-long v7, v2, v15

    cmp-long v7, v7, v4

    if-eqz v7, :cond_5

    if-eqz v0, :cond_3

    const v7, 0x10050b00

    .line 252
    invoke-virtual {v0, v7, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object/from16 v7, v23

    .line 254
    :goto_3
    invoke-virtual {v1, v10, v7}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_4

    .line 259
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 265
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->formatSupported(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, v23

    :goto_5
    and-long v8, v2, v13

    cmp-long v8, v8, v4

    if-eqz v8, :cond_9

    if-eqz v0, :cond_9

    .line 272
    iget-object v8, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModelTestMassageLevelAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;

    if-nez v8, :cond_6

    new-instance v8, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;

    invoke-direct {v8}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModelTestMassageLevelAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;

    :cond_6
    invoke-virtual {v8, v0}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl;

    move-result-object v8

    .line 274
    iget-object v9, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModelTestMassageTypeAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;

    if-nez v9, :cond_7

    new-instance v9, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;

    invoke-direct {v9}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;-><init>()V

    iput-object v9, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModelTestMassageTypeAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;

    :cond_7
    invoke-virtual {v9, v0}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl1;

    move-result-object v9

    .line 276
    iget-object v13, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModelTestMassageSwitchAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;

    if-nez v13, :cond_8

    new-instance v13, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;

    invoke-direct {v13}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;-><init>()V

    iput-object v13, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModelTestMassageSwitchAndroidViewViewOnClickListener:Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;

    :cond_8
    invoke-virtual {v13, v0}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;->setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/ActivityTestBindingImpl$OnClickListenerImpl2;

    move-result-object v13

    goto :goto_6

    :cond_9
    move-object/from16 v8, v23

    move-object v9, v8

    move-object v13, v9

    :goto_6
    and-long v26, v2, v17

    cmp-long v14, v26, v4

    if-eqz v14, :cond_c

    if-eqz v0, :cond_a

    const v14, 0x10050700

    .line 283
    invoke-virtual {v0, v14, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v14

    goto :goto_7

    :cond_a
    move-object/from16 v14, v23

    :goto_7
    const/4 v15, 0x2

    .line 285
    invoke-virtual {v1, v15, v14}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_b

    .line 290
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_8

    :cond_b
    const/4 v14, 0x0

    :goto_8
    if-eqz v0, :cond_c

    .line 296
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->formatSupported(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_9

    :cond_c
    move-object/from16 v14, v23

    :goto_9
    and-long v15, v2, v11

    cmp-long v15, v15, v4

    if-eqz v15, :cond_f

    if-eqz v0, :cond_d

    .line 303
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageTypes(I)Landroidx/databinding/ObservableField;

    move-result-object v15

    goto :goto_a

    :cond_d
    move-object/from16 v15, v23

    :goto_a
    const/4 v11, 0x3

    .line 305
    invoke-virtual {v1, v11, v15}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_e

    .line 310
    invoke-virtual {v15}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    goto :goto_b

    :cond_e
    move-object/from16 v11, v23

    .line 315
    :goto_b
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    :cond_f
    move-object/from16 v11, v23

    :goto_c
    const-wide/16 v15, 0x190

    and-long v28, v2, v15

    cmp-long v12, v28, v4

    if-eqz v12, :cond_12

    if-eqz v0, :cond_10

    .line 321
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageType(I)Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_d

    :cond_10
    move-object/from16 v12, v23

    :goto_d
    const/4 v15, 0x4

    .line 323
    invoke-virtual {v1, v15, v12}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_11

    .line 328
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_e

    :cond_11
    const/4 v12, 0x0

    .line 333
    :goto_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u7c7b\u578b\uff1a"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :cond_12
    move-object/from16 v10, v23

    :goto_f
    const-wide/16 v24, 0x1a0

    and-long v28, v2, v24

    cmp-long v12, v28, v4

    if-eqz v12, :cond_18

    if-eqz v0, :cond_13

    const/4 v15, 0x1

    .line 339
    invoke-virtual {v0, v15}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMassageState(I)Landroidx/databinding/ObservableBoolean;

    move-result-object v28

    move-object/from16 v15, v28

    goto :goto_10

    :cond_13
    move-object/from16 v15, v23

    :goto_10
    const/4 v4, 0x5

    .line 341
    invoke-virtual {v1, v4, v15}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_14

    .line 346
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_11

    :cond_14
    const/4 v4, 0x0

    :goto_11
    if-eqz v12, :cond_16

    if-eqz v4, :cond_15

    const-wide/16 v30, 0x400

    goto :goto_12

    :cond_15
    const-wide/16 v30, 0x200

    :goto_12
    or-long v2, v2, v30

    :cond_16
    if-eqz v4, :cond_17

    const-string v4, "on"

    goto :goto_13

    :cond_17
    const-string v4, "off"

    .line 363
    :goto_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u5f00\u5173\uff1a"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_18
    move-object/from16 v4, v23

    :goto_14
    and-long v30, v2, v21

    const-wide/16 v28, 0x0

    cmp-long v5, v30, v28

    if-eqz v5, :cond_1b

    if-eqz v0, :cond_19

    const v5, 0x10050a00

    const/4 v12, 0x1

    .line 369
    invoke-virtual {v0, v5, v12}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v5

    goto :goto_15

    :cond_19
    move-object/from16 v5, v23

    :goto_15
    const/4 v12, 0x6

    .line 371
    invoke-virtual {v1, v12, v5}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_1a

    .line 376
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_16

    :cond_1a
    const/4 v5, 0x0

    :goto_16
    if-eqz v0, :cond_1b

    .line 382
    invoke-virtual {v0, v5}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->formatSupported(I)Ljava/lang/String;

    move-result-object v23

    :cond_1b
    move-object/from16 v0, v23

    goto :goto_17

    :cond_1c
    move-object/from16 v0, v23

    move-object v4, v0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v13, v11

    move-object v14, v13

    :goto_17
    and-long v15, v2, v21

    const-wide/16 v21, 0x0

    cmp-long v5, v15, v21

    if-eqz v5, :cond_1d

    .line 390
    iget-object v5, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v5, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    and-long v15, v2, v17

    cmp-long v0, v15, v21

    if-eqz v0, :cond_1e

    .line 395
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1e
    const-wide/16 v14, 0x182

    and-long/2addr v14, v2

    cmp-long v0, v14, v21

    if-eqz v0, :cond_1f

    .line 400
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1f
    const-wide/16 v14, 0x188

    and-long/2addr v14, v2

    cmp-long v0, v14, v21

    if-eqz v0, :cond_20

    .line 405
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView4:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_20
    const-wide/16 v11, 0x180

    and-long/2addr v11, v2

    cmp-long v0, v11, v21

    if-eqz v0, :cond_21

    .line 410
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView5:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0, v13}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView6:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0, v8}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView7:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0, v9}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    const-wide/16 v7, 0x1a0

    and-long/2addr v7, v2

    cmp-long v0, v7, v21

    if-eqz v0, :cond_22

    .line 417
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView5:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_22
    and-long v4, v2, v19

    cmp-long v0, v4, v21

    if-eqz v0, :cond_23

    .line 422
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView6:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_23
    const-wide/16 v4, 0x190

    and-long/2addr v2, v4

    cmp-long v0, v2, v21

    if-eqz v0, :cond_24

    .line 427
    iget-object v0, v1, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mboundView7:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_24
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

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 82
    monitor-exit p0

    return v0

    .line 84
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

    .line 72
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 73
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 74
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

    .line 125
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 123
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->onChangeModelGetMassageStateGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->onChangeModelGetMassageTypeGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->onChangeModelGetMassageTypesGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 117
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGEGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 115
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGEPROGRAMGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 113
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->onChangeModelGetMassageLevelGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

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

    .line 101
    iput-object p1, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 105
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->notifyPropertyChanged(I)V

    .line 106
    invoke-super {p0}, Lcom/geely/hvac/databinding/ActivityTestBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
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

    .line 92
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/ActivityTestBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
