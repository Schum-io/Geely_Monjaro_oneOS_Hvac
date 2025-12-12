.class public Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# static fields
.field private static final bitmapHashLock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private delegate:Lcom/geely/livewallpager/lotties/ImageAssetDelegate;

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/geely/livewallpager/lotties/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "imagesFolder",
            "delegate",
            "imageAssets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/ImageAssetDelegate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_0

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 43
    :cond_0
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_1

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 44
    invoke-static {p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->context:Landroid/content/Context;

    return-void

    .line 50
    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 52
    invoke-virtual {p0, p3}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->setDelegate(Lcom/geely/livewallpager/lotties/ImageAssetDelegate;)V

    return-void
.end method

.method static synthetic lambda$clearImageAssetBitmap$0(Ljava/lang/String;Lcom/geely/livewallpager/lotties/LottieImageAsset;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 p0, 0x0

    .line 140
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "bitmap"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->bitmapHashLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    invoke-virtual {p1, p2}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->delegate:Lcom/geely/livewallpager/lotties/ImageAssetDelegate;

    if-eqz v2, :cond_3

    .line 87
    invoke-interface {v2, v0}, Lcom/geely/livewallpager/lotties/ImageAssetDelegate;->fetchBitmap(Lcom/geely/livewallpager/lotties/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    return-object v0

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 96
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v5, 0xa0

    .line 97
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v5, "data:"

    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "base64,"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    const/16 v0, 0x2c

    .line 103
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    array-length v1, v0

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "data URL did not have correct base64 format."

    .line 105
    invoke-static {v0, p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 114
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 118
    iget-object v4, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getHeight()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/geely/livewallpager/lotties/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 115
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    const-string v0, "Unable to open asset."

    .line 120
    invoke-static {v0, p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public clearCache()V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->clearImageAssetBitmap()V

    .line 149
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearImageAssetBitmap()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    sget-object v1, Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;->INSTANCE:Lcom/geely/livewallpager/lotties/manager/-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDelegate(Lcom/geely/livewallpager/lotties/ImageAssetDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetDelegate"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->delegate:Lcom/geely/livewallpager/lotties/ImageAssetDelegate;

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

    if-nez p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    .line 66
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/geely/livewallpager/lotties/manager/ImageAssetManager;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v0
.end method
