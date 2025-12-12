.class public final Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;
.super Ljava/lang/Object;
.source "LayoutFragranceWidgetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bgImg:Landroid/widget/ImageView;

.field public final fragranceWidgetLevel:Landroid/widget/ImageView;

.field public final noNormal:Landroid/widget/TextView;

.field public final root:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final title:Landroid/widget/TextView;

.field public final typeImg1:Landroid/widget/ImageView;

.field public final typeImg2:Landroid/widget/ImageView;

.field public final typeImg3:Landroid/widget/ImageView;

.field public final typeText1:Landroid/widget/TextView;

.field public final typeText2:Landroid/widget/TextView;

.field public final typeText3:Landroid/widget/TextView;

.field public final typeWrap1:Landroid/widget/RelativeLayout;

.field public final typeWrap2:Landroid/widget/RelativeLayout;

.field public final typeWrap3:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "bgImg",
            "fragranceWidgetLevel",
            "noNormal",
            "root",
            "title",
            "typeImg1",
            "typeImg2",
            "typeImg3",
            "typeText1",
            "typeText2",
            "typeText3",
            "typeWrap1",
            "typeWrap2",
            "typeWrap3"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p2, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->bgImg:Landroid/widget/ImageView;

    .line 72
    iput-object p3, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->fragranceWidgetLevel:Landroid/widget/ImageView;

    .line 73
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->noNormal:Landroid/widget/TextView;

    .line 74
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->root:Landroid/widget/RelativeLayout;

    .line 75
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->title:Landroid/widget/TextView;

    .line 76
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeImg1:Landroid/widget/ImageView;

    .line 77
    iput-object p8, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeImg2:Landroid/widget/ImageView;

    .line 78
    iput-object p9, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeImg3:Landroid/widget/ImageView;

    .line 79
    iput-object p10, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeText1:Landroid/widget/TextView;

    .line 80
    iput-object p11, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeText2:Landroid/widget/TextView;

    .line 81
    iput-object p12, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeText3:Landroid/widget/TextView;

    .line 82
    iput-object p13, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeWrap1:Landroid/widget/RelativeLayout;

    .line 83
    iput-object p14, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeWrap2:Landroid/widget/RelativeLayout;

    .line 84
    iput-object p15, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->typeWrap3:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x7f09007a

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f090116

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0901ff

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 132
    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    const v1, 0x7f090319

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f090341

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f090342

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f090343

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f090344

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f090345

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f090346

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f090347

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f090348

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f090349

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RelativeLayout;

    if-eqz v18, :cond_0

    .line 194
    new-instance v0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;

    move-object v3, v0

    move-object v4, v8

    invoke-direct/range {v3 .. v18}, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object v0

    .line 198
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;
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

    .line 95
    invoke-static {p0, v0, v1}, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;
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

    const v0, 0x7f0c007a

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutFragranceWidgetBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
