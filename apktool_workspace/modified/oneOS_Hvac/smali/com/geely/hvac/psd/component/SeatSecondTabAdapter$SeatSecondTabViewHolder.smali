.class public Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SeatSecondTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeatSecondTabViewHolder"
.end annotation


# instance fields
.field ivIcon:Landroid/widget/ImageView;

.field tvFunctionName:Lcom/geely/toolchain/hmi/view/HmiTextView;


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

    .line 85
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090171

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v0, 0x7f090334

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->tvFunctionName:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method
