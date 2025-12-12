.class Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HmiTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HmiViewHolder"
.end annotation


# instance fields
.field public textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public view:Landroid/view/View;


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

    .line 105
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 106
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tabItemText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 107
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tabItemIndicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->view:Landroid/view/View;

    return-void
.end method
