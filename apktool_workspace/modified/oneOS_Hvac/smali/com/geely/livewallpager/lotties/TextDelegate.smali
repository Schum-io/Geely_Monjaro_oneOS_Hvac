.class public Lcom/geely/livewallpager/lotties/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final animationView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

.field private cacheText:Z

.field private final drawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->cacheText:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->animationView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    .line 28
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->drawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationView"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->cacheText:Z

    .line 33
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->animationView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->drawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->cacheText:Z

    .line 39
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->drawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->animationView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    return-void
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    return-object p1
.end method

.method private invalidate()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->animationView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->invalidate()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->drawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->cacheText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/TextDelegate;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->cacheText:Z

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public invalidateAllText()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/TextDelegate;->invalidate()V

    return-void
.end method

.method public invalidateText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/TextDelegate;->invalidate()V

    return-void
.end method

.method public setCacheText(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheText"
        }
    .end annotation

    .line 64
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->cacheText:Z

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/TextDelegate;->invalidate()V

    return-void
.end method
