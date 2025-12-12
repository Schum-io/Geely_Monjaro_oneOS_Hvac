.class public final Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;
.super Ljava/lang/Object;
.source "RenderScriptBlur.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/blur2/BlurAlgorithm;


# instance fields
.field private blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private lastBitmapHeight:I

.field private lastBitmapWidth:I

.field private outAllocation:Landroid/renderscript/Allocation;

.field private final paint:Landroid/graphics/Paint;

.field private final renderScript:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "blur2CornerRadius"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->paint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->lastBitmapWidth:I

    .line 34
    iput p2, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->lastBitmapHeight:I

    .line 41
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, p2, v0, v1}, Landroid/renderscript/RenderScript;->createMultiContext(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;II)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    if-eqz p1, :cond_1

    .line 48
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    :cond_1
    return-void
.end method

.method private canReuseAllocation(Landroid/graphics/Bitmap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->lastBitmapHeight:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->lastBitmapWidth:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "blurRadius"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 67
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->canReuseAllocation(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->lastBitmapWidth:I

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->lastBitmapHeight:I

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 77
    iget-object p2, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 79
    iget-object p2, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 80
    iget-object p2, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    return-object p1
.end method

.method public canModifyBitmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final destroy()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->renderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->outAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_0
    return-void
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 103
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "bitmap"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/geely/toolchain/hmi/blur2/RenderScriptBlur;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public scaleFactor()F
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    return v0
.end method
