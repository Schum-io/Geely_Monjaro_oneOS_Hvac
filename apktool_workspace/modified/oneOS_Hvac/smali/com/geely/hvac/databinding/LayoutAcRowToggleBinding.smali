.class public final Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;
.super Ljava/lang/Object;
.source "LayoutAcRowToggleBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final arrow:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final rootView:Landroid/view/View;

.field public final txt:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "arrow",
            "txt"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->rootView:Landroid/view/View;

    .line 29
    iput-object p2, p0, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->arrow:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 30
    iput-object p3, p0, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->txt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f09005d

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz v1, :cond_0

    const v0, 0x7f09033d

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v2, :cond_0

    .line 67
    new-instance v0, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;

    invoke-direct {v0, p0, v1, v2}, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;-><init>(Landroid/view/View;Lcom/geely/toolchain/hmi/view/HmiImageView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;
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

    .line 43
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0c006a

    .line 45
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-static {p1}, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
