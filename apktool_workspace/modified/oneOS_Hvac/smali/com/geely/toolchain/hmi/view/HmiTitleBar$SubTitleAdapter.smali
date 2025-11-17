.class public Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HmiTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubTitleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mSubItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;",
            ">;"
        }
    .end annotation
.end field

.field private onTitleBarSubItemClickListener:Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->mSubItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$HmiTitleBar$SubTitleAdapter(ILcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;Landroid/view/View;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->onTitleBarSubItemClickListener:Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p3, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;->onItemClick(Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;)V

    .line 181
    :cond_0
    invoke-static {p3}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
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

    .line 144
    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->onBindViewHolder(Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;I)V
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

    .line 168
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->mSubItemList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;

    if-nez v0, :cond_1

    return-void

    .line 175
    :cond_1
    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;->access$000(Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->getResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;->access$100(Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p1, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;

    invoke-direct {v1, p0, p2, v0}, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;-><init>(Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;ILcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;
    .locals 2
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

    .line 161
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_title_bar_item:I

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 163
    new-instance p2, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;

    invoke-direct {p2, p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
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

    .line 151
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->mSubItemList:Ljava/util/List;

    .line 152
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnTitleBarSubItemClickListener(Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTitleBarSubItemClickListener"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->onTitleBarSubItemClickListener:Lcom/geely/toolchain/hmi/view/HmiTitleBar$OnTitleBarSubItemClickListener;

    return-void
.end method
