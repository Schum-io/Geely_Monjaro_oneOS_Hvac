.class final Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;
.super Ljava/lang/Object;
.source "LottieComposition.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieListener;
.implements Lcom/geely/livewallpager/lotties/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/LottieComposition$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/geely/livewallpager/lotties/LottieListener<",
        "Lcom/geely/livewallpager/lotties/LottieComposition;",
        ">;",
        "Lcom/geely/livewallpager/lotties/Cancellable;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final listener:Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;


# direct methods
.method private constructor <init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    .line 344
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;->listener:Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;Lcom/geely/livewallpager/lotties/LottieComposition$1;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    return-void
.end method

.method public onResult(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 348
    iget-boolean v0, p0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;->listener:Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;

    invoke-interface {v0, p1}, Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "composition"
        }
    .end annotation

    .line 339
    check-cast p1, Lcom/geely/livewallpager/lotties/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/LottieComposition$Factory$ListenerAdapter;->onResult(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    return-void
.end method
