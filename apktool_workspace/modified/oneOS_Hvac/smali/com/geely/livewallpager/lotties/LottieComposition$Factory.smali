.class public Lcom/geely/livewallpager/lotties/LottieComposition$Factory;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/LottieComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)Lcom/geely/livewallpager/lotties/Cancellable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileName",
            "l"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;Lcom/geely/livewallpager/lotties/LottieComposition$1;)V

    .line 230
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    return-object v0
.end method

.method public static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object p0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)Lcom/geely/livewallpager/lotties/Cancellable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "l"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;Lcom/geely/livewallpager/lotties/LottieComposition$1;)V

    .line 250
    invoke-static {p0, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    return-object v0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;)Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 291
    invoke-static {p0, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object p0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;Z)Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "close"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "Lottie now auto-closes input stream!"

    .line 304
    invoke-static {p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 306
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object p0
.end method

.method public static fromJsonReader(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)Lcom/geely/livewallpager/lotties/Cancellable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "l"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;Lcom/geely/livewallpager/lotties/LottieComposition$1;)V

    .line 270
    invoke-static {p0, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonReader(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    return-object v0
.end method

.method public static fromJsonString(Ljava/lang/String;Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)Lcom/geely/livewallpager/lotties/Cancellable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jsonString",
            "l"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;Lcom/geely/livewallpager/lotties/LottieComposition$1;)V

    .line 260
    invoke-static {p0, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "res",
            "json"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    .line 316
    invoke-static {p1, p0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object p0
.end method

.method public static fromJsonSync(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;)Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 336
    invoke-static {p0, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonReaderSync(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object p0
.end method

.method public static fromJsonSync(Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 326
    invoke-static {p0, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object p0
.end method

.method public static fromRawFile(Landroid/content/Context;ILcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)Lcom/geely/livewallpager/lotties/Cancellable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resId",
            "l"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;Lcom/geely/livewallpager/lotties/LottieComposition$1;)V

    .line 240
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    return-object v0
.end method
