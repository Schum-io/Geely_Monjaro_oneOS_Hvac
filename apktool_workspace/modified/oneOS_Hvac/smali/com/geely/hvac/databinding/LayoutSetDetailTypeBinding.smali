.class public abstract Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutSetDetailTypeBinding.java"


# instance fields
.field public final indicator:Lcom/geely/hvac/component/ViewWithBackground;

.field public final item0:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final line0:Landroid/view/View;

.field public final line1:Landroid/view/View;

.field protected mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mModel:Lcom/geely/hvac/component/SeatDetailType;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Landroid/view/View;Landroid/view/View;)V
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "indicator",
            "item0",
            "item1",
            "item2",
            "item3",
            "line0",
            "line1"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    .line 53
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item0:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 54
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 55
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 56
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->item3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 57
    iput-object p9, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->line0:Landroid/view/View;

    .line 58
    iput-object p10, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->line1:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 115
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
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

    const v0, 0x7f0c0094

    .line 127
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
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

    .line 78
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
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

    const v0, 0x7f0c0094

    .line 92
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;
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

    const v0, 0x7f0c0094

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;

    return-object p0
.end method


# virtual methods
.method public getMainModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->mMainModel:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    return-object v0
.end method

.method public getModel()Lcom/geely/hvac/component/SeatDetailType;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSetDetailTypeBinding;->mModel:Lcom/geely/hvac/component/SeatDetailType;

    return-object v0
.end method

.method public abstract setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainModel"
        }
    .end annotation
.end method

.method public abstract setModel(Lcom/geely/hvac/component/SeatDetailType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation
.end method
