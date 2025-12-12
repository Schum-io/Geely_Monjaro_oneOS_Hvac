.class public Lcom/geely/hvac/adapter/FragranceViewHolder;
.super Lcom/geely/hvac/adapter/MainPagerViewHolder;
.source "FragranceViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/hvac/adapter/MainPagerViewHolder<",
        "Lcom/geely/hvac/databinding/PagerItemFragranceBinding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/geely/hvac/databinding/PagerItemFragranceBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/geely/hvac/adapter/MainPagerViewHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/adapter/FragranceViewHolder;
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

    .line 17
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    .line 16
    invoke-static {p0, p1, v0}, Lcom/geely/hvac/databinding/PagerItemFragranceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/PagerItemFragranceBinding;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p2}, Lcom/geely/hvac/databinding/PagerItemFragranceBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 22
    new-instance p1, Lcom/geely/hvac/adapter/FragranceViewHolder;

    invoke-direct {p1, p0}, Lcom/geely/hvac/adapter/FragranceViewHolder;-><init>(Lcom/geely/hvac/databinding/PagerItemFragranceBinding;)V

    return-object p1
.end method
