.class public final Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;
.super Ljava/lang/Object;
.source "LayoutFragranceLevelBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bg:Lcom/geely/hvac/component/ViewWithBackground;

.field public final close:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final indicator:Lcom/geely/hvac/component/ViewWithBackground;

.field public final level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V
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
            "bg",
            "close",
            "indicator",
            "level1",
            "level2",
            "level3"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->rootView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->bg:Lcom/geely/hvac/component/ViewWithBackground;

    .line 43
    iput-object p3, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 44
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    .line 45
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 46
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 47
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f090079

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/geely/hvac/component/ViewWithBackground;

    if-eqz v4, :cond_0

    const v0, 0x7f0900af

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v5, :cond_0

    const v0, 0x7f09015b

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/geely/hvac/component/ViewWithBackground;

    if-eqz v6, :cond_0

    const v0, 0x7f090197

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f090198

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v8, :cond_0

    const v0, 0x7f090199

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v9, :cond_0

    .line 108
    new-instance v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;-><init>(Landroid/view/View;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/ViewWithBackground;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;)V

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;
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

    .line 60
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0c0076

    .line 62
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-static {p1}, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
