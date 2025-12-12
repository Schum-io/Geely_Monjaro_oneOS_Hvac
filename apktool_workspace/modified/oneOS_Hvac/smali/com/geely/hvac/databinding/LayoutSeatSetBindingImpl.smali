.class public Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatSetBinding;
.source "LayoutSeatSetBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView1:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView10:Lcom/geely/hvac/component/SeatWindTimeSelector;

.field private final mboundView12:Lcom/geely/hvac/component/SeatHeatTimeSelector;

.field private final mboundView13:Landroid/widget/LinearLayout;

.field private final mboundView14:Lcom/geely/hvac/component/SeatHeatTimeSelector;

.field private final mboundView3:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private final mboundView4:Lcom/geely/hvac/component/SeatHeatTimeSelector;

.field private final mboundView5:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private final mboundView6:Lcom/geely/hvac/component/SeatWindTimeSelector;

.field private final mboundView7:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private final mboundView8:Lcom/geely/hvac/component/SeatHeatTimeSelector;

.field private final mboundView9:Landroidx/appcompat/widget/LinearLayoutCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900c1

    const/16 v2, 0xf

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090269

    const/16 v2, 0x10

    .line 18
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

    .line 53
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9
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

    const/16 v0, 0xf

    .line 56
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/geely/hvac/component/Switch;

    const/16 v4, 0xd

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/geely/hvac/databinding/LayoutSeatSetBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/LinearLayoutCompat;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/geely/hvac/component/Switch;)V

    const-wide/16 v0, -0x1

    .line 754
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 62
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 64
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView1:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0xa

    .line 66
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatWindTimeSelector;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView10:Lcom/geely/hvac/component/SeatWindTimeSelector;

    const-string v1, "4"

    .line 67
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/SeatWindTimeSelector;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0xc

    .line 68
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatHeatTimeSelector;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView12:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    const-string v1, "1"

    .line 69
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/SeatHeatTimeSelector;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0xd

    .line 70
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView13:Landroid/widget/LinearLayout;

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0xe

    .line 72
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatHeatTimeSelector;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView14:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    const-string v2, "3"

    .line 73
    invoke-virtual {p1, v2}, Lcom/geely/hvac/component/SeatHeatTimeSelector;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 74
    aget-object p1, p3, p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView3:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 75
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 76
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatHeatTimeSelector;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    .line 77
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/SeatHeatTimeSelector;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 78
    aget-object p1, p3, p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView5:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 79
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 80
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatWindTimeSelector;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView6:Lcom/geely/hvac/component/SeatWindTimeSelector;

    const-string v1, "2"

    .line 81
    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/SeatWindTimeSelector;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 82
    aget-object p1, p3, p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView7:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 83
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x8

    .line 84
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/hvac/component/SeatHeatTimeSelector;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    .line 85
    invoke-virtual {p1, v2}, Lcom/geely/hvac/component/SeatHeatTimeSelector;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x9

    .line 86
    aget-object p1, p3, p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView9:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 87
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->row2LeftWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->steeringWheelSwitch:Lcom/geely/hvac/component/Switch;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/Switch;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeModelRow1LeftSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatHeatTime",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1LeftSeatHeatTimeSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatHeatTimeSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1LeftSeatVentilateTime(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatVentilateTime",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 269
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

.method private onChangeModelRow1LeftSeatVentilateTimeSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1LeftSeatVentilateTimeSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1RightSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatHeatTime",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1RightSeatHeatTimeSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatHeatTimeSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow1RightSeatVentilateTime(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatVentilateTime",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 278
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

.method private onChangeModelRow1RightSeatVentilateTimeSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow1RightSeatVentilateTimeSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow2LeftSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow2LeftSeatHeatTime",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelRow2LeftSeatHeatTimeSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow2LeftSeatHeatTimeSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 260
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

.method private onChangeModelRow2RightSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelRow2RightSeatHeatTime",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 242
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

