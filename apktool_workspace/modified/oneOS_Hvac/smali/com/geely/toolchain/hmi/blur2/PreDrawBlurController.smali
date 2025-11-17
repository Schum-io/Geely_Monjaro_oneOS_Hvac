.class final Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;
.super Ljava/lang/Object;
.source "PreDrawBlurController.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/blur2/BlurController;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreDrawBlurController"

.field static final TRANSPARENT:I


# instance fields
.field private final blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

.field private blurEnabled:Z

.field private blurRadius:F

.field final blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

.field private final blurViewLocation:[I

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private frameClearDrawable:Landroid/graphics/drawable/Drawable;

.field private initialized:Z

.field private internalBitmap:Landroid/graphics/Bitmap;

.field private internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

.field private overlayColor:I

.field private final rootLocation:[I

.field private final rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/blur2/BlurView;Landroid/view/ViewGroup;Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "blurView",
            "rootView",
            "algorithm"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 31
    iput v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurRadius:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 41
    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootLocation:[I

    new-array v0, v0, [I

    .line 42
    iput-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurViewLocation:[I

    .line 44
    new-instance v0, Lcom/geely/toolchain/hmi/blur2/-$$Lambda$PreDrawBlurController$uC_DR5bSNjn_Dn_Tf9XjWMgyH_s;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/blur2/-$$Lambda$PreDrawBlurController$uC_DR5bSNjn_Dn_Tf9XjWMgyH_s;-><init>(Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurEnabled:Z

    .line 62
    iput-object p2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    .line 63
    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    .line 64
    iput-object p3, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

    .line 66
    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getMeasuredWidth()I

    move-result p2

    .line 67
    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getMeasuredHeight()I

    move-result p1

    .line 69
    invoke-virtual {p0, p2, p1}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->init(II)V

    return-void
.end method

.method private blurAndSave()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurRadius:F

    invoke-interface {v0, v1, v2}, Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;->canModifyBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setupInternalCanvasMatrix()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurViewLocation:[I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getLocationOnScreen([I)V

    .line 121
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurViewLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootLocation:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 122
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 125
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 126
    iget-object v3, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {v3}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 131
    iget-object v4, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    invoke-virtual {v4, v2, v0}, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;->translate(FF)V

    .line 132
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;->scale(FF)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    .line 178
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

    invoke-interface {v1}, Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;->destroy()V

    .line 179
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->initialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    instance-of v0, p1, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 148
    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {v2}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 152
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;->render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    iget v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->overlayColor:I

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method init(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "measuredWidth",
            "measuredHeight"
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    .line 75
    new-instance v1, Lcom/geely/toolchain/hmi/blur2/SizeScaler;

    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;->scaleFactor()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/geely/toolchain/hmi/blur2/SizeScaler;-><init>(F)V

    .line 76
    invoke-virtual {v1, p1, p2}, Lcom/geely/toolchain/hmi/blur2/SizeScaler;->isZeroSized(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->setWillNotDraw(Z)V

    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/geely/toolchain/hmi/blur2/BlurView;->setWillNotDraw(Z)V

    .line 83
    invoke-virtual {v1, p1, p2}, Lcom/geely/toolchain/hmi/blur2/SizeScaler;->scale(II)Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;

    move-result-object p1

    .line 84
    iget p2, p1, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->width:I

    iget p1, p1, Lcom/geely/toolchain/hmi/blur2/SizeScaler$Size;->height:I

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAlgorithm:Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;

    invoke-interface {v1}, Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 85
    new-instance p1, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    iget-object p2, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    .line 86
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->initialized:Z

    .line 91
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->updateBlur()V

    return-void
.end method

.method public synthetic lambda$new$0$PreDrawBlurController()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->updateBlur()V

    const/4 v0, 0x1

    return v0
.end method

.method public setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public setBlurEnabled(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 196
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurEnabled:Z

    .line 197
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->setBlurAutoUpdate(Z)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;

    .line 198
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->invalidate()V

    return-object p0
.end method

.method public setBlurRadius(F)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 184
    iput p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurRadius:F

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Lcom/geely/toolchain/hmi/blur2/BlurViewFacade;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameClearDrawable"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
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

    .line 213
    iget v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    .line 214
    iput p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->overlayColor:I

    .line 215
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->invalidate()V

    :cond_0
    return-object p0
.end method

.method updateBlur()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;->save()I

    .line 107
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->setupInternalCanvasMatrix()V

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 109
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->internalCanvas:Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/blur2/BlurViewCanvas;->restore()V

    .line 111
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurAndSave()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateBlurViewSize()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getMeasuredWidth()I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->blurView:Lcom/geely/toolchain/hmi/blur2/BlurView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/blur2/BlurView;->getMeasuredHeight()I

    move-result v1

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/blur2/PreDrawBlurController;->init(II)V

    return-void
.end method
