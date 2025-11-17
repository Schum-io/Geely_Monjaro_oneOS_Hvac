.class public final Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;
.super Ljava/lang/Object;
.source "ListitemSeatSecondScreenFunctionsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clSeatFunctionContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final rootView:Lcom/geely/hvac/trackballview/TrackballLinearLayout;

.field public final tvFunctionList:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method private constructor <init>(Lcom/geely/hvac/trackballview/TrackballLinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "clSeatFunctionContainer",
            "ivIcon",
            "tvFunctionList"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->rootView:Lcom/geely/hvac/trackballview/TrackballLinearLayout;

    .line 36
    iput-object p2, p0, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->clSeatFunctionContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    iput-object p3, p0, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->ivIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 38
    iput-object p4, p0, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->tvFunctionList:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0900a7

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    const v0, 0x7f090171

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz v2, :cond_0

    const v0, 0x7f090334

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;

    check-cast p0, Lcom/geely/hvac/trackballview/TrackballLinearLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;-><init>(Lcom/geely/hvac/trackballview/TrackballLinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    const v0, 0x7f0c0099

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->getRoot()Lcom/geely/hvac/trackballview/TrackballLinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/geely/hvac/trackballview/TrackballLinearLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/geely/hvac/databinding/ListitemSeatSecondScreenFunctionsBinding;->rootView:Lcom/geely/hvac/trackballview/TrackballLinearLayout;

    return-object v0
.end method
