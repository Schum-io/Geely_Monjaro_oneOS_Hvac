.class public abstract Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutFanLevelBinding.java"


# instance fields
.field public final add:Lcom/airbnb/lottie/LottieAnimationView;

.field public final addDisable:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field protected mView:Lcom/geely/hvac/component/FanLevel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final manualFanLevel:Lcom/geely/hvac/component/ManualFanLevel;

.field public final reduce:Lcom/airbnb/lottie/LottieAnimationView;

.field public final reduceDisable:Lcom/geely/toolchain/hmi/view/HmiImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/airbnb/lottie/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/hvac/component/ManualFanLevel;Lcom/airbnb/lottie/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;)V
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
            "add",
            "addDisable",
            "manualFanLevel",
            "reduce",
            "reduceDisable"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 43
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->add:Lcom/airbnb/lottie/LottieAnimationView;

    .line 44
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->addDisable:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 45
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->manualFanLevel:Lcom/geely/hvac/component/ManualFanLevel;

    .line 46
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->reduce:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->reduceDisable:Lcom/geely/toolchain/hmi/view/HmiImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
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

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
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

    const v0, 0x7f0c0075

    .line 109
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
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

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
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

    const v0, 0x7f0c0075

    .line 74
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutFanLevelBinding;
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

    const v0, 0x7f0c0075

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;

    return-object p0
.end method


# virtual methods
.method public getView()Lcom/geely/hvac/component/FanLevel;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutFanLevelBinding;->mView:Lcom/geely/hvac/component/FanLevel;

    return-object v0
.end method

.method public abstract setView(Lcom/geely/hvac/component/FanLevel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method