.method private onChangeModelSteeringWheelHeatAutoState(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSteeringWheelHeatAutoState",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

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

.method private onChangeModelSteeringWheelHeatAutoSupported(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ModelSteeringWheelHeatAutoSupported",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 251
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
    .locals 65

    move-object/from16 v1, p0

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-wide v2, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 289
    iput-wide v4, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    const-wide/16 v6, 0x7fff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v13, 0x6010

    const-wide/16 v15, 0x6020

    const-wide/16 v17, 0x6008

    const-wide/16 v19, 0x6400

    const-wide/16 v21, 0x6004

    const-wide/16 v23, 0x6002

    const-wide/16 v25, 0x7000

    const-wide/16 v27, 0x6000

    const-wide/16 v29, 0x6080

    const-wide/16 v31, 0x6001

    const-wide/16 v33, 0x6200

    const/16 v35, 0x0

    const/4 v7, 0x0

    if-eqz v6, :cond_3a

    and-long v36, v2, v31

    cmp-long v6, v36, v4

    if-eqz v6, :cond_6

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatTimeSupported()Landroidx/databinding/ObservableInt;

    move-result-object v36

    move-object/from16 v8, v36

    goto :goto_0

    :cond_0
    move-object/from16 v8, v35

    .line 352
    :goto_0
    invoke-virtual {v1, v7, v8}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v8, :cond_1

    .line 357
    invoke-virtual {v8}, Landroidx/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v37

    .line 365
    invoke-virtual {v0, v8}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v7

    move/from16 v37, v8

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v8, :cond_3

    const-wide/32 v38, 0x100000

    goto :goto_3

    :cond_3
    const-wide/32 v38, 0x80000

    :goto_3
    or-long v2, v2, v38

    :cond_4
    if-eqz v8, :cond_5

    move v6, v7

    goto :goto_4

    :cond_5
    const/16 v6, 0x8

    goto :goto_4

    :cond_6
    move v6, v7

    move/from16 v37, v6

    :goto_4
    and-long v38, v2, v27

    cmp-long v8, v38, v4

    if-eqz v8, :cond_7

    if-eqz v0, :cond_7

    .line 384
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatHeatTimeChangeListener()Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    move-result-object v8

    .line 386
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatTimeChangeListener()Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    move-result-object v38

    .line 388
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatVentilateTimeChangeListener()Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    move-result-object v39

    .line 390
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeatTimeChangeListener()Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    move-result-object v40

    .line 392
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSteeringWheelHeatAutoListener()Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    move-result-object v41

    .line 394
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatHeatTimeChangeListener()Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    move-result-object v42

    .line 396
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateTimeChangeListener()Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;

    move-result-object v43

    goto :goto_5

    :cond_7
    move-object/from16 v8, v35

    move-object/from16 v38, v8

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    :goto_5
    and-long v44, v2, v23

    cmp-long v44, v44, v4

    if-eqz v44, :cond_9

    if-eqz v0, :cond_8

    .line 403
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatHeatTime()Landroidx/databinding/ObservableInt;

    move-result-object v44

    move-object/from16 v7, v44

    goto :goto_6

    :cond_8
    move-object/from16 v7, v35

    :goto_6
    const/4 v11, 0x1

    .line 405
    invoke-virtual {v1, v11, v7}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v7, :cond_9

    .line 410
    invoke-virtual {v7}, Landroidx/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    and-long v11, v2, v21

    cmp-long v11, v11, v4

    if-eqz v11, :cond_10

    if-eqz v0, :cond_a

    .line 417
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatVentilateTimeSupported()Landroidx/databinding/ObservableInt;

    move-result-object v12

    goto :goto_8

    :cond_a
    move-object/from16 v12, v35

    :goto_8
    const/4 v9, 0x2

    .line 419
    invoke-virtual {v1, v9, v12}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v12, :cond_b

    .line 424
    invoke-virtual {v12}, Landroidx/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    if-eqz v0, :cond_c

    .line 430
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v10

    .line 432
    invoke-virtual {v0, v9}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v9

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    if-eqz v11, :cond_e

    if-eqz v9, :cond_d

    const-wide/32 v11, 0x40000

    goto :goto_b

    :cond_d
    const-wide/32 v11, 0x20000

    :goto_b
    or-long/2addr v2, v11

    :cond_e
    if-eqz v9, :cond_f

    const/4 v9, 0x0

    goto :goto_c

    :cond_f
    const/16 v9, 0x8

    goto :goto_c

    :cond_10
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_c
    and-long v11, v2, v17

    cmp-long v11, v11, v4

    if-eqz v11, :cond_12

    if-eqz v0, :cond_11

    .line 451
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeatTime()Landroidx/databinding/ObservableInt;

    move-result-object v11

    goto :goto_d

    :cond_11
    move-object/from16 v11, v35

    :goto_d
    const/4 v12, 0x3

    .line 453
    invoke-virtual {v1, v12, v11}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v11, :cond_12

    .line 458
    invoke-virtual {v11}, Landroidx/databinding/ObservableInt;->get()I

    move-result v11

    goto :goto_e

    :cond_12
    const/4 v11, 0x0

    :goto_e
    and-long v47, v2, v13

    cmp-long v12, v47, v4

    if-eqz v12, :cond_19

    if-eqz v0, :cond_13

    .line 465
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatHeatTimeSupported()Landroidx/databinding/ObservableInt;

    move-result-object v47

    move-object/from16 v13, v47

    goto :goto_f

    :cond_13
    move-object/from16 v13, v35

    :goto_f
    const/4 v14, 0x4

    .line 467
    invoke-virtual {v1, v14, v13}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v13, :cond_14

    .line 472
    invoke-virtual {v13}, Landroidx/databinding/ObservableInt;->get()I

    move-result v13

    goto :goto_10

    :cond_14
    const/4 v13, 0x0

    :goto_10
    if-eqz v0, :cond_15

    .line 478
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v14

    .line 480
    invoke-virtual {v0, v13}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v13

    goto :goto_11

    :cond_15
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_11
    if-eqz v12, :cond_17

    if-eqz v14, :cond_16

    const-wide/32 v49, 0x4000000

    goto :goto_12

    :cond_16
    const-wide/32 v49, 0x2000000

    :goto_12
    or-long v2, v2, v49

    :cond_17
    if-eqz v14, :cond_18

    const/4 v12, 0x0

    goto :goto_13

    :cond_18
    const/16 v12, 0x8

    goto :goto_13

    :cond_19
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_13
    and-long v49, v2, v15

    cmp-long v14, v49, v4

    if-eqz v14, :cond_1b

    if-eqz v0, :cond_1a

    .line 499
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatHeatTime()Landroidx/databinding/ObservableInt;

    move-result-object v14

    goto :goto_14

    :cond_1a
    move-object/from16 v14, v35

    :goto_14
    const/4 v15, 0x5

    .line 501
    invoke-virtual {v1, v15, v14}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v14, :cond_1b

    .line 506
    invoke-virtual {v14}, Landroidx/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_15

    :cond_1b
    const/4 v14, 0x0

    :goto_15
    const-wide/16 v15, 0x6040

    and-long v51, v2, v15

    cmp-long v15, v51, v4

    if-eqz v15, :cond_1d

    if-eqz v0, :cond_1c

    .line 513
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSteeringWheelHeatAutoState()Landroidx/databinding/ObservableBoolean;

    move-result-object v15

    goto :goto_16

    :cond_1c
    move-object/from16 v15, v35

    :goto_16
    const/4 v4, 0x6

    .line 515
    invoke-virtual {v1, v4, v15}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_1d

    .line 520
    invoke-virtual {v15}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_17

    :cond_1d
    const/4 v4, 0x0

    :goto_17
    and-long v15, v2, v29

    const-wide/16 v51, 0x0

    cmp-long v5, v15, v51

    if-eqz v5, :cond_24

    if-eqz v0, :cond_1e

    .line 527
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateTimeSupported()Landroidx/databinding/ObservableInt;

    move-result-object v15

    move/from16 v16, v4

    goto :goto_18

    :cond_1e
    move/from16 v16, v4

    move-object/from16 v15, v35

    :goto_18
    const/4 v4, 0x7

    .line 529
    invoke-virtual {v1, v4, v15}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v15, :cond_1f

    .line 534
    invoke-virtual {v15}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_19

    :cond_1f
    const/4 v4, 0x0

    :goto_19
    if-eqz v0, :cond_20

    .line 540
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v15

    .line 542
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v4

    goto :goto_1a

    :cond_20
    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_1a
    if-eqz v5, :cond_22

    if-eqz v4, :cond_21

    const-wide/32 v53, 0x1000000

    goto :goto_1b

    :cond_21
    const-wide/32 v53, 0x800000

    :goto_1b
    or-long v2, v2, v53

    :cond_22
    if-eqz v4, :cond_23

    const/4 v4, 0x0

    goto :goto_1c

    :cond_23
    const/16 v4, 0x8

    goto :goto_1c

    :cond_24
    move/from16 v16, v4

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_1c
    const-wide/16 v45, 0x6100

    and-long v53, v2, v45

    const-wide/16 v51, 0x0

    cmp-long v5, v53, v51

    if-eqz v5, :cond_26

    if-eqz v0, :cond_25

    .line 561
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2RightSeatHeatTime()Landroidx/databinding/ObservableInt;

    move-result-object v5

    move/from16 v36, v4

    goto :goto_1d

    :cond_25
    move/from16 v36, v4

    move-object/from16 v5, v35

    :goto_1d
    const/16 v4, 0x8

    .line 563
    invoke-virtual {v1, v4, v5}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v5, :cond_27

    .line 568
    invoke-virtual {v5}, Landroidx/databinding/ObservableInt;->get()I

    move-result v5

    goto :goto_1e

    :cond_26
    move/from16 v36, v4

    const/16 v4, 0x8

    :cond_27
    const/4 v5, 0x0

    :goto_1e
    and-long v53, v2, v33

    const-wide/16 v51, 0x0

    cmp-long v53, v53, v51

    if-eqz v53, :cond_2e

    if-eqz v0, :cond_28

    .line 575
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSteeringWheelHeatAutoSupported()Landroidx/databinding/ObservableInt;

    move-result-object v54

    move/from16 v55, v5

    move-object/from16 v4, v54

    goto :goto_1f

    :cond_28
    move/from16 v55, v5

    move-object/from16 v4, v35

    :goto_1f
    const/16 v5, 0x9

    .line 577
    invoke-virtual {v1, v5, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_29

    .line 582
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_20

    :cond_29
    const/4 v4, 0x0

    :goto_20
    if-eqz v0, :cond_2a

    .line 588
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v4

    goto :goto_21

    :cond_2a
    const/4 v4, 0x0

    :goto_21
    if-eqz v53, :cond_2c

    if-eqz v4, :cond_2b

    const-wide/32 v56, 0x400000

    goto :goto_22

    :cond_2b
    const-wide/32 v56, 0x200000

    :goto_22
    or-long v2, v2, v56

    :cond_2c
    if-eqz v4, :cond_2d

    goto :goto_23

    :cond_2d
    const/16 v4, 0x8

    goto :goto_24

    :cond_2e
    move/from16 v55, v5

    :goto_23
    const/4 v4, 0x0

    :goto_24
    and-long v56, v2, v19

    const-wide/16 v51, 0x0

    cmp-long v5, v56, v51

    if-eqz v5, :cond_35

    if-eqz v0, :cond_2f

    .line 607
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow2LeftSeatHeatTimeSupported()Landroidx/databinding/ObservableInt;

    move-result-object v53

    move/from16 v56, v6

    move-object/from16 v64, v53

    move/from16 v53, v4

    move-object/from16 v4, v64

    goto :goto_25

    :cond_2f
    move/from16 v53, v4

    move/from16 v56, v6

    move-object/from16 v4, v35

    :goto_25
    const/16 v6, 0xa

    .line 609
    invoke-virtual {v1, v6, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_30

    .line 614
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_26

    :cond_30
    const/4 v4, 0x0

    :goto_26
    if-eqz v0, :cond_31

    .line 620
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isFunctionActive(I)Z

    move-result v6

    .line 622
    invoke-virtual {v0, v4}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->isSeatHeatVentilateAvailable(I)Z

    move-result v4

    goto :goto_27

    :cond_31
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_27
    if-eqz v5, :cond_33

    if-eqz v4, :cond_32

    const-wide/32 v57, 0x10000

    goto :goto_28

    :cond_32
    const-wide/32 v57, 0x8000

    :goto_28
    or-long v2, v2, v57

    :cond_33
    if-eqz v4, :cond_34

    const/16 v54, 0x0

    goto :goto_29

    :cond_34
    const/16 v54, 0x8

    :goto_29
    const-wide/16 v4, 0x6800

    goto :goto_2a

    :cond_35
    move/from16 v53, v4

    move/from16 v56, v6

    const-wide/16 v4, 0x6800

    const/4 v6, 0x0

    const/16 v54, 0x0

    :goto_2a
    and-long v57, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v57, v57, v4

    if-eqz v57, :cond_37

    if-eqz v0, :cond_36

    .line 641
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1LeftSeatVentilateTime()Landroidx/databinding/ObservableInt;

    move-result-object v4

    goto :goto_2b

    :cond_36
    move-object/from16 v4, v35

    :goto_2b
    const/16 v5, 0xb

    .line 643
    invoke-virtual {v1, v5, v4}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_37

    .line 648
    invoke-virtual {v4}, Landroidx/databinding/ObservableInt;->get()I

    move-result v4

    goto :goto_2c

    :cond_37
    const/4 v4, 0x0

    :goto_2c
    and-long v57, v2, v25

    const-wide/16 v51, 0x0

    cmp-long v5, v57, v51

    if-eqz v5, :cond_39

    if-eqz v0, :cond_38

    .line 655
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getRow1RightSeatVentilateTime()Landroidx/databinding/ObservableInt;

    move-result-object v35

    :cond_38
    move-object/from16 v0, v35

    const/16 v5, 0xc

    .line 657
    invoke-virtual {v1, v5, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v0, :cond_39

    .line 662
    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    move/from16 v59, v4

    move/from16 v62, v7

    move/from16 v35, v9

    move/from16 v63, v16

    move/from16 v61, v37

    move-object/from16 v9, v42

    move/from16 v7, v53

    move/from16 v5, v54

    move/from16 v60, v56

    move v4, v0

    move/from16 v16, v10

    move/from16 v37, v13

    move/from16 v0, v36

    move-object/from16 v13, v40

    move-object/from16 v10, v43

    move/from16 v36, v11

    move/from16 v40, v14

    move-object/from16 v14, v41

    move-object v11, v8

    move-object/from16 v8, v38

    goto :goto_2d

    :cond_39
    move/from16 v59, v4

    move/from16 v62, v7

    move/from16 v35, v9

    move/from16 v63, v16

    move/from16 v0, v36

    move/from16 v61, v37

    move-object/from16 v9, v42

    move/from16 v7, v53

    move/from16 v5, v54

    move/from16 v60, v56

    const/4 v4, 0x0

    move/from16 v16, v10

    move/from16 v36, v11

    move/from16 v37, v13

    move-object/from16 v13, v40

    move-object/from16 v10, v43

    move-object v11, v8

    move/from16 v40, v14

    move-object/from16 v8, v38

    move-object/from16 v14, v41

    :goto_2d
    move/from16 v38, v12

    move-object/from16 v12, v39

    move/from16 v39, v55

    goto :goto_2e

    :cond_3a
    move-object/from16 v8, v35

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    :goto_2e
    and-long v33, v2, v33

    const-wide/16 v41, 0x0

    cmp-long v33, v33, v41

    if-eqz v33, :cond_3b

    move/from16 v33, v5

    .line 670
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView1:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_2f

    :cond_3b
    move/from16 v33, v5

    :goto_2f
    and-long v29, v2, v29

    cmp-long v5, v29, v41

    if-eqz v5, :cond_3c

    .line 675
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView10:Lcom/geely/hvac/component/SeatWindTimeSelector;

    invoke-static {v5, v15}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Z)V

    .line 676
    iget-object v5, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView9:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    :cond_3c
    and-long v25, v2, v25

    cmp-long v0, v25, v41

    if-eqz v0, :cond_3d

    .line 681
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView10:Lcom/geely/hvac/component/SeatWindTimeSelector;

    invoke-static {v0, v4}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;I)V

    :cond_3d
    and-long v4, v2, v27

    cmp-long v0, v4, v41

    if-eqz v0, :cond_3e

    .line 686
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView10:Lcom/geely/hvac/component/SeatWindTimeSelector;

    invoke-static {v0, v10}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;)V

    .line 687
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView12:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    invoke-static {v0, v9}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;)V

    .line 688
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView14:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    invoke-static {v0, v11}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;)V

    .line 689
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    invoke-static {v0, v13}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;)V

    .line 690
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView6:Lcom/geely/hvac/component/SeatWindTimeSelector;

    invoke-static {v0, v12}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;)V

    .line 691
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    invoke-static {v0, v8}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Lcom/geely/hvac/component/intf/SeatTimeSelectorChangeListener;)V

    .line 692
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->steeringWheelSwitch:Lcom/geely/hvac/component/Switch;

    invoke-static {v0, v14}, Lcom/geely/hvac/component/Switch;->bind(Lcom/geely/hvac/component/Switch;Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V

    :cond_3e
    and-long v4, v2, v19

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-eqz v0, :cond_3f

    .line 697
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView12:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    invoke-static {v0, v6}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Z)V

    .line 698
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView13:Landroid/widget/LinearLayout;

    move/from16 v4, v33

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 699
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView14:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    invoke-static {v0, v6}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Z)V

    .line 700
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->row2LeftWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3f
    const-wide/16 v4, 0x6020

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_40

    .line 705
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView12:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    move/from16 v14, v40

    invoke-static {v0, v14}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;I)V

    :cond_40
    const-wide/16 v4, 0x6100

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_41

    .line 710
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView14:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    move/from16 v4, v39

    invoke-static {v0, v4}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;I)V

    :cond_41
    const-wide/16 v4, 0x6010

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_42

    .line 715
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView3:Landroidx/appcompat/widget/LinearLayoutCompat;

    move/from16 v12, v38

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    .line 716
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    move/from16 v13, v37

    invoke-static {v0, v13}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Z)V

    :cond_42
    and-long v4, v2, v17

    cmp-long v0, v4, v6

    if-eqz v0, :cond_43

    .line 721
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView4:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    move/from16 v11, v36

    invoke-static {v0, v11}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;I)V

    :cond_43
    and-long v4, v2, v21

    cmp-long v0, v4, v6

    if-eqz v0, :cond_44

    .line 726
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView5:Landroidx/appcompat/widget/LinearLayoutCompat;

    move/from16 v9, v35

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    .line 727
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView6:Lcom/geely/hvac/component/SeatWindTimeSelector;

    move/from16 v10, v16

    invoke-static {v0, v10}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Z)V

    :cond_44
    const-wide/16 v4, 0x6800

    and-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_45

    .line 732
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView6:Lcom/geely/hvac/component/SeatWindTimeSelector;

    move/from16 v4, v59

    invoke-static {v0, v4}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;I)V

    :cond_45
    and-long v4, v2, v31

    cmp-long v0, v4, v6

    if-eqz v0, :cond_46

    .line 737
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView7:Landroidx/appcompat/widget/LinearLayoutCompat;

    move/from16 v4, v60

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    .line 738
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    move/from16 v4, v61

    invoke-static {v0, v4}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;Z)V

    :cond_46
    and-long v4, v2, v23

    cmp-long v0, v4, v6

    if-eqz v0, :cond_47

    .line 743
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mboundView8:Lcom/geely/hvac/component/SeatHeatTimeSelector;

    move/from16 v4, v62

    invoke-static {v0, v4}, Lcom/geely/hvac/component/SeatTimeSelector;->bind(Lcom/geely/hvac/component/SeatTimeSelector;I)V

    :cond_47
    const-wide/16 v4, 0x6040

    and-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_48

    .line 748
    iget-object v0, v1, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->steeringWheelSwitch:Lcom/geely/hvac/component/Switch;

    move/from16 v2, v63

    invoke-static {v0, v2}, Lcom/geely/hvac/component/Switch;->bind(Lcom/geely/hvac/component/Switch;Z)V

    :cond_48
    return-void

    :catchall_0
    move-exception v0

    .line 290
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 107
    monitor-exit p0

    return v0

    .line 109
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

    .line 97
    monitor-enter p0

    const-wide/16 v0, 0x4000

    .line 98
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 99
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

    .line 162
    :pswitch_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1RightSeatVentilateTime(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 160
    :pswitch_1
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1LeftSeatVentilateTime(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 158
    :pswitch_2
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow2LeftSeatHeatTimeSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 156
    :pswitch_3
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelSteeringWheelHeatAutoSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 154
    :pswitch_4
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow2RightSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 152
    :pswitch_5
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1RightSeatVentilateTimeSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 150
    :pswitch_6
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelSteeringWheelHeatAutoState(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 148
    :pswitch_7
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow2LeftSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 146
    :pswitch_8
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1LeftSeatHeatTimeSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 144
    :pswitch_9
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1LeftSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 142
    :pswitch_a
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1LeftSeatVentilateTimeSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 140
    :pswitch_b
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1RightSeatHeatTime(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 138
    :pswitch_c
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->onChangeModelRow1RightSeatHeatTimeSupported(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 126
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 130
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->notifyPropertyChanged(I)V

    .line 131
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatSetBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 129
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

    .line 117
    check-cast p2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatSetBindingImpl;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
