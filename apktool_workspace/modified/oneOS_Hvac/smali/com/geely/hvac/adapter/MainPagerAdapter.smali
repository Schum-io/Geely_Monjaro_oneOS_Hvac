.class public Lcom/geely/hvac/adapter/MainPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MainPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/geely/hvac/adapter/MainPagerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mItemSize:I

.field private final mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "viewModel"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mItemSize:I

    .line 19
    iput-object p2, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 20
    iput-object p1, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mItemSize:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/geely/hvac/adapter/MainPagerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/geely/hvac/adapter/MainPagerAdapter;->onBindViewHolder(Lcom/geely/hvac/adapter/MainPagerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/geely/hvac/adapter/MainPagerViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder, holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",position:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/geely/hvac/adapter/MainPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/geely/hvac/adapter/MainPagerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/geely/hvac/adapter/MainPagerViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder, viewType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-static {p2, p1, v0}, Lcom/geely/hvac/adapter/FragranceViewHolder;->newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/FragranceViewHolder;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-static {p2, p1, v0}, Lcom/geely/hvac/adapter/SeatViewHolder;->newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/SeatViewHolder;

    move-result-object p1

    return-object p1

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mMainViewModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-static {p2, p1, v0}, Lcom/geely/hvac/adapter/AirConditionViewHolder;->newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/AirConditionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setItemSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 24
    iget v0, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mItemSize:I

    if-ne v0, p1, :cond_0

    return-void

    .line 27
    :cond_0
    iput p1, p0, Lcom/geely/hvac/adapter/MainPagerAdapter;->mItemSize:I

    .line 28
    invoke-virtual {p0}, Lcom/geely/hvac/adapter/MainPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
