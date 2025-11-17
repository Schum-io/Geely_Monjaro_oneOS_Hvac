.class public Lcom/geely/hvac/adapter/SeatViewHolder;
.super Lcom/geely/hvac/adapter/MainPagerViewHolder;
.source "SeatViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/hvac/adapter/MainPagerViewHolder<",
        "Lcom/geely/hvac/databinding/PagerItemSeatBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/geely/hvac/databinding/PagerItemSeatBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/geely/hvac/adapter/MainPagerViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/SeatViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "viewModel"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/PagerItemSeatBinding;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/PagerItemSeatBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 16
    invoke-virtual {p2, p0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->setViewBinding(Lcom/geely/hvac/databinding/PagerItemSeatBinding;)V

    .line 17
    new-instance p1, Lcom/geely/hvac/adapter/SeatViewHolder;

    invoke-direct {p1, p0}, Lcom/geely/hvac/adapter/SeatViewHolder;-><init>(Lcom/geely/hvac/databinding/PagerItemSeatBinding;)V

    return-object p1
.end method
