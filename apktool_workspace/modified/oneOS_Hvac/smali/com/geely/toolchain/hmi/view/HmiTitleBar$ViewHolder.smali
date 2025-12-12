.class public Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HmiTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final ivIcon:Landroid/widget/ImageView;

.field private final tvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 198
    sget v0, Lcom/geely/toolchain/hmi/R$id;->iv_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 199
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_subTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;->tvContent:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/geely/toolchain/hmi/view/HmiTitleBar$ViewHolder;->tvContent:Landroid/widget/TextView;

    return-object p0
.end method
