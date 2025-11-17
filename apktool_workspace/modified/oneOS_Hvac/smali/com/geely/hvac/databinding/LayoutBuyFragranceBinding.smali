.class public abstract Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutBuyFragranceBinding.java"


# instance fields
.field public final close:Landroidx/appcompat/widget/AppCompatImageView;

.field protected mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final qrBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field public final tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "close",
            "qrBg",
            "qrIcon",
            "tvFragranceBuyWay",
            "tvFragranceId",
            "tvFragranceWait"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 47
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    .line 48
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrBg:Lcom/geely/hvac/component/ViewWithBackground;

    .line 49
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 50
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iput-object p9, p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0071

    .line 114
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 65
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0071

    .line 79
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c0071

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method public abstract setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation
.end method
