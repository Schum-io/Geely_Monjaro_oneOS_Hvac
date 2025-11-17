.class public abstract Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutPsdPhysiotherapyTypeItemBinding.java"


# instance fields
.field public final icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field protected mView:Lcom/geely/hvac/psd/component/PsdPhysiotherapyTypeItem;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tv:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "icon",
            "tv"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 32
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 33
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;->tv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;
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

    const v0, 0x7f0c0088

    .line 96
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 65
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;
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

    .line 46
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;
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

    const v0, 0x7f0c0088

    .line 60
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;
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

    const v0, 0x7f0c0088

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;

    return-object p0
.end method


# virtual methods
.method public getView()Lcom/geely/hvac/psd/component/PsdPhysiotherapyTypeItem;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutPsdPhysiotherapyTypeItemBinding;->mView:Lcom/geely/hvac/psd/component/PsdPhysiotherapyTypeItem;

    return-object v0
.end method

.method public abstract setView(Lcom/geely/hvac/psd/component/PsdPhysiotherapyTypeItem;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method
