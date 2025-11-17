.class public Lcom/geely/livewallpager/lotties/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# static fields
.field private static final taskCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 45
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    return-object v0
.end method

.method private static cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "cacheKey",
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;>;)",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->getInstance()Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->get(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieComposition;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 481
    new-instance p0, Lcom/geely/livewallpager/lotties/LottieTask;

    new-instance p1, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$9;

    invoke-direct {p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$9;-><init>(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 488
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/LottieTask;

    return-object p0

    .line 492
    :cond_2
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieTask;

    invoke-direct {v0, p1}, Lcom/geely/livewallpager/lotties/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_3

    .line 494
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$10;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    .line 500
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$11;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$11;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieTask;->addFailureListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    .line 506
    sget-object p1, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->taskCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    invoke-static {}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->getInstance()Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->clear()V

    .line 67
    new-instance v0, Lcom/geely/livewallpager/lotties/network/NetworkCache;

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/network/NetworkCache;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/network/NetworkCache;->clear()V

    return-void
.end method

.method private static findImageAssetForFileName(Lcom/geely/livewallpager/lotties/LottieComposition;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieImageAsset;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "composition",
            "fileName"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    .line 465
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "fileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "context",
            "fileName",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 143
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "fileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileName",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, ".zip"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 183
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "json",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$5;

    invoke-direct {v0, p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$5;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stream",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$4;

    invoke-direct {v0, p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$4;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 287
    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "cacheKey",
            "close"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 294
    :try_start_0
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonReaderSync(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 297
    invoke-static {p0}, Lcom/geely/livewallpager/lotties/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/geely/livewallpager/lotties/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    :cond_1
    throw p1
.end method

.method public static fromJsonReader(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reader",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$7;

    invoke-direct {v0, p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$7;-><init>(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonReaderSync(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 364
    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromJsonReaderSyncInternal(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "cacheKey",
            "close"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-static {p0}, Lcom/geely/livewallpager/lotties/parser/LottieCompositionMoshiParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;)Lcom/geely/livewallpager/lotties/LottieComposition;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 373
    invoke-static {}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->getInstance()Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 375
    :cond_0
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-direct {p1, v0}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 380
    invoke-static {p0}, Lcom/geely/livewallpager/lotties/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 377
    :try_start_1
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-direct {v0, p1}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 380
    invoke-static {p0}, Lcom/geely/livewallpager/lotties/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/geely/livewallpager/lotties/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 382
    :cond_3
    throw p1
.end method

.method public static fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "json",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;

    invoke-direct {v0, p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 349
    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    invoke-static {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonReaderSync(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawRes(Landroid/content/Context;I)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "context",
            "rawRes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "context",
            "rawRes",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 214
    new-instance v1, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$3;

    invoke-direct {v1, v0, p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$3;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;I)V

    invoke-static {p2, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawResSync(Landroid/content/Context;I)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "rawRes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "rawRes",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 250
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 252
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "url",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {p0, p1, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromUrlSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromUrlSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "url",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {p0, p1, p2}, Lcom/geely/livewallpager/lotties/network/NetworkFetcher;->fetchSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "inputStream",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$8;

    invoke-direct {v0, p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory$8;-><init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 403
    :try_start_0
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {p0}, Lcom/geely/livewallpager/lotties/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/geely/livewallpager/lotties/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 406
    throw p1
.end method

.method private static fromZipStreamSyncInternal(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "cacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/geely/livewallpager/lotties/LottieResult<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 417
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 420
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->of(Lokio/BufferedSource;)Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;

    move-result-object v1

    const/4 v3, 0x0

    .line 422
    invoke-static {v1, v2, v3}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonReaderSyncInternal(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;Z)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/geely/livewallpager/lotties/LottieComposition;

    goto :goto_2

    :cond_1
    const-string v1, ".png"

    .line 423
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "/"

    .line 424
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 425
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    .line 426
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 439
    new-instance p0, Lcom/geely/livewallpager/lotties/LottieResult;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 442
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->findImageAssetForFileName(Lcom/geely/livewallpager/lotties/LottieComposition;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieImageAsset;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/geely/livewallpager/lotties/utils/Utils;->resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 450
    :cond_7
    invoke-virtual {v3}, Lcom/geely/livewallpager/lotties/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    .line 452
    new-instance p0, Lcom/geely/livewallpager/lotties/LottieResult;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/livewallpager/lotties/LottieImageAsset;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    .line 457
    invoke-static {}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->getInstance()Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 459
    :cond_a
    new-instance p0, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-direct {p0, v3}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 434
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieResult;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static isNightMode(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_night_"

    goto :goto_0

    :cond_0
    const-string p0, "_day_"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxCacheSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->getInstance()Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/geely/livewallpager/lotties/model/LottieCompositionCache;->resize(I)V

    return-void
.end method
