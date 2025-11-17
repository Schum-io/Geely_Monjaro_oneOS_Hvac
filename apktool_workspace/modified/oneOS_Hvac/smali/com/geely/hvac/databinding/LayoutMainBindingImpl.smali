.class public Lcom/geely/hvac/databinding/LayoutMainBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutMainBinding;
.source "LayoutMainBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090238

    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090079

    const/4 v2, 0x3

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900bf

    const/4 v2, 0x4

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0900c1

    const/4 v2, 0x5

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090210

    const/4 v2, 0x6

    .line 21
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

    .line 30
    sget-object v0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
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

    const/4 v0, 0x3

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Space;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    move-object v11, p3

    check-cast v11, Lcom/geely/hvac/component/MainTab;

    const/16 v4, 0x13

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/geely/hvac/databinding/LayoutMainBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Space;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/viewpager2/widget/ViewPager2;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/MainTab;)V

    const-wide/16 v0, -0x1

    .line 1074
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 42
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->tab:Lcom/geely/hvac/component/MainTab;

    invoke-virtual {p1, p3}, Lcom/geely/hvac/component/MainTab;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelFragranceSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelFragranceSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 181
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

.method private onChangeModelGetRow1LeftSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatBackrestSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 199
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

.method private onChangeModelGetRow1LeftSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 226
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

.method private onChangeModelGetRow1LeftSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatLengthSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 190
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

.method private onChangeModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatLumbarExtendedSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 217
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

.method private onChangeModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1LeftSeatLumbarHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 235
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

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 208
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

.method private onChangeModelGetRow1RightSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetRow1RightSeatHeightSupport",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x40000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 298
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

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

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

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 253
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

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 262
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

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x8000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 271
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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1RIGHT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1LEFT",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x10000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 280
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

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1LeftSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatHeatSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1LeftSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatVentilateSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 244
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

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/32 v0, 0x20000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 289
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

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

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


