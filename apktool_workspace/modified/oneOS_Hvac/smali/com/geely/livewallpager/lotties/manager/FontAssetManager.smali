.class public Lcom/geely/livewallpager/lotties/manager/FontAssetManager;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/geely/livewallpager/lotties/model/MutablePair<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/geely/livewallpager/lotties/model/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/model/MutablePair<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/geely/livewallpager/lotties/FontAssetDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "delegate"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/geely/livewallpager/lotties/model/MutablePair;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/model/MutablePair;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->tempPair:Lcom/geely/livewallpager/lotties/model/MutablePair;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    const-string v0, ".ttf"

    .line 26
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->delegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

    .line 30
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "LottieDrawable must be inside of a view for images to work."

    .line 31
    invoke-static {p1}, Lcom/geely/livewallpager/lotties/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    return-void

    .line 36
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontFamily"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->delegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1, p1}, Lcom/geely/livewallpager/lotties/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->delegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 78
    invoke-virtual {v1, p1}, Lcom/geely/livewallpager/lotties/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeface",
            "style"
        }
    .end annotation

    const-string v0, "Italic"

    .line 95
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Bold"

    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 105
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    if-ne v0, p2, :cond_3

    return-object p1

    .line 109
    :cond_3
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
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

    .line 55
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->tempPair:Lcom/geely/livewallpager/lotties/model/MutablePair;

    invoke-virtual {v0, p1, p2}, Lcom/geely/livewallpager/lotties/model/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->tempPair:Lcom/geely/livewallpager/lotties/model/MutablePair;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->tempPair:Lcom/geely/livewallpager/lotties/model/MutablePair;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultFontFileExtension"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    return-void
.end method

.method public setDelegate(Lcom/geely/livewallpager/lotties/FontAssetDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetDelegate"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/manager/FontAssetManager;->delegate:Lcom/geely/livewallpager/lotties/FontAssetDelegate;

    return-void
.end method
