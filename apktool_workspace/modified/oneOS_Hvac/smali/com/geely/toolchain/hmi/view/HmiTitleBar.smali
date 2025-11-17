.class public Lcom/geely/toolchain/hmi/view/HmiTitleBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "HmiTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;,
        Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarBackListener;,
        Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;,
        Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;,
        Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;
    }
.end annotation


# instance fields
.field private mIvBack:Landroid/widget/ImageView;

.field private mRvSub:Landroidx/recyclerview/widget/RecyclerView;

.field private mSubTitleAdapter:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

.field private mTitleText:Ljava/lang/String;

.field private mTvTitle:Landroid/widget/TextView;

.field private onTitleBarBackListener:Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarBackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_title_bar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mIvBack:Landroid/widget/ImageView;

    .line 66
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mTvTitle:Landroid/widget/TextView;

    .line 67
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rv_main:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mRvSub:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiTitleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiTitleBar_hmiTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mIvBack:Landroid/widget/ImageView;

    new-instance p2, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$_X7NT_OjdVOxz4JnN3xJlEx4r90;

    invoke-direct {p2, p0}, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$_X7NT_OjdVOxz4JnN3xJlEx4r90;-><init>(Lcom/geely/toolchain/hmi/view/HmiTitleBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance p1, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

    invoke-direct {p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mSubTitleAdapter:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

    .line 81
    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mRvSub:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 84
    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mRvSub:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$HmiTitleBar(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->onTitleBarBackListener:Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarBackListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarBackListener;->onTitleBarBack(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setOnTitleBarBackListener(Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarBackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTitleBarBackListener"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->onTitleBarBackListener:Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarBackListener;

    return-void
.end method

.method public setOnTitleBarSubItemClickListener(Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTitleBarSubItemClickListener"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mSubTitleAdapter:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->setOnTitleBarSubItemClickListener(Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;)V

    return-void
.end method

.method public setSubData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mSubTitleAdapter:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleText"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mTitleText:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
