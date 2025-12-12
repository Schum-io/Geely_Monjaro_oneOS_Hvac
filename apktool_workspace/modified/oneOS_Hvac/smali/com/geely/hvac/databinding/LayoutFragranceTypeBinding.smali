.class public final Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;
.super Ljava/lang/Object;
.source "LayoutFragranceTypeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final type1:Lcom/geely/hvac/component/FragranceTypeItem;

.field public final type2:Lcom/geely/hvac/component/FragranceTypeItem;

.field public final type3:Lcom/geely/hvac/component/FragranceTypeItem;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/FragranceTypeItem;Lcom/geely/hvac/component/FragranceTypeItem;Lcom/geely/hvac/component/FragranceTypeItem;)V
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
            "type1",
            "type2",
            "type3"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    iput-object p2, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    .line 35
    iput-object p3, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    .line 36
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f09033e

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/geely/hvac/component/FragranceTypeItem;

    if-eqz v1, :cond_0

    const v0, 0x7f09033f

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/hvac/component/FragranceTypeItem;

    if-eqz v2, :cond_0

    const v0, 0x7f090340

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/geely/hvac/component/FragranceTypeItem;

    if-eqz v3, :cond_0

    .line 84
    new-instance v0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/FragranceTypeItem;Lcom/geely/hvac/component/FragranceTypeItem;Lcom/geely/hvac/component/FragranceTypeItem;)V

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;
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

    .line 47
    invoke-static {p0, v0, v1}, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;
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

    const v0, 0x7f0c0078

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
