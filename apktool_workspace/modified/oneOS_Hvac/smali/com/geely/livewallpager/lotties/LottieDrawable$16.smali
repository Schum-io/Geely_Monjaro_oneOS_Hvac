.class Lcom/geely/livewallpager/lotties/LottieDrawable$16;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/LottieDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/livewallpager/lotties/LottieDrawable;->addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

.field final synthetic val$callback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

.field final synthetic val$keyPath:Lcom/geely/livewallpager/lotties/model/KeyPath;

.field final synthetic val$property:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/LottieDrawable;Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$keyPath",
            "val$property",
            "val$callback"
        }
    .end annotation

    .line 978
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iput-object p2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->val$keyPath:Lcom/geely/livewallpager/lotties/model/KeyPath;

    iput-object p3, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->val$property:Ljava/lang/Object;

    iput-object p4, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->val$callback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/geely/livewallpager/lotties/LottieComposition;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 981
    iget-object p1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->this$0:Lcom/geely/livewallpager/lotties/LottieDrawable;

    iget-object v0, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->val$keyPath:Lcom/geely/livewallpager/lotties/model/KeyPath;

    iget-object v1, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->val$property:Ljava/lang/Object;

    iget-object v2, p0, Lcom/geely/livewallpager/lotties/LottieDrawable$16;->val$callback:Lcom/geely/livewallpager/lotties/value/LottieValueCallback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/geely/livewallpager/lotties/LottieDrawable;->addValueCallback(Lcom/geely/livewallpager/lotties/model/KeyPath;Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V

    return-void
.end method
