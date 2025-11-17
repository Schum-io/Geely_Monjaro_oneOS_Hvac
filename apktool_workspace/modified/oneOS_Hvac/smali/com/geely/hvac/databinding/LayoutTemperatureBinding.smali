.class public final Lcom/geely/hvac/databinding/LayoutTemperatureBinding;
.super Ljava/lang/Object;
.source "LayoutTemperatureBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final add:Lcom/geely/toolchain/hmi/view/HmiButton;

.field public final reduce:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private final rootView:Landroid/view/View;

.field public final tv:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/geely/toolchain/hmi/view/HmiButton;Lcom/geely/toolchain/hmi/view/HmiButton;Lcom/geely/toolchain/hmi/view/HmiTextView;)V
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
            "add",
            "reduce",
            "tv"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;->rootView:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;->add:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 33
    iput-object p3, p0, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;->reduce:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 34
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;->tv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutTemperatureBinding;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f090054

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/geely/toolchain/hmi/view/HmiButton;

    if-eqz v1, :cond_0

    const v0, 0x7f090240

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/view/HmiButton;

    if-eqz v2, :cond_0

    const v0, 0x7f09032d

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v3, :cond_0

    .line 77
    new-instance v0, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;-><init>(Landroid/view/View;Lcom/geely/toolchain/hmi/view/HmiButton;Lcom/geely/toolchain/hmi/view/HmiButton;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/geely/hvac/databinding/LayoutTemperatureBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent"
        }
    .end annotation

    const-string v0, "parent"

    .line 47
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0c0096

    .line 49
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    invoke-static {p1}, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutTemperatureBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutTemperatureBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
