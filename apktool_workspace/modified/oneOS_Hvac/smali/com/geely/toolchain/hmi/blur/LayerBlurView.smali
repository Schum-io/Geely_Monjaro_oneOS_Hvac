.class public Lcom/geely/toolchain/hmi/blur/LayerBlurView;
.super Landroid/widget/FrameLayout;
.source "LayerBlurView.java"


# static fields
.field private static final SURFACE_VIEW_OVERLAY_LAYER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LayerBlurView"

.field private static sInit:Z

.field private static sSetBackgroundLayerZOrdered:Ljava/lang/reflect/Method;

.field private static sSetBlurAttrsMethod:Ljava/lang/reflect/Method;

.field private static sSetBlurBehindMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final CORNER_RADIUS:F

.field private final blurTag:Ljava/lang/String;

.field private mBlurView:Landroid/view/SurfaceView;

.field private mCornerRadius:F


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

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
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

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 34
    iput p3, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mCornerRadius:F

    .line 35
    iput p3, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->CORNER_RADIUS:F

    const-string v0, "LayerBlurView_TAG"

    .line 36
    iput-object v0, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->blurTag:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->init(Landroid/content/Context;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayerBlurView() called isBlurSupported = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->isBlurSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LayerBlurView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->isBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mBlurView:Landroid/view/SurfaceView;

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setTag(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mBlurView:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->enableBlurBehind(Landroid/view/SurfaceView;)V

    .line 54
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mBlurView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->addView(Landroid/view/View;)V

    .line 57
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 59
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView_blurRadius:I

    const/high16 v0, 0x43200000    # 160.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 60
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView_blurLuminance:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 61
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView_blurAlpha:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 63
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView_blurCornerRadiusDP:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    cmpl-float v3, v2, p3

    if-nez v3, :cond_1

    .line 65
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView_blurCornerRadius:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 67
    :cond_1
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView_blurForegroundColor:I

    const/4 v3, 0x0

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 68
    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setForegroundColor(I)V

    .line 69
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->LayerBlurView_blurZOrder:I

    const/4 v3, -0x1

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setBlurAttrs(FFFF)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setBackgroundLayerZOrdered(I)V

    return-void
.end method

.method private static argb(FFFF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alpha",
            "red",
            "green",
            "blue"
        }
    .end annotation

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    float-to-int p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private static enableBlurBehind(Landroid/view/SurfaceView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceView"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 205
    sget-object v0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBlurBehindMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LayerBlurView"

    const-string v1, "setBlurBehind failed"

    .line 211
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "LayerBlurView"

    .line 181
    sget-boolean v1, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sInit:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 184
    sput-boolean v1, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sInit:Z

    .line 185
    invoke-static {p0}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->bypassHiddenApi(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 188
    :try_start_0
    const-class v2, Landroid/view/SurfaceView;

    invoke-static {v2}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->from(Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;

    move-result-object v2

    const-string v3, "setBlurBehind"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p0

    invoke-interface {v2, v3, v4}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;

    move-result-object v2

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;->method()Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBlurBehindMethod:Ljava/lang/reflect/Method;

    .line 189
    const-class v2, Landroid/view/SurfaceView;

    invoke-static {v2}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->from(Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;

    move-result-object v2

    const-string v3, "setBlurAttrs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;

    move-result-object v2

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;->method()Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBlurAttrsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "system is not support layer blur"

    .line 191
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :goto_0
    :try_start_1
    const-class v2, Landroid/view/SurfaceView;

    invoke-static {v2}, Lcom/geely/toolchain/hmi/blur/ReflectUtils;->from(Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;

    move-result-object v2

    const-string v3, "setBackgroundLayerZOrdered"

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, p0

    invoke-interface {v2, v3, v1}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;

    move-result-object p0

    invoke-interface {p0}, Lcom/geely/toolchain/hmi/blur/ReflectUtils$IReflectMethod;->method()Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBackgroundLayerZOrdered:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "system is not support setBackgroundLayerZOrdered"

    .line 196
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static isBlurSupported()Z
    .locals 1

    .line 201
    sget-object v0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBlurBehindMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBlurAttrsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setBackgroundLayerZOrdered(Landroid/view/SurfaceView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfaceView",
            "z"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBackgroundLayerZOrdered:Ljava/lang/reflect/Method;

    const-string v1, "LayerBlurView"

    if-nez v0, :cond_1

    const-string p0, "system is not support setBackgroundLayerZOrdered"

    .line 231
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setBackgroundLayerZOrdered failed"

    .line 237
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static setBlurAttrs(Landroid/view/SurfaceView;FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceView",
            "blurRadius",
            "luminance",
            "alpha",
            "cornerRadius"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 216
    sget-object v0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->sSetBlurAttrsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 220
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LayerBlurView"

    const-string p2, "setBlurBehind failed"

    .line 222
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getBlurView()Landroid/view/SurfaceView;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mBlurView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 79
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 81
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const-string v5, ", heightSize:"

    const-string v7, "LayerBlurView"

    if-eqz v4, :cond_8

    const/4 v2, -0x1

    move v8, v2

    move v3, v6

    move v4, v3

    .line 89
    :goto_2
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 90
    invoke-virtual {p0, v4}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 92
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    const-string v11, "LayerBlurView_TAG"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v4

    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_3

    .line 97
    invoke-virtual {p0, v9, p1, p2}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->measureChild(Landroid/view/View;II)V

    .line 98
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 99
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    if-ne v0, v9, :cond_5

    .line 104
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_5
    if-ne v1, v9, :cond_6

    .line 107
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_6
    if-eq v8, v2, :cond_7

    .line 110
    invoke-virtual {p0, v8}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->measureChild(Landroid/view/View;II)V

    .line 114
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "wrapcontentMeasure: widthSize"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 116
    :cond_8
    invoke-virtual {p0, v2, v3}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setMeasuredDimension(II)V

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMeasure: widthSize"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changedView",
            "visibility"
        }
    .end annotation

    .line 165
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 166
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mBlurView:Landroid/view/SurfaceView;

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public setBackgroundLayerZOrdered(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mBlurView:Landroid/view/SurfaceView;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setBackgroundLayerZOrdered(Landroid/view/SurfaceView;I)V

    return-void
.end method

.method public setBlurAttrs(FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blurRadius",
            "luminance",
            "alpha",
            "cornerRadius"
        }
    .end annotation

    .line 129
    iput p4, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mCornerRadius:F

    const-string v0, "persist.sys.layerblur.enable"

    const/4 v1, 0x1

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->isBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mBlurView:Landroid/view/SurfaceView;

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, p4

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v2

    invoke-static {v0, p1, p2, p3, v1}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setBlurAttrs(Landroid/view/SurfaceView;FFFF)V

    goto :goto_0

    :cond_0
    const-string p1, "LayerBlurView"

    const-string p3, "system is not support layer blur"

    .line 135
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p1, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;

    invoke-direct {p1}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;-><init>()V

    .line 137
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-static {v0, p2, p2, p2}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->argb(FFFF)I

    move-result p2

    invoke-direct {p3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    float-to-int p2, p4

    .line 138
    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->setRadius(I)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 142
    instance-of p2, p1, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;

    if-eqz p2, :cond_1

    .line 143
    check-cast p1, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;

    float-to-int p2, p4

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->setRadius(I)V

    :cond_1
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "foreground"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;

    invoke-direct {v0}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;-><init>()V

    .line 151
    iget v1, p0, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->mCornerRadius:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->setRadius(I)V

    .line 152
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/blur/RoundedDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 173
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/blur/LayerBlurView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
