.class public abstract Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutFragranceTipsBinding.java"


# instance fields
.field public final cardView:Lcom/geely/hvac/component/ConstraintLayoutWithBg;

.field public final close:Landroidx/appcompat/widget/AppCompatImageView;

.field public final fragmentTipsTab0:Landroid/widget/ImageView;

.field public final fragmentTipsTab1:Landroid/widget/ImageView;

.field protected mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tvFragranceTipsTxt1:Landroidx/appcompat/widget/AppCompatTextView;

.field public final vpFragranceTips:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ConstraintLayoutWithBg;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/viewpager/widget/ViewPager;)V
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
            "cardView",
            "close",
            "fragmentTipsTab0",
            "fragmentTipsTab1",
            "tvFragranceTipsTxt1",
            "vpFragranceTips"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->cardView:Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    .line 50
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    .line 51
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->fragmentTipsTab0:Landroid/widget/ImageView;

    .line 52
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->fragmentTipsTab1:Landroid/widget/ImageView;

    .line 53
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->tvFragranceTipsTxt1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    iput-object p9, p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->vpFragranceTips:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 104
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;
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

    const v0, 0x7f0c0077

    .line 116
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 86
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;
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

    .line 67
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;
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

    const v0, 0x7f0c0077

    .line 81
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;
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

    const v0, 0x7f0c0077

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTipsBinding;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

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