# virtual methods
.method protected executeBindings()V
    .locals 25

    move-object/from16 v1, p0

    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 309
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 310
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/MainViewModel;

    const-wide/32 v6, 0x1fffff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/32 v7, 0x180020

    const-wide/high16 v9, 0x20000000000000L

    const-wide/32 v11, 0x1fffdf

    const/4 v14, 0x0

    if-eqz v6, :cond_9

    and-long v15, v2, v11

    cmp-long v6, v15, v4

    if-eqz v6, :cond_4

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1LeftSeatHeatSupported()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 396
    :goto_0
    invoke-virtual {v1, v14, v15}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_1

    .line 401
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v15

    goto :goto_1

    :cond_1
    move v15, v14

    :goto_1
    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0, v15}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v15

    goto :goto_2

    :cond_2
    move v15, v14

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v15, :cond_3

    const-wide/high16 v16, 0x40000000000000L

    or-long v2, v2, v16

    goto :goto_3

    :cond_3
    or-long/2addr v2, v9

    goto :goto_3

    :cond_4
    move v15, v14

    :cond_5
    :goto_3
    and-long v16, v2, v7

    cmp-long v6, v16, v4

    if-eqz v6, :cond_8

    if-eqz v0, :cond_6

    .line 422
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getFragranceSupported()Landroidx/databinding/ObservableInt;

    move-result-object v6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    const/4 v13, 0x5

    .line 424
    invoke-virtual {v1, v13, v6}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v6, :cond_7

    .line 429
    invoke-virtual {v6}, Landroidx/databinding/ObservableInt;->get()I

    move-result v6

    goto :goto_5

    :cond_7
    move v6, v14

    :goto_5
    if-eqz v0, :cond_8

    .line 435
    invoke-virtual {v0, v6}, Lcom/geely/hvac/viewmodel/MainViewModel;->isFunctionAvailable(I)Z

    move-result v6

    goto :goto_6

    :cond_8
    move v6, v14

    goto :goto_6

    :cond_9
    move v6, v14

    move v15, v6

    :goto_6
    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_c

    if-eqz v0, :cond_a

    .line 447
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1RightSeatHeatSupported()Landroidx/databinding/ObservableInt;

    move-result-object v9

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    const/16 v10, 0x11

    .line 449
    invoke-virtual {v1, v10, v9}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_b

    .line 454
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_8

    :cond_b
    move v9, v14

    :goto_8
    if-eqz v0, :cond_c

    .line 460
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v9

    goto :goto_9

    :cond_c
    move v9, v14

    :goto_9
    and-long v17, v2, v11

    cmp-long v10, v17, v4

    const-wide v17, 0x8000000000L

    const/4 v13, 0x1

    if-eqz v10, :cond_f

    if-eqz v15, :cond_d

    move v9, v13

    :cond_d
    if-eqz v10, :cond_10

    if-eqz v9, :cond_e

    const-wide v19, 0x10000000000L

    or-long v2, v2, v19

    goto :goto_a

    :cond_e
    or-long v2, v2, v17

    goto :goto_a

    :cond_f
    move v9, v14

    :cond_10
    :goto_a
    and-long v19, v2, v17

    cmp-long v10, v19, v4

    const-wide v19, 0x800000000L

    if-eqz v10, :cond_15

    if-eqz v0, :cond_11

    .line 485
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1LeftSeatVentilateSupported()Landroidx/databinding/ObservableInt;

    move-result-object v15

    goto :goto_b

    :cond_11
    const/4 v15, 0x0

    :goto_b
    const/16 v14, 0xc

    .line 487
    invoke-virtual {v1, v14, v15}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_12

    .line 492
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_c

    :cond_12
    const/4 v14, 0x0

    :goto_c
    if-eqz v0, :cond_13

    .line 498
    invoke-virtual {v0, v14}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v14

    goto :goto_d

    :cond_13
    const/4 v14, 0x0

    :goto_d
    if-eqz v10, :cond_16

    if-eqz v14, :cond_14

    const-wide v21, 0x1000000000L

    or-long v2, v2, v21

    goto :goto_e

    :cond_14
    or-long v2, v2, v19

    goto :goto_e

    :cond_15
    const/4 v14, 0x0

    :cond_16
    :goto_e
    and-long v19, v2, v19

    cmp-long v10, v19, v4

    const/4 v15, 0x4

    if-eqz v10, :cond_19

    if-eqz v0, :cond_17

    .line 517
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1RightSeatVentilateSupported()Landroidx/databinding/ObservableInt;

    move-result-object v10

    goto :goto_f

    :cond_17
    const/4 v10, 0x0

    .line 519
    :goto_f
    invoke-virtual {v1, v15, v10}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_18

    .line 524
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_10

    :cond_18
    const/4 v10, 0x0

    :goto_10
    if-eqz v0, :cond_19

    .line 530
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v10

    goto :goto_11

    :cond_19
    const/4 v10, 0x0

    :goto_11
    and-long v17, v2, v17

    cmp-long v17, v17, v4

    if-eqz v17, :cond_1a

    if-eqz v14, :cond_1b

    move v10, v13

    goto :goto_12

    :cond_1a
    const/4 v10, 0x0

    :cond_1b
    :goto_12
    and-long v17, v2, v11

    cmp-long v14, v17, v4

    const-wide v17, 0x200000000000L

    if-eqz v14, :cond_1e

    if-eqz v9, :cond_1c

    move v10, v13

    :cond_1c
    if-eqz v14, :cond_1f

    if-eqz v10, :cond_1d

    const-wide v19, 0x400000000000L

    or-long v2, v2, v19

    goto :goto_13

    :cond_1d
    or-long v2, v2, v17

    goto :goto_13

    :cond_1e
    const/4 v10, 0x0

    :cond_1f
    :goto_13
    and-long v19, v2, v17

    cmp-long v9, v19, v4

    const v14, 0x10050a00

    const-wide v19, 0x80000000000L

    if-eqz v9, :cond_24

    if-eqz v0, :cond_20

    .line 561
    invoke-virtual {v0, v14, v13}, Lcom/geely/hvac/viewmodel/MainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v21

    move-object/from16 v7, v21

    goto :goto_14

    :cond_20
    const/4 v7, 0x0

    :goto_14
    const/16 v8, 0xf

    .line 563
    invoke-virtual {v1, v8, v7}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_21

    .line 568
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_15

    :cond_21
    const/4 v7, 0x0

    :goto_15
    if-eqz v0, :cond_22

    .line 574
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v7

    goto :goto_16

    :cond_22
    const/4 v7, 0x0

    :goto_16
    if-eqz v9, :cond_25

    if-eqz v7, :cond_23

    const-wide v8, 0x100000000000L

    or-long/2addr v2, v8

    goto :goto_17

    :cond_23
    or-long v2, v2, v19

    goto :goto_17

    :cond_24
    const/4 v7, 0x0

    :cond_25
    :goto_17
    and-long v8, v2, v19

    cmp-long v8, v8, v4

    if-eqz v8, :cond_28

    if-eqz v0, :cond_26

    .line 593
    invoke-virtual {v0, v14, v15}, Lcom/geely/hvac/viewmodel/MainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_18

    :cond_26
    const/4 v8, 0x0

    :goto_18
    const/4 v9, 0x3

    .line 595
    invoke-virtual {v1, v9, v8}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_27

    .line 600
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_19

    :cond_27
    const/4 v8, 0x0

    :goto_19
    if-eqz v0, :cond_28

    .line 606
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v8

    goto :goto_1a

    :cond_28
    const/4 v8, 0x0

    :goto_1a
    and-long v17, v2, v17

    cmp-long v9, v17, v4

    if-eqz v9, :cond_29

    if-eqz v7, :cond_2a

    move v8, v13

    goto :goto_1b

    :cond_29
    const/4 v8, 0x0

    :cond_2a
    :goto_1b
    and-long v17, v2, v11

    cmp-long v7, v17, v4

    const-wide/high16 v17, 0x8000000000000L

    if-eqz v7, :cond_2d

    if-eqz v10, :cond_2b

    move v8, v13

    :cond_2b
    if-eqz v7, :cond_2e

    if-eqz v8, :cond_2c

    const-wide/high16 v9, 0x10000000000000L

    or-long/2addr v2, v9

    goto :goto_1c

    :cond_2c
    or-long v2, v2, v17

    goto :goto_1c

    :cond_2d
    const/4 v8, 0x0

    :cond_2e
    :goto_1c
    and-long v9, v2, v17

    cmp-long v7, v9, v4

    const v9, 0x2d500100

    const-wide/32 v19, 0x8000000

    if-eqz v7, :cond_33

    if-eqz v0, :cond_2f

    .line 637
    invoke-virtual {v0, v9, v13}, Lcom/geely/hvac/viewmodel/MainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v10

    goto :goto_1d

    :cond_2f
    const/4 v10, 0x0

    :goto_1d
    const/16 v14, 0x10

    .line 639
    invoke-virtual {v1, v14, v10}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v10, :cond_30

    .line 644
    invoke-virtual {v10}, Landroidx/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_1e

    :cond_30
    const/4 v10, 0x0

    :goto_1e
    if-eqz v0, :cond_31

    .line 650
    invoke-virtual {v0, v10}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v10

    goto :goto_1f

    :cond_31
    const/4 v10, 0x0

    :goto_1f
    if-eqz v7, :cond_34

    if-eqz v10, :cond_32

    const-wide/32 v23, 0x10000000

    or-long v2, v2, v23

    goto :goto_20

    :cond_32
    or-long v2, v2, v19

    goto :goto_20

    :cond_33
    const/4 v10, 0x0

    :cond_34
    :goto_20
    and-long v19, v2, v19

    cmp-long v7, v19, v4

    if-eqz v7, :cond_37

    if-eqz v0, :cond_35

    .line 669
    invoke-virtual {v0, v9, v15}, Lcom/geely/hvac/viewmodel/MainViewModel;->getSupportObservable(II)Landroidx/databinding/ObservableInt;

    move-result-object v7

    goto :goto_21

    :cond_35
    const/4 v7, 0x0

    :goto_21
    const/4 v9, 0x2

    .line 671
    invoke-virtual {v1, v9, v7}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_36

    .line 676
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_22

    :cond_36
    const/4 v7, 0x0

    :goto_22
    if-eqz v0, :cond_37

    .line 682
    invoke-virtual {v0, v7}, Lcom/geely/hvac/viewmodel/MainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v7

    goto :goto_23

    :cond_37
    const/4 v7, 0x0

    :goto_23
    and-long v14, v2, v17

    cmp-long v9, v14, v4

    if-eqz v9, :cond_38

    if-eqz v10, :cond_39

    move v7, v13

    goto :goto_24

    :cond_38
    const/4 v7, 0x0

    :cond_39
    :goto_24
    and-long v9, v2, v11

    cmp-long v9, v9, v4

    const-wide v14, 0x200000000L

    if-eqz v9, :cond_3c

    if-eqz v8, :cond_3a

    move v7, v13

    :cond_3a
    if-eqz v9, :cond_3d

    if-eqz v7, :cond_3b

    const-wide v8, 0x400000000L

    or-long/2addr v2, v8

    goto :goto_25

    :cond_3b
    or-long/2addr v2, v14

    goto :goto_25

    :cond_3c
    const/4 v7, 0x0

    :cond_3d
    :goto_25
    and-long v8, v2, v14

    cmp-long v8, v8, v4

    const-wide v9, 0x800000000000L

    if-eqz v8, :cond_42

    if-eqz v0, :cond_3e

    .line 713
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1LeftSeatLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v17

    move-object/from16 v11, v17

    goto :goto_26

    :cond_3e
    const/4 v11, 0x0

    :goto_26
    const/4 v12, 0x6

    .line 715
    invoke-virtual {v1, v12, v11}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_3f

    .line 720
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_27

    :cond_3f
    const/4 v11, 0x0

    :goto_27
    if-eqz v0, :cond_40

    .line 726
    invoke-virtual {v0, v11}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v11

    goto :goto_28

    :cond_40
    const/4 v11, 0x0

    :goto_28
    if-eqz v8, :cond_43

    if-eqz v11, :cond_41

    const-wide/high16 v19, 0x1000000000000L

    or-long v2, v2, v19

    goto :goto_29

    :cond_41
    or-long/2addr v2, v9

    goto :goto_29

    :cond_42
    const/4 v11, 0x0

    :cond_43
    :goto_29
    and-long v8, v2, v9

    cmp-long v8, v8, v4

    if-eqz v8, :cond_46

    if-eqz v0, :cond_44

    .line 743
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1RightSeatLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_2a

    :cond_44
    const/4 v8, 0x0

    .line 745
    :goto_2a
    invoke-virtual {v1, v13, v8}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_45

    .line 750
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_2b

    :cond_45
    const/4 v8, 0x0

    :goto_2b
    if-eqz v0, :cond_46

    .line 756
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v8

    goto :goto_2c

    :cond_46
    const/4 v8, 0x0

    :goto_2c
    and-long v9, v2, v14

    cmp-long v9, v9, v4

    const-wide v19, 0x80000000L

    if-eqz v9, :cond_49

    if-eqz v11, :cond_47

    move v8, v13

    :cond_47
    if-eqz v9, :cond_4a

    if-eqz v8, :cond_48

    const-wide v9, 0x100000000L

    or-long/2addr v2, v9

    goto :goto_2d

    :cond_48
    or-long v2, v2, v19

    goto :goto_2d

    :cond_49
    const/4 v8, 0x0

    :cond_4a
    :goto_2d
    and-long v9, v2, v19

    cmp-long v9, v9, v4

    if-eqz v9, :cond_4d

    if-eqz v0, :cond_4b

    .line 779
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1LeftSeatHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v9

    goto :goto_2e

    :cond_4b
    const/4 v9, 0x0

    :goto_2e
    const/16 v10, 0xa

    .line 781
    invoke-virtual {v1, v10, v9}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_4c

    .line 786
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_2f

    :cond_4c
    const/4 v9, 0x0

    :goto_2f
    if-eqz v0, :cond_4d

    .line 792
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v9

    goto :goto_30

    :cond_4d
    const/4 v9, 0x0

    :goto_30
    and-long v10, v2, v14

    cmp-long v10, v10, v4

    const-wide/32 v11, 0x200000

    if-eqz v10, :cond_50

    if-eqz v8, :cond_4e

    move v9, v13

    :cond_4e
    if-eqz v10, :cond_51

    if-eqz v9, :cond_4f

    const-wide/32 v19, 0x400000

    or-long v2, v2, v19

    goto :goto_31

    :cond_4f
    or-long/2addr v2, v11

    goto :goto_31

    :cond_50
    const/4 v9, 0x0

    :cond_51
    :goto_31
    and-long v10, v2, v11

    cmp-long v8, v10, v4

    if-eqz v8, :cond_54

    if-eqz v0, :cond_52

    .line 815
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1RightSeatHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_32

    :cond_52
    const/4 v8, 0x0

    :goto_32
    const/16 v10, 0x12

    .line 817
    invoke-virtual {v1, v10, v8}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_53

    .line 822
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_33

    :cond_53
    const/4 v8, 0x0

    :goto_33
    if-eqz v0, :cond_54

    .line 828
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v8

    goto :goto_34

    :cond_54
    const/4 v8, 0x0

    :goto_34
    and-long v10, v2, v14

    cmp-long v10, v10, v4

    const-wide/high16 v11, 0x2000000000000L

    if-eqz v10, :cond_57

    if-eqz v9, :cond_55

    move v8, v13

    :cond_55
    if-eqz v10, :cond_58

    if-eqz v8, :cond_56

    const-wide/high16 v9, 0x4000000000000L

    or-long/2addr v2, v9

    goto :goto_35

    :cond_56
    or-long/2addr v2, v11

    goto :goto_35

    :cond_57
    const/4 v8, 0x0

    :cond_58
    :goto_35
    and-long v9, v2, v11

    cmp-long v9, v9, v4

    if-eqz v9, :cond_5b

    if-eqz v0, :cond_59

    .line 851
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1LeftSeatBackrestSupport()Landroidx/databinding/ObservableInt;

    move-result-object v9

    goto :goto_36

    :cond_59
    const/4 v9, 0x0

    :goto_36
    const/4 v10, 0x7

    .line 853
    invoke-virtual {v1, v10, v9}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_5a

    .line 858
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_37

    :cond_5a
    const/4 v9, 0x0

    :goto_37
    if-eqz v0, :cond_5b

    .line 864
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v9

    goto :goto_38

    :cond_5b
    const/4 v9, 0x0

    :goto_38
    and-long v10, v2, v14

    cmp-long v10, v10, v4

    const-wide v11, 0x2000000000L

    if-eqz v10, :cond_5e

    if-eqz v8, :cond_5c

    move v9, v13

    :cond_5c
    if-eqz v10, :cond_5f

    if-eqz v9, :cond_5d

    const-wide v19, 0x4000000000L

    or-long v2, v2, v19

    goto :goto_39

    :cond_5d
    or-long/2addr v2, v11

    goto :goto_39

    :cond_5e
    const/4 v9, 0x0

    :cond_5f
    :goto_39
    and-long v10, v2, v11

    cmp-long v8, v10, v4

    if-eqz v8, :cond_62

    if-eqz v0, :cond_60

    .line 887
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1RightSeatBackrestSupport()Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_3a

    :cond_60
    const/4 v8, 0x0

    :goto_3a
    const/16 v10, 0x8

    .line 889
    invoke-virtual {v1, v10, v8}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_61

    .line 894
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_3b

    :cond_61
    const/4 v8, 0x0

    :goto_3b
    if-eqz v0, :cond_62

    .line 900
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v8

    goto :goto_3c

    :cond_62
    const/4 v8, 0x0

    :goto_3c
    and-long v10, v2, v14

    cmp-long v10, v10, v4

    if-eqz v10, :cond_65

    if-eqz v9, :cond_63

    move v8, v13

    :cond_63
    if-eqz v10, :cond_66

    if-eqz v8, :cond_64

    const-wide/32 v9, 0x40000000

    goto :goto_3d

    :cond_64
    const-wide/32 v9, 0x20000000

    :goto_3d
    or-long/2addr v2, v9

    goto :goto_3e

    :cond_65
    const/4 v8, 0x0

    :cond_66
    :goto_3e
    const-wide/32 v9, 0x20000000

    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_69

    if-eqz v0, :cond_67

    .line 923
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1LeftSeatLumbarHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v9

    goto :goto_3f

    :cond_67
    const/4 v9, 0x0

    :goto_3f
    const/16 v10, 0xb

    .line 925
    invoke-virtual {v1, v10, v9}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_68

    .line 930
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_40

    :cond_68
    const/4 v9, 0x0

    :goto_40
    if-eqz v0, :cond_69

    .line 936
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v9

    goto :goto_41

    :cond_69
    const/4 v9, 0x0

    :goto_41
    and-long v10, v2, v14

    cmp-long v10, v10, v4

    if-eqz v10, :cond_6c

    if-eqz v8, :cond_6a

    move v9, v13

    :cond_6a
    if-eqz v10, :cond_6d

    if-eqz v9, :cond_6b

    const-wide/32 v10, 0x4000000

    goto :goto_42

    :cond_6b
    const-wide/32 v10, 0x2000000

    :goto_42
    or-long/2addr v2, v10

    goto :goto_43

    :cond_6c
    const/4 v9, 0x0

    :cond_6d
    :goto_43
    const-wide/32 v10, 0x2000000

    and-long/2addr v10, v2

    cmp-long v8, v10, v4

    if-eqz v8, :cond_70

    if-eqz v0, :cond_6e

    .line 959
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow1LeftSeatLumbarExtendedSupport()Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_44

    :cond_6e
    const/4 v8, 0x0

    :goto_44
    const/16 v10, 0x9

    .line 961
    invoke-virtual {v1, v10, v8}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_6f

    .line 966
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_45

    :cond_6f
    const/4 v8, 0x0

    :goto_45
    if-eqz v0, :cond_70

    .line 972
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v8

    goto :goto_46

    :cond_70
    const/4 v8, 0x0

    :goto_46
    and-long v10, v2, v14

    cmp-long v10, v10, v4

    if-eqz v10, :cond_73

    if-eqz v9, :cond_71

    move v8, v13

    :cond_71
    if-eqz v10, :cond_74

    if-eqz v8, :cond_72

    const-wide/32 v9, 0x1000000

    goto :goto_47

    :cond_72
    const-wide/32 v9, 0x800000

    :goto_47
    or-long/2addr v2, v9

    goto :goto_48

    :cond_73
    const/4 v8, 0x0

    :cond_74
    :goto_48
    const-wide/32 v9, 0x800000

    and-long/2addr v9, v2

    cmp-long v9, v9, v4

    if-eqz v9, :cond_77

    if-eqz v0, :cond_75

    .line 995
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow2RightSeatLegSupportHeightSupport()Landroidx/databinding/ObservableInt;

    move-result-object v9

    goto :goto_49

    :cond_75
    const/4 v9, 0x0

    :goto_49
    const/16 v10, 0xd

    .line 997
    invoke-virtual {v1, v10, v9}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v9, :cond_76

    .line 1002
    invoke-virtual {v9}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_4a

    :cond_76
    const/4 v9, 0x0

    :goto_4a
    if-eqz v0, :cond_77

    .line 1008
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v9

    goto :goto_4b

    :cond_77
    const/4 v9, 0x0

    :goto_4b
    and-long v10, v2, v14

    cmp-long v10, v10, v4

    if-eqz v10, :cond_7a

    if-eqz v8, :cond_78

    move v9, v13

    :cond_78
    if-eqz v10, :cond_7b

    if-eqz v9, :cond_79

    const-wide v10, 0x40000000000L

    goto :goto_4c

    :cond_79
    const-wide v10, 0x20000000000L

    :goto_4c
    or-long/2addr v2, v10

    goto :goto_4d

    :cond_7a
    const/4 v9, 0x0

    :cond_7b
    :goto_4d
    const-wide v10, 0x20000000000L

    and-long/2addr v10, v2

    cmp-long v8, v10, v4

    if-eqz v8, :cond_7e

    if-eqz v0, :cond_7c

    .line 1031
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->getRow2RightSeatLegSupportLengthSupport()Landroidx/databinding/ObservableInt;

    move-result-object v8

    goto :goto_4e

    :cond_7c
    const/4 v8, 0x0

    :goto_4e
    const/16 v10, 0xe

    .line 1033
    invoke-virtual {v1, v10, v8}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_7d

    .line 1038
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_4f

    :cond_7d
    const/4 v8, 0x0

    :goto_4f
    if-eqz v0, :cond_7e

    .line 1044
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/MainViewModel;->isLocationVisibility(I)Z

    move-result v0

    goto :goto_50

    :cond_7e
    const/4 v0, 0x0

    :goto_50
    and-long v10, v2, v14

    cmp-long v8, v10, v4

    if-eqz v8, :cond_7f

    if-eqz v9, :cond_80

    move v0, v13

    goto :goto_51

    :cond_7f
    const/4 v0, 0x0

    :cond_80
    :goto_51
    const-wide/32 v8, 0x1fffdf

    and-long/2addr v8, v2

    cmp-long v8, v8, v4

    if-eqz v8, :cond_82

    if-eqz v7, :cond_81

    move v14, v13

    goto :goto_52

    :cond_81
    move v14, v0

    goto :goto_52

    :cond_82
    const/4 v14, 0x0

    :goto_52
    if-eqz v8, :cond_83

    .line 1063
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->tab:Lcom/geely/hvac/component/MainTab;

    invoke-static {v0, v14}, Lcom/geely/hvac/component/MainTab;->bindMainTabSeatAvailable(Lcom/geely/hvac/component/MainTab;Z)V

    :cond_83
    const-wide/32 v7, 0x180020

    and-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-eqz v0, :cond_84

    .line 1068
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->tab:Lcom/geely/hvac/component/MainTab;

    invoke-static {v0, v6}, Lcom/geely/hvac/component/MainTab;->bindFragranceAvailable(Lcom/geely/hvac/component/MainTab;Z)V

    :cond_84
    return-void

    :catchall_0
    move-exception v0

    .line 310
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
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

    .line 51
    monitor-enter p0

    const-wide/32 v0, 0x100000

    .line 52
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
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

    .line 128
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1RightSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 126
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelRow1RightSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 124
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 122
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1LEFT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow2RightSeatLegSupportLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 118
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow2RightSeatLegSupportHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 116
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelRow1LeftSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 114
    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1LeftSeatLumbarHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 112
    :pswitch_8
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1LeftSeatHeightSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 110
    :pswitch_9
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1LeftSeatLumbarExtendedSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_a
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1RightSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_b
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1LeftSeatBackrestSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_c
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1LeftSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_d
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelFragranceSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_e
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelRow1RightSeatVentilateSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_f
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsHVACFUNCSEATMASSAGESWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 96
    :pswitch_10
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetSupportObservableGlyCarPropertyIdsSETTINGFUNCSEATPHYSIOTHERAPYSWITCHGlyCarAreaIdSEATROW1RIGHT(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 94
    :pswitch_11
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelGetRow1RightSeatLengthSupport(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 92
    :pswitch_12
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->onChangeModelRow1LeftSeatHeatSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public setModel(Lcom/geely/hvac/viewmodel/MainViewModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Model"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/MainViewModel;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    const-wide/32 v2, 0x80000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 84
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutMainBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
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

    .line 71
    check-cast p2, Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutMainBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/MainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
