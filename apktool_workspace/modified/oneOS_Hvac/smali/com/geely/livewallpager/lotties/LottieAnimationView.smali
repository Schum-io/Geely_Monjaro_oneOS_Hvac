.class public Lcom/geely/livewallpager/lotties/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_FAILURE_LISTENER:Lcom/geely/livewallpager/lotties/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LottieAnimationView"


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I

.field private autoPlay:Z

.field private buildDrawingCacheDepth:I

.field private cacheComposition:Z

.field private composition:Lcom/geely/livewallpager/lotties/LottieComposition;

.field private compositionTask:Lcom/geely/livewallpager/lotties/LottieTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lcom/geely/livewallpager/lotties/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackResource:I

.field private isInitialized:Z

.field private final loadedListener:Lcom/geely/livewallpager/lotties/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/LottieListener<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field private lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/geely/livewallpager/lotties/LottieOnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private playAnimationWhenShown:Z

.field private renderMode:Lcom/geely/livewallpager/lotties/RenderMode;

.field private wasAnimatingWhenDetached:Z

.field private wasAnimatingWhenNotShown:Z

.field private final wrappedFailureListener:Lcom/geely/livewallpager/lotties/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/geely/livewallpager/lotties/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieAnimationView$1;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$1;-><init>()V

    sput-object v0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/geely/livewallpager/lotties/LottieListener;

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

    .line 124
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->loadedListener:Lcom/geely/livewallpager/lotties/LottieListener;

    .line 84
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wrappedFailureListener:Lcom/geely/livewallpager/lotties/LottieListener;

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->fallbackResource:I

    .line 97
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    .line 102
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    .line 103
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 104
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 106
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    .line 108
    sget-object v0, Lcom/geely/livewallpager/lotties/RenderMode;->AUTOMATIC:Lcom/geely/livewallpager/lotties/RenderMode;

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->renderMode:Lcom/geely/livewallpager/lotties/RenderMode;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 117
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 p1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

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

    .line 129
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->loadedListener:Lcom/geely/livewallpager/lotties/LottieListener;

    .line 84
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wrappedFailureListener:Lcom/geely/livewallpager/lotties/LottieListener;

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->fallbackResource:I

    .line 97
    new-instance v0, Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    .line 102
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    .line 103
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 104
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 106
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->autoPlay:Z

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    .line 108
    sget-object v0, Lcom/geely/livewallpager/lotties/RenderMode;->AUTOMATIC:Lcom/geely/livewallpager/lotties/RenderMode;

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->renderMode:Lcom/geely/livewallpager/lotties/RenderMode;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 117
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 130
    invoke-direct {p0, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

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

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$2;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->loadedListener:Lcom/geely/livewallpager/lotties/LottieListener;

    .line 84
    new-instance p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$3;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;)V

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wrappedFailureListener:Lcom/geely/livewallpager/lotties/LottieListener;

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->fallbackResource:I

    .line 97
    new-instance p3, Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-direct {p3}, Lcom/geely/livewallpager/lotties/LottieDrawable;-><init>()V

    iput-object p3, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    .line 102
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    .line 103
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 104
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 106
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->autoPlay:Z

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    .line 108
    sget-object p3, Lcom/geely/livewallpager/lotties/RenderMode;->AUTOMATIC:Lcom/geely/livewallpager/lotties/RenderMode;

    iput-object p3, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->renderMode:Lcom/geely/livewallpager/lotties/RenderMode;

    .line 109
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 117
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 135
    invoke-direct {p0, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/livewallpager/lotties/LottieAnimationView;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->fallbackResource:I

    return p0
.end method

.method static synthetic access$100(Lcom/geely/livewallpager/lotties/LottieAnimationView;)Lcom/geely/livewallpager/lotties/LottieListener;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->failureListener:Lcom/geely/livewallpager/lotties/LottieListener;

    return-object p0
.end method

.method static synthetic access$200()Lcom/geely/livewallpager/lotties/LottieListener;
    .locals 1

    .line 64
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/geely/livewallpager/lotties/LottieListener;

    return-object v0
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->compositionTask:Lcom/geely/livewallpager/lotties/LottieTask;

    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->loadedListener:Lcom/geely/livewallpager/lotties/LottieListener;

    invoke-virtual {v0, v1}, Lcom/geely/livewallpager/lotties/LottieTask;->removeListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    .line 488
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->compositionTask:Lcom/geely/livewallpager/lotties/LottieTask;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wrappedFailureListener:Lcom/geely/livewallpager/lotties/LottieListener;

    invoke-virtual {v0, v1}, Lcom/geely/livewallpager/lotties/LottieTask;->removeFailureListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    const/4 v0, 0x0

    .line 968
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 969
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->clearComposition()V

    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 5

    .line 1059
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieAnimationView$5;->$SwitchMap$com$geely$livewallpager$lotties$RenderMode:[I

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->renderMode:Lcom/geely/livewallpager/lotties/RenderMode;

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/RenderMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->hasDashPattern()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_2

    goto :goto_0

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getMaskAndMatteCount()I

    move-result v0

    const/4 v4, 0x4

    if-le v0, v4, :cond_3

    goto :goto_0

    .line 1072
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    .line 1078
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getLayerType()I

    move-result v0

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    .line 1079
    invoke-virtual {p0, v1, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/geely/hvac/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 140
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x2

    .line 141
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    const/16 v0, 0xd

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/16 v4, 0x8

    .line 143
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/16 v6, 0x13

    .line 144
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v3, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    .line 159
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 161
    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 v0, 0x7

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setFallbackResource(I)V

    .line 167
    :cond_5
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    iput-boolean v2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 169
    iput-boolean v2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->autoPlay:Z

    :cond_6
    const/16 v0, 0xb

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    .line 173
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, v3}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setRepeatCount(I)V

    :cond_7
    const/16 v0, 0x10

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 177
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setRepeatMode(I)V

    :cond_8
    const/16 v0, 0xf

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 182
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setRepeatCount(I)V

    :cond_9
    const/16 v0, 0x12

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_a

    .line 187
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setSpeed(F)V

    :cond_a
    const/16 v0, 0xa

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    const/16 v0, 0xc

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setProgress(F)V

    const/4 v0, 0x6

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    const/4 v0, 0x4

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 195
    new-instance v5, Lcom/geely/livewallpager/lotties/SimpleColorFilter;

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-direct {v5, v0}, Lcom/geely/livewallpager/lotties/SimpleColorFilter;-><init>(I)V

    .line 197
    new-instance v0, Lcom/geely/livewallpager/lotties/model/KeyPath;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/geely/livewallpager/lotties/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 198
    new-instance v6, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    invoke-direct {v6, v5}, Lcom/geely/livewallpager/lotties/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 199
    sget-object v5, Lcom/geely/livewallpager/lotties/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0, v5, v6}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    :cond_b
    const/16 v0, 0x11

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 202
    iget-object v5, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setScale(F)V

    :cond_c
    const/16 v0, 0xe

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 206
    sget-object v4, Lcom/geely/livewallpager/lotties/RenderMode;->AUTOMATIC:Lcom/geely/livewallpager/lotties/RenderMode;

    invoke-virtual {v4}, Lcom/geely/livewallpager/lotties/RenderMode;->ordinal()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 207
    invoke-static {}, Lcom/geely/livewallpager/lotties/RenderMode;->values()[Lcom/geely/livewallpager/lotties/RenderMode;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_d

    .line 208
    sget-object v0, Lcom/geely/livewallpager/lotties/RenderMode;->AUTOMATIC:Lcom/geely/livewallpager/lotties/RenderMode;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/RenderMode;->ordinal()I

    move-result v0

    .line 210
    :cond_d
    invoke-static {}, Lcom/geely/livewallpager/lotties/RenderMode;->values()[Lcom/geely/livewallpager/lotties/RenderMode;

    move-result-object v4

    aget-object v0, v4, v0

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setRenderMode(Lcom/geely/livewallpager/lotties/RenderMode;)V

    .line 213
    :cond_e
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/utils/Utils;->getAnimationScale(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_10

    move v1, v2

    :cond_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V

    .line 220
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 221
    iput-boolean v2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isInitialized:Z

    return-void
.end method

.method private setCompositionTask(Lcom/geely/livewallpager/lotties/LottieTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compositionTask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/LottieTask<",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ">;)V"
        }
    .end annotation

    .line 478
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->clearComposition()V

    .line 479
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cancelLoaderTask()V

    .line 480
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->loadedListener:Lcom/geely/livewallpager/lotties/LottieListener;

    .line 481
    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->addListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wrappedFailureListener:Lcom/geely/livewallpager/lotties/LottieListener;

    .line 482
    invoke-virtual {p1, v0}, Lcom/geely/livewallpager/lotties/LottieTask;->addFailureListener(Lcom/geely/livewallpager/lotties/LottieListener;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->compositionTask:Lcom/geely/livewallpager/lotties/LottieTask;

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

    .line 705
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

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

    .line 693
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addLottieOnCompositionLoadedListener(Lcom/geely/livewallpager/lotties/LottieOnCompositionLoadedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lottieOnCompositionLoadedListener"
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-eqz v0, :cond_0

    .line 1086
    invoke-interface {p1, v0}, Lcom/geely/livewallpager/lotties/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
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

    .line 855
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/LottieDrawable;->addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    return-void
.end method

.method public addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;)V
    .locals 2
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

    .line 865
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    new-instance v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$4;

    invoke-direct {v1, p0, p3}, Lcom/geely/livewallpager/lotties/LottieAnimationView$4;-><init>(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/livewallpager/lotties/value/SimpleLottieValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoScale"
        }
    .end annotation

    const-string v0, "buildDrawingCache"

    .line 996
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->beginSection(Ljava/lang/String;)V

    .line 997
    iget v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 998
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->buildDrawingCache(Z)V

    .line 999
    iget v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getLayerType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1001
    sget-object p1, Lcom/geely/livewallpager/lotties/RenderMode;->HARDWARE:Lcom/geely/livewallpager/lotties/RenderMode;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setRenderMode(Lcom/geely/livewallpager/lotties/RenderMode;)V

    .line 1003
    :cond_0
    iget p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->buildDrawingCacheDepth:I

    .line 1004
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 906
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 907
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 908
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    .line 909
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->cancelAnimation()V

    .line 910
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public clearBitmap()V
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->clearBitmap()V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->disableExtraScaleModeInFitXY()V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    return-void
.end method

.method public getComposition()Lcom/geely/livewallpager/lotties/LottieComposition;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getFrame()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getMaxFrame()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getMinFrame()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/geely/livewallpager/lotties/PerformanceTracker;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getPerformanceTracker()Lcom/geely/livewallpager/lotties/PerformanceTracker;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getScale()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getSpeed()F

    move-result v0

    return v0
.end method

.method public hasMasks()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->hasMasks()Z

    move-result v0

    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->hasMatte()Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dr"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    if-ne v0, v1, :cond_0

    .line 243
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

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

    .line 721
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setRepeatCount(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 319
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 320
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->autoPlay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimation()V

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->autoPlay:Z

    .line 325
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 327
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 339
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 264
    instance-of v0, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 265
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 269
    :cond_0
    check-cast p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;

    .line 270
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 271
    iget-object v0, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 275
    :cond_1
    iget v0, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->animationResId:I

    iput v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationResId:I

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimation(I)V

    .line 279
    :cond_2
    iget v0, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setProgress(F)V

    .line 280
    iget-boolean v0, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimation()V

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iget-object v1, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 284
    iget v0, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setRepeatMode(I)V

    .line 285
    iget p1, p1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 251
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 253
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationResId:I

    iput v0, v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->animationResId:I

    .line 255
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getProgress()F

    move-result v0

    iput v0, v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->progress:F

    .line 256
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->isAnimating:Z

    .line 257
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getRepeatMode()I

    move-result v0

    iput v0, v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatMode:I

    .line 259
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->getRepeatCount()I

    move-result v0

    iput v0, v1, Lcom/geely/livewallpager/lotties/LottieAnimationView$SavedState;->repeatCount:I

    return-object v1
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

    .line 299
    iget-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isInitialized:Z

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 303
    iget-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    .line 305
    :cond_1
    iget-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimation()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 309
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    goto :goto_1

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->pauseAnimation()V

    const/4 p1, 0x1

    .line 313
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 915
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->autoPlay:Z

    .line 916
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenDetached:Z

    .line 917
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    .line 918
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    .line 919
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->pauseAnimation()V

    .line 920
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableOrDisableHardwareLayer()V

    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->playAnimation()V

    .line 550
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableOrDisableHardwareLayer()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    :goto_0
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->removeAllAnimatorListeners()V

    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->removeAllUpdateListeners()V

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

    .line 709
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(Lcom/geely/livewallpager/lotties/LottieOnCompositionLoadedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lottieOnCompositionLoadedListener"
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateListener"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;)Ljava/util/List;
    .locals 1
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

    .line 844
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public resumeAnimation()V
    .locals 1

    .line 562
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->resumeAnimation()V

    .line 564
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableOrDisableHardwareLayer()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 566
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->playAnimationWhenShown:Z

    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->wasAnimatingWhenNotShown:Z

    :goto_0
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->reverseAnimationSpeed()V

    return-void
.end method

.method public setAnimation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "rawRes"
        }
    .end annotation

    .line 377
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationResId:I

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 379
    iget-boolean v1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    .line 381
    :goto_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setCompositionTask(Lcom/geely/livewallpager/lotties/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
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

    .line 417
    invoke-static {p1, p2}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setCompositionTask(Lcom/geely/livewallpager/lotties/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "assetName"
        }
    .end annotation

    .line 385
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 386
    iput v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->animationResId:I

    .line 387
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    .line 389
    :goto_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setCompositionTask(Lcom/geely/livewallpager/lotties/LottieTask;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonString"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jsonString",
            "cacheKey"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 429
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    .line 431
    :goto_0
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setCompositionTask(Lcom/geely/livewallpager/lotties/LottieTask;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "cacheKey"
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/geely/livewallpager/lotties/LottieTask;

    move-result-object p1

    .line 444
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setCompositionTask(Lcom/geely/livewallpager/lotties/LottieTask;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isApplyingOpacityToLayersEnabled"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setApplyingOpacityToLayersEnabled(Z)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheComposition"
        }
    .end annotation

    .line 369
    iput-boolean p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cacheComposition:Z

    return-void
.end method

.method public setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 497
    sget-boolean v0, Lcom/geely/livewallpager/lotties/L;->DBG:Z

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Composition \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p0}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 502
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->composition:Lcom/geely/livewallpager/lotties/LottieComposition;

    .line 503
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)Z

    move-result v0

    .line 504
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableOrDisableHardwareLayer()V

    .line 505
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 516
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->requestLayout()V

    .line 518
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/livewallpager/lotties/LottieOnCompositionLoadedListener;

    .line 519
    invoke-interface {v1, p1}, Lcom/geely/livewallpager/lotties/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFailureListener(Lcom/geely/livewallpager/lotties/LottieListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->failureListener:Lcom/geely/livewallpager/lotties/LottieListener;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fallbackResource"
        }
    .end annotation

    .line 474
    iput p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->fallbackResource:I

    return-void
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

    .line 825
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setFontAssetDelegate(Lcom/geely/livewallpager/lotties/FontAssetDelegate;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setFrame(I)V

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

    .line 817
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setImageAssetDelegate(Lcom/geely/livewallpager/lotties/ImageAssetDelegate;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageAssetsFolder"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm"
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cancelLoaderTask()V

    .line 236
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cancelLoaderTask()V

    .line 231
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->cancelLoaderTask()V

    .line 226
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endFrame"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markerName"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endProgress"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMaxProgress(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minFrame",
            "maxFrame"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markerName"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
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

    .line 647
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minProgress",
            "maxProgress"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startFrame"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "markerName"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startProgress"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setMinProgress(F)V

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

    .line 959
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setPerformanceTrackingEnabled(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setProgress(F)V

    return-void
.end method

.method public setRenderMode(Lcom/geely/livewallpager/lotties/RenderMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMode"
        }
    .end annotation

    .line 1022
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->renderMode:Lcom/geely/livewallpager/lotties/RenderMode;

    .line 1023
    invoke-direct {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->enableOrDisableHardwareLayer()V

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

    .line 754
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setRepeatCount(I)V

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

    .line 732
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "safeMode"
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setSafeMode(Z)V

    return-void
.end method

.method public setScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setScale(F)V

    .line 886
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 887
    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 888
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 897
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 898
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
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

    .line 682
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setSpeed(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/geely/livewallpager/lotties/TextDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textDelegate"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/geely/livewallpager/lotties/LottieDrawable;->setTextDelegate(Lcom/geely/livewallpager/lotties/TextDelegate;)V

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

    .line 802
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieAnimationView;->lottieDrawable:Lcom/geely/livewallpager/lotties/LottieDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
