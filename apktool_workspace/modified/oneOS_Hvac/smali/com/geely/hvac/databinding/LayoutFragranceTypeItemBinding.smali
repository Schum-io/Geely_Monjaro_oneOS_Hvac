.class public abstract Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutFragranceTypeItemBinding.java"


# instance fields
.field public final disableBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final iconBorder:Landroid/view/View;

.field public final iconWrap:Landroidx/cardview/widget/CardView;

.field public final indicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field public final label:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field protected mView:Lcom/geely/hvac/component/FragranceTypeItem;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiImageView;Landroid/view/View;Landroidx/cardview/widget/CardView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V
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
            "disableBg",
            "icon",
            "iconBorder",
            "iconWrap",
            "indicator",
            "label"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 47
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->disableBg:Lcom/geely/hvac/component/ViewWithBackground;

    .line 48
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 49
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->iconBorder:Landroid/view/View;

    .line 50
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->iconWrap:Landroidx/cardview/widget/CardView;

    .line 51
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->indicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 52
    iput-object p9, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->label:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
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

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
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

    const v0, 0x7f0c0079

    .line 115
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
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

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
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

    const v0, 0x7f0c0079

    .line 79
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;
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

    const v0, 0x7f0c0079

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    return-object p0
.end method


# virtual methods
.method public getView()Lcom/geely/hvac/component/FragranceTypeItem;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->mView:Lcom/geely/hvac/component/FragranceTypeItem;

    return-object v0
.end method

.method public abstract setView(Lcom/geely/hvac/component/FragranceTypeItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method
