.class public Lcom/geely/livewallpager/lotties/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/livewallpager/lotties/LottieDrawable$ColorFilterData;,
        Lcom/geely/livewallpager/lotties/LottieDrawable$RepeatMode;,
        Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LottieDrawable"


# instance fields
.field private alpha:I

.field private final animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/geely/livewallpager/lotties/LottieDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/geely/livewallpager/lotties/LottieComposition;

.field private compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

.field private fontAssetManager:Lcom/geely/livewallpager/lotties/manager/FontAssetManager;

.field private imageAssetDelegate:Lcom/geely/livewallpager/lotties/ImageAssetDelegate;

.field private imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

.field private imageAssetsFolder:Ljava/lang/String;

.field private isApplyingOpacityToLayersEnabled:Z

.field private isDirty:Z

.field private isExtraScaleEnabled:Z

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private final progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private safeMode:Z

.field private scale:F

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private systemAnimationsEnabled:Z

.field textDelegate:Lcom/geely/livewallpager/lotties/TextDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 128
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    .line 64
    new-instance v0, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    iput v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scale:F

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->systemAnimationsEnabled:Z

    const/4 v2, 0x0

    .line 67
    iput-boolean v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->safeMode:Z

    .line 69
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->colorFilterData:Ljava/util/Set;

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 71
    new-instance v3, Lcom/geely/livewallpager/lotties/LottieDrawable$1;

    invoke-direct {v3, p0}, Lcom/geely/livewallpager/lotties/LottieDrawable$1;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;)V

    iput-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v4, 0xff

    .line 96
    iput v4, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->alpha:I

    .line 99
    iput-boolean v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isExtraScaleEnabled:Z

    .line 105
    iput-boolean v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isDirty:Z

    .line 129
    invoke-virtual {v0, v3}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/livewallpager/lotties/LottieDrawable;)Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/livewallpager/lotties/LottieDrawable;)Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    return-object p0
.end method

