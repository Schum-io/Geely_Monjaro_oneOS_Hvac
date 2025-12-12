.class public abstract Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentSeatLocationBinding.java"


# instance fields
.field public final backrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final backrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final legDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final legLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final legRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final legUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field protected mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

.field public final save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

.field public final seatLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

.field public final seatRight:Lcom/geely/hvac/component/ImageViewWithUpDown;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown;)V
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
            "backrestDown",
            "backrestUp",
            "legDown",
            "legLeft",
            "legRight",
            "legUp",
            "resume",
            "save",
            "seatLeft",
            "seatRight"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 59
    iput-object p4, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->backrestDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    .line 60
    iput-object p5, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->backrestUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    .line 61
    iput-object p6, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->legDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    .line 62
    iput-object p7, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->legLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    .line 63
    iput-object p8, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->legRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    .line 64
    iput-object p9, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->legUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    .line 65
    iput-object p10, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->resume:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    .line 66
    iput-object p11, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->save:Lcom/geely/hvac/trackballview/TrackballTextViewWithBg;

    .line 67
    iput-object p12, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->seatLeft:Lcom/geely/hvac/component/ImageViewWithUpDown;

    .line 68
    iput-object p13, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->seatRight:Lcom/geely/hvac/component/ImageViewWithUpDown;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 118
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
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

    const v0, 0x7f0c0032

    .line 130
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
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

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
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

    const v0, 0x7f0c0032

    .line 95
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;
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

    const v0, 0x7f0c0032

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/databinding/FragmentSeatLocationBinding;->mModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

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
