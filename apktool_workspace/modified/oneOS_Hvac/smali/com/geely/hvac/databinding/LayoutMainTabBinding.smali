.class public abstract Lcom/geely/hvac/databinding/LayoutMainTabBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutMainTabBinding.java"


# instance fields
.field public final ac:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final fragrance:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final indicator:Lcom/geely/hvac/component/ViewWithBackground;

.field protected mTab:Lcom/geely/hvac/component/MainTab;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final seat:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final tabWrap:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Landroid/widget/LinearLayout;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "ac",
            "fragrance",
            "indicator",
            "seat",
            "tabWrap"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 43
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->ac:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 44
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->fragrance:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 45
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    .line 46
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->seat:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 47
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->tabWrap:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;
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

    const v0, 0x7f0c007f

    .line 109
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutMainTabBinding;
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

    .line 60
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;
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

    const v0, 0x7f0c007f

    .line 74
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMainTabBinding;
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

    const v0, 0x7f0c007f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;

    return-object p0
.end method


# virtual methods
.method public getTab()Lcom/geely/hvac/component/MainTab;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutMainTabBinding;->mTab:Lcom/geely/hvac/component/MainTab;

    return-object v0
.end method

.method public abstract setTab(Lcom/geely/hvac/component/MainTab;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation
.end method