.method private buildCompositionLayer()V
    .locals 4

    .line 298
    new-instance v0, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 299
    invoke-static {v1}, Lcom/geely/livewallpager/lotties/parser/LayerParser;->parse(Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/layer/Layer;Ljava/util/List;Lcom/geely/livewallpager/lotties/LottieComposition;)V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 378
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 379
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->drawWithNewAspectRatio(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->drawWithOriginalAspectRatio(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawWithNewAspectRatio(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1158
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v3}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1161
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v4}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1163
    iget-boolean v4, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isExtraScaleEnabled:Z

    if-eqz v4, :cond_2

    .line 1164
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    div-float v6, v5, v4

    div-float/2addr v2, v6

    div-float/2addr v3, v6

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    .line 1173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1174
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 1175
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    mul-float v7, v5, v4

    mul-float/2addr v4, v1

    sub-float/2addr v5, v7

    sub-float/2addr v1, v4

    .line 1179
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1182
    invoke-virtual {p1, v6, v6, v7, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1186
    :cond_2
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1187
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1188
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->alpha:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v0, :cond_3

    .line 1191
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private drawWithOriginalAspectRatio(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    return-void

    .line 1200
    :cond_0
    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scale:F

    .line 1202
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    .line 1205
    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scale:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    move v0, v3

    :goto_0
    const/4 v2, -0x1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 1219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1220
    iget-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v3}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 1221
    iget-object v5, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v5}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v4, v3, v1

    mul-float v6, v5, v1

    .line 1226
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getScale()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v7, v4

    .line 1227
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getScale()F

    move-result v3

    mul-float/2addr v3, v5

    sub-float/2addr v3, v6

    .line 1225
    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1228
    invoke-virtual {p1, v0, v0, v4, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1232
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1233
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->alpha:I

    invoke-virtual {v0, p1, v1, v3}, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v2, :cond_3

    .line 1236
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3

    .line 1096
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1101
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1102
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getFontAssetManager()Lcom/geely/livewallpager/lotties/manager/FontAssetManager;
    .locals 3

    .line 1082
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->fontAssetManager:Lcom/geely/livewallpager/lotties/manager/FontAssetManager;

    if-nez v0, :cond_1

    .line 1088
    new-instance v0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->fontAssetDelegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

    invoke-direct {v0, v1, v2}, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/geely/livewallpager/lotties/FontAssetDelegate;)V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->fontAssetManager:Lcom/geely/livewallpager/lotties/manager/FontAssetManager;

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->fontAssetManager:Lcom/geely/livewallpager/lotties/manager/FontAssetManager;

    return-object v0
.end method

.method private getImageAssetManager()Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;
    .locals 5

    .line 1055
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1061
    iput-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    if-nez v0, :cond_2

    .line 1065
    new-instance v0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetDelegate:Lcom/geely/livewallpager/lotties/ImageAssetDelegate;

    iget-object v4, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 1066
    invoke-virtual {v4}, Lcom/geely/livewallpager/lotties/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/geely/livewallpager/lotties/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    return-object v0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1149
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private updateBounds()V
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getScale()F

    move-result v0

    .line 910
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 911
    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    .line 910
    invoke-virtual {p0, v2, v2, v1, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateListener"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "keyPath",
            "property",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            "TT;",
            "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 977
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/LottieDrawable$16;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 987
    :cond_0
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/KeyPath;->getResolvedElement()Lcom/geely/livewallpager/lotties/model/KeyPathElement;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/model/KeyPath;->getResolvedElement()Lcom/geely/livewallpager/lotties/model/KeyPathElement;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/geely/livewallpager/lotties/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    goto :goto_1

    .line 991
    :cond_1
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 993
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 995
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/geely/livewallpager/lotties/model/KeyPath;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/model/KeyPath;->getResolvedElement()Lcom/geely/livewallpager/lotties/model/KeyPathElement;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/geely/livewallpager/lotties/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 997
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_3

    .line 1000
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->invalidateSelf()V

    .line 1001
    sget-object p1, Lcom/geely/livewallpager/lotties/LottieProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p2, p1, :cond_3

    .line 1005
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setProgress(F)V

    :cond_3
    return-void
.end method

.method public addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "keyPath",
            "property",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            "TT;",
            "Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 1017
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieDrawable$17;

    invoke-direct {v0, p0, p3}, Lcom/geely/livewallpager/lotties/LottieDrawable$17;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 917
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->cancel()V

    .line 918
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->clearImageAssetBitmap()V

    :cond_0
    return-void
.end method

.method public clearBitmap()V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->clearImageAssetBitmap()V

    :cond_0
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 307
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    .line 308
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    .line 309
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->clearComposition()V

    .line 310
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isExtraScaleEnabled:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isDirty:Z

    const-string v0, "Drawable#draw"

    .line 362
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->beginSection(Ljava/lang/String;)V

    .line 364
    iget-boolean v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->safeMode:Z

    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->drawInternal(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Lottie crashed in draw!"

    .line 368
    invoke-static {v1, p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->drawInternal(Landroid/graphics/Canvas;)V

    .line 374
    :goto_0
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->enableMergePaths:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 162
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    .line 163
    invoke-static {p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_1
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->enableMergePaths:Z

    .line 167
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-eqz p1, :cond_2

    .line 168
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->buildCompositionLayer()V

    :cond_2
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->enableMergePaths:Z

    return v0
.end method

.method public endAnimation()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->endAnimation()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->alpha:I

    return v0
.end method

.method public getComposition()Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object v0
.end method

.method public getFrame()I
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getFrame()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1047
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getImageAssetManager()Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 947
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getMaxFrame()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getMinFrame()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPerformanceTracker()Lcom/geely/livewallpager/lotties/PerformanceTracker;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getPerformanceTracker()Lcom/geely/livewallpager/lotties/PerformanceTracker;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 898
    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scale:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getTextDelegate()Lcom/geely/livewallpager/lotties/TextDelegate;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->textDelegate:Lcom/geely/livewallpager/lotties/TextDelegate;

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fontFamily",
            "style"
        }
    .end annotation

    .line 1074
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getFontAssetManager()Lcom/geely/livewallpager/lotties/manager/FontAssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0, p1, p2}, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasMasks()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;->hasMasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;->hasMatte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "who"
        }
    .end annotation

    .line 1113
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1117
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isDirty:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 330
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isDirty:Z

    .line 331
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 828
    :cond_0
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isApplyingOpacityToLayersEnabled()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->enableMergePaths:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 401
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public loop(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 932
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->pauseAnimation()V

    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$2;

    invoke-direct {v1, p0}, Lcom/geely/livewallpager/lotties/LottieDrawable$2;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->playAnimation()V

    .line 423
    :cond_2
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v0, :cond_4

    .line 424
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getMinFrame()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getMaxFrame()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setFrame(I)V

    .line 425
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->endAnimation()V

    :cond_4
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->removeAllListeners()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->removeAllUpdateListeners()V

    .line 710
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->progressUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateListener"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            ">;"
        }
    .end annotation

    .line 959
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 960
    invoke-static {p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;)V

    .line 961
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 963
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 964
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    new-instance v2, Lcom/geely/livewallpager/lotties/model/KeyPath;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/geely/livewallpager/lotties/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;->resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;ILjava/util/List;Lcom/geely/livewallpager/lotties/model/KeyPath;)V

    return-object v0
.end method

.method public resumeAnimation()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->compositionLayer:Lcom/geely/livewallpager/lotties/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$3;

    invoke-direct {v1, p0}, Lcom/geely/livewallpager/lotties/LottieDrawable$3;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 451
    :cond_0
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->resumeAnimation()V

    .line 454
    :cond_2
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->systemAnimationsEnabled:Z

    if-nez v0, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getMinFrame()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getMaxFrame()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setFrame(I)V

    .line 456
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->endAnimation()V

    :cond_4
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->reverseAnimationSpeed()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "what",
            "when"
        }
    .end annotation

    .line 1122
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1126
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 339
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->alpha:I

    .line 340
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isApplyingOpacityToLayersEnabled"
        }
    .end annotation

    .line 275
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isApplyingOpacityToLayersEnabled:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    const-string p1, "Use addColorFilter instead."

    .line 350
    invoke-static {p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 214
    :cond_0
    iput-boolean v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->isDirty:Z

    .line 215
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->clearComposition()V

    .line 216
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 217
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->buildCompositionLayer()V

    .line 218
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 219
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setProgress(F)V

    .line 220
    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scale:F

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setScale(F)V

    .line 221
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->updateBounds()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;

    .line 228
    invoke-interface {v1, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;->run(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 238
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 239
    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setFontAssetDelegate(Lcom/geely/livewallpager/lotties/FontAssetDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetDelegate"
        }
    .end annotation

    .line 878
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->fontAssetDelegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

    .line 879
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->fontAssetManager:Lcom/geely/livewallpager/lotties/manager/FontAssetManager;

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->setDelegate(Lcom/geely/livewallpager/lotties/FontAssetDelegate;)V

    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "frame"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$14;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$14;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setFrame(F)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/geely/livewallpager/lotties/ImageAssetDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetDelegate"
        }
    .end annotation

    .line 867
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetDelegate:Lcom/geely/livewallpager/lotties/ImageAssetDelegate;

    .line 868
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetManager:Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->setDelegate(Lcom/geely/livewallpager/lotties/ImageAssetDelegate;)V

    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageAssetsFolder"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxFrame"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$6;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$6;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setMaxFrame(F)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "markerName"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$9;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$9;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 573
    :cond_0
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    iget p1, v0, Lcom/geely/livewallpager/lotties/model/Marker;->startFrame:F

    iget v0, v0, Lcom/geely/livewallpager/lotties/model/Marker;->durationFrames:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMaxFrame(I)V

    return-void

    .line 575
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxProgress(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxProgress"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$7;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$7;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 535
    :cond_0
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "minFrame",
            "maxFrame"
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable$12;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setMinAndMaxFrames(FF)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "markerName"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$10;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$10;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 595
    :cond_0
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    iget p1, v0, Lcom/geely/livewallpager/lotties/model/Marker;->startFrame:F

    float-to-int p1, p1

    .line 600
    iget v0, v0, Lcom/geely/livewallpager/lotties/model/Marker;->durationFrames:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void

    .line 597
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "startMarkerName",
            "endMarkerName",
            "playEndMarkerStartFrame"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/LottieDrawable$11;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 621
    :cond_0
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/model/Marker;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    .line 625
    iget p1, v0, Lcom/geely/livewallpager/lotties/model/Marker;->startFrame:F

    float-to-int p1, p1

    .line 627
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v0, p2}, Lcom/geely/livewallpager/lotties/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/model/Marker;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 631
    iget p2, v0, Lcom/geely/livewallpager/lotties/model/Marker;->startFrame:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 633
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void

    .line 629
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 623
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "minProgress",
            "maxProgress"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable$13;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 671
    :cond_0
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 672
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 671
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "minFrame"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$4;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$4;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "markerName"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$8;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$8;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 552
    :cond_0
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getMarker(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 556
    iget p1, v0, Lcom/geely/livewallpager/lotties/model/Marker;->startFrame:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinFrame(I)V

    return-void

    .line 554
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinProgress(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "minProgress"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$5;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$5;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 496
    :cond_0
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 247
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->performanceTrackingEnabled:Z

    .line 248
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "progress"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieDrawable$15;

    invoke-direct {v1, p0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable$15;-><init>(Lcom/geely/livewallpager/lotties/LottieDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 761
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->beginSection(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/LottieComposition;->getStartFrame()F

    move-result v2

    iget-object v3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v3}, Lcom/geely/livewallpager/lotties/LottieComposition;->getEndFrame()F

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/geely/livewallpager/lotties/utils/MiscUtils;->lerp(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setFrame(F)V

    .line 763
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "safeMode"
        }
    .end annotation

    .line 322
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->safeMode:Z

    return-void
.end method

.method public setScale(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 850
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scale:F

    .line 851
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->updateBounds()V

    return-void
.end method

.method setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 1139
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->animator:Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/utils/LottieValueAnimator;->setSpeed(F)V

    return-void
.end method

.method setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "areEnabled"
        }
    .end annotation

    .line 832
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->systemAnimationsEnabled:Z

    return-void
.end method

.method public setTextDelegate(Lcom/geely/livewallpager/lotties/TextDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textDelegate"
        }
    .end annotation

    .line 885
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->textDelegate:Lcom/geely/livewallpager/lotties/TextDelegate;

    return-void
.end method

.method public start()V
    .locals 0

    .line 390
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->playAnimation()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->endAnimation()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "who",
            "what"
        }
    .end annotation

    .line 1131
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1135
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "bitmap"
        }
    .end annotation

    .line 1034
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getImageAssetManager()Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    .line 1036
    invoke-static {p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 1040
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1041
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->invalidateSelf()V

    return-object p1
.end method

.method public useTextGlyphs()Z
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->textDelegate:Lcom/geely/livewallpager/lotties/TextDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
