.class public Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;
.super Lcom/geely/toolchain/hmi/blur/LayerBlurView;
.source "HmiShadowLayerBlurView.java"


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lcom/geely/toolchain/hmi/view/card/CardViewImpl;

.field private static final TAG:Ljava/lang/String; = "HmiShadowLayerBlurView"


# instance fields
.field private final mCardViewDelegate:Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;

.field final mContentPadding:Landroid/graphics/Rect;

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    .line 32
    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->COLOR_BACKGROUND_ATTR:[I

    .line 36
    new-instance v0, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;

    invoke-direct {v0}, Lcom/geely/toolchain/hmi/view/card/CardViewApi21Impl;-><init>()V

    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->IMPL:Lcom/geely/toolchain/hmi/view/card/CardViewImpl;

    .line 37
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/card/CardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mContentPadding:Landroid/graphics/Rect;

    .line 51
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mShadowBounds:Landroid/graphics/Rect;

    .line 115
    new-instance v1, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;-><init>(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;)V

    iput-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mCardViewDelegate:Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;

    .line 63
    sget-object p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowLayerBlurView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 64
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowLayerBlurView_hmiElevation:I

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiShadowLayerBlurView_hmiRadius:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 66
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v8, 0x0

    .line 69
    invoke-virtual {p2, v8, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 70
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 74
    invoke-static {v0, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 75
    aget p2, p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v0

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroidx/cardview/R$color;->cardview_light_background:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroidx/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 75
    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 80
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->IMPL:Lcom/geely/toolchain/hmi/view/card/CardViewImpl;

    move-object v2, p1

    move v4, v7

    move v5, p3

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/geely/toolchain/hmi/view/card/CardViewImpl;->initialize(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HmiShadowLayerBlurView: radius = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " elevation = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HmiShadowLayerBlurView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0, v8}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->setCardBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$001(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;IIII)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;I)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 2

    .line 91
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->IMPL:Lcom/geely/toolchain/hmi/view/card/CardViewImpl;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mCardViewDelegate:Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/view/card/CardViewImpl;->getRadius(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public setCardBackgroundColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->IMPL:Lcom/geely/toolchain/hmi/view/card/CardViewImpl;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mCardViewDelegate:Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewImpl;->setBackgroundColor(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->IMPL:Lcom/geely/toolchain/hmi/view/card/CardViewImpl;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mCardViewDelegate:Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewImpl;->setBackgroundColor(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->IMPL:Lcom/geely/toolchain/hmi/view/card/CardViewImpl;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mCardViewDelegate:Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;

    invoke-interface {v0, v1, p1}, Lcom/geely/toolchain/hmi/view/card/CardViewImpl;->setRadius(Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;F)V

    return-void
.end method
