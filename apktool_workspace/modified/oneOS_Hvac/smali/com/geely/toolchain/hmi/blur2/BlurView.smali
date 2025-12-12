.class public Lcom/geely/toolchain/hmi/blur2/BlurView;
.super Landroid/widget/FrameLayout;
.source "BlurView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurView"


# instance fields
.field private blur2CornerRadius:F

.field blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/geely/toolchain/hmi/blur2/NoOpController;

    invoke-direct {p1}, Lcom/geely/toolchain/hmi/blur2/NoOpController;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Lcom/geely/toolchain/hmi/blur2/NoOpController;

    invoke-direct {p1}, Lcom/geely/toolchain/hmi/blur2/NoOpController;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p2, p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Lcom/geely/toolchain/hmi/blur2/NoOpController;

    invoke-direct {p1}, Lcom/geely/toolchain/hmi/blur2/NoOpController;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    .line 51
    invoke-direct {p0, p2, p3}, Lcom/geely/toolchain/hmi/blur2/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/blur2/BlurView;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blur2CornerRadius:F

    return p0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geely/toolchain/hmi/R$styleable;->BlurView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->BlurView_blurOverlayColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 57
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/blur2/BlurView;->setOverlayColor(I)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    .line 58
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->BlurView_blur2Radius:I

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 59
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/blur2/BlurView;->setBlurRadius(F)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    .line 60
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->BlurView_blur2CornerRadius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blur2CornerRadius:F

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 87
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/geely/toolchain/hmi/blur2/BlurView;->TAG:Ljava/lang/String;

    const-string v1, "BlurView can\'t be used in not hardware-accelerated window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 75
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    invoke-interface {p1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->updateBlurViewSize()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurEnabled(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->setBlurEnabled(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurRadius(F)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->setBlurRadius(F)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayColor(I)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlayColor"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurController;->setOverlayColor(I)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setRoot(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->setupWith(Landroid/view/ViewGroup;)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;->setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    .line 100
    new-instance p1, Lcom/geely/toolchain/hmi/blur2/BlurView$1;

    invoke-direct {p1, p0}, Lcom/geely/toolchain/hmi/blur2/BlurView$1;-><init>(Lcom/geely/toolchain/hmi/blur2/BlurView;)V

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->setClipToOutline(Z)V

    return-void
.end method

.method public setupWith(Landroid/view/ViewGroup;)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/blur2/BlurController;->destroy()V

    .line 112
    new-instance v0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blur2CornerRadius:F

    invoke-direct {v0, v1, v2}, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;-><init>(Landroid/content/Context;F)V

    .line 113
    new-instance v1, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;

    invoke-direct {v1, p0, p1, v0}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;-><init>(Lcom/geely/toolchain/hmi/blur2/BlurView;Landroid/view/ViewGroup;Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;)V

    .line 114
    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur2/BlurView;->blurController:Lcom/geely/toolchain/hmi/blur2/BlurController;

    return-object v1
.end method
