.class public final Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;
.super Ljava/lang/Object;
.source "LayoutDriverSeatMassageWidgetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final massageForce:Landroid/widget/TextView;

.field public final massageLevel:Landroid/widget/ImageView;

.field public final massageType:Landroid/widget/RelativeLayout;

.field public final massageTypeIcon:Landroid/widget/ImageView;

.field public final massageTypeTxt:Landroid/widget/TextView;

.field public final root:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "massageForce",
            "massageLevel",
            "massageType",
            "massageTypeIcon",
            "massageTypeTxt",
            "root"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p2, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->massageForce:Landroid/widget/TextView;

    .line 46
    iput-object p3, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->massageLevel:Landroid/widget/ImageView;

    .line 47
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->massageType:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->massageTypeIcon:Landroid/widget/ImageView;

    .line 49
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->massageTypeTxt:Landroid/widget/TextView;

    .line 50
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->root:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0901b6

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0901b8

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0901ba

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0901bb

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0901bc

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 110
    move-object v9, p0

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 112
    new-instance p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;

    move-object v2, p0

    move-object v3, v9

    invoke-direct/range {v2 .. v9}, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;
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

    .line 61
    invoke-static {p0, v0, v1}, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;
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

    const v0, 0x7f0c0073

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutDriverSeatMassageWidgetBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
