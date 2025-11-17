.class public Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;
.super Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBinding;
.source "LayoutSeatPhysiotherapyInfoBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

.field private final mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;)V
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

    .line 33
    sget-object v0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;[Ljava/lang/Object;)V
    .locals 5
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

    const/4 v0, 0x0

    .line 36
    aget-object v1, p2, v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v3, -0x1

    .line 156
    iput-wide v3, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    .line 38
    aget-object p1, p3, v0

    check-cast p1, Lcom/geely/hvac/component/ViewWithBackground;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mboundView0:Lcom/geely/hvac/component/ViewWithBackground;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setTag(Ljava/lang/Object;)V

    .line 40
    aget-object p1, p3, v2

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 41
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 43
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mboundView3:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 45
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->setRootTag([Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeParentType(Landroidx/databinding/ObservableInt;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ParentType",
            "fieldId"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    .line 102
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
    .locals 7

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 113
    iput-wide v2, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v4, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mParent:Lcom/geely/hvac/component/PhysiotherapyInfo;

    const-wide/16 v5, 0x7

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v4}, Lcom/geely/hvac/component/PhysiotherapyInfo;->getType()Landroidx/databinding/ObservableInt;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0, v3, v2}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v2}, Landroidx/databinding/ObservableInt;->get()I

    move-result v3

    :cond_1
    if-eqz v4, :cond_2

    .line 140
    invoke-virtual {v4, v3}, Lcom/geely/hvac/component/PhysiotherapyInfo;->formatType(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    invoke-virtual {v4, v3}, Lcom/geely/hvac/component/PhysiotherapyInfo;->formatTypeToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mboundView1:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v0, v1}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mboundView2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    monitor-exit p0

    return v0

    .line 65
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

    .line 53
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 54
    :try_start_0
    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 55
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

    .line 94
    :cond_0
    check-cast p2, Landroidx/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->onChangeParentType(Landroidx/databinding/ObservableInt;I)Z

    move-result p1

    return p1
.end method

.method public setParent(Lcom/geely/hvac/component/PhysiotherapyInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Parent"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mParent:Lcom/geely/hvac/component/PhysiotherapyInfo;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->mDirtyFlags:J

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 86
    invoke-virtual {p0, p1}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->notifyPropertyChanged(I)V

    .line 87
    invoke-super {p0}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 85
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

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 73
    check-cast p2, Lcom/geely/hvac/component/PhysiotherapyInfo;

    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBindingImpl;->setParent(Lcom/geely/hvac/component/PhysiotherapyInfo;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
