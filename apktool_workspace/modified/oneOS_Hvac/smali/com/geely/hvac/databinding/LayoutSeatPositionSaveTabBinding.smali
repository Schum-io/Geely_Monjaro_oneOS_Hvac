.class public abstract Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutSeatPositionSaveTabBinding.java"


# instance fields
.field public final id1:Lcom/geely/hvac/component/ViewWithBackground;

.field public final id2:Lcom/geely/hvac/component/ViewWithBackground;

.field public final id3:Lcom/geely/hvac/component/ViewWithBackground;

.field public final label1:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final label2:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final label3:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field protected mTab:Lcom/geely/hvac/component/SeatPositionSaveTab;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V
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
            "id1",
            "id2",
            "id3",
            "label1",
            "label2",
            "label3"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->id1:Lcom/geely/hvac/component/ViewWithBackground;

    .line 46
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->id2:Lcom/geely/hvac/component/ViewWithBackground;

    .line 47
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->id3:Lcom/geely/hvac/component/ViewWithBackground;

    .line 48
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->label1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 49
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->label2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 50
    iput-object p9, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->label3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
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

    const v0, 0x7f0c008f

    .line 113
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
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

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
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

    const v0, 0x7f0c008f

    .line 77
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;
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

    const v0, 0x7f0c008f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    return-object p0
.end method


# virtual methods
.method public getTab()Lcom/geely/hvac/component/SeatPositionSaveTab;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->mTab:Lcom/geely/hvac/component/SeatPositionSaveTab;

    return-object v0
.end method

.method public abstract setTab(Lcom/geely/hvac/component/SeatPositionSaveTab;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation
.end method
