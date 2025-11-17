.class public abstract Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutMirrorHudSetBinding.java"


# instance fields
.field public final close:Landroidx/appcompat/widget/AppCompatImageView;

.field public final hudBg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final iconWrap:Landroidx/cardview/widget/CardView;

.field public final leftNormal:Lcom/geely/hvac/component/ViewWithBackground;

.field protected mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final rightNormal:Lcom/geely/hvac/component/ViewWithBackground;

.field public final swBg:Lcom/geely/hvac/component/ViewWithBackground;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatImageView;Lcom/geely/hvac/component/ViewWithBackground;Landroidx/cardview/widget/CardView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;)V
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
            "hudBg",
            "iconWrap",
            "leftNormal",
            "rightNormal",
            "swBg"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->hudBg:Lcom/geely/hvac/component/ViewWithBackground;

    .line 48
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->iconWrap:Landroidx/cardview/widget/CardView;

    .line 49
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->leftNormal:Lcom/geely/hvac/component/ViewWithBackground;

    .line 50
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->rightNormal:Lcom/geely/hvac/component/ViewWithBackground;

    .line 51
    iput-object p9, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->swBg:Lcom/geely/hvac/component/ViewWithBackground;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 101
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
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

    const v0, 0x7f0c0082

    .line 113
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
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

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
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

    const v0, 0x7f0c0082

    .line 78
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;
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

    const v0, 0x7f0c0082

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutMirrorHudSetBinding;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

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
