.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$36aP-0PF4IkCiBeNgJeEhls1bBY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$36aP-0PF4IkCiBeNgJeEhls1bBY;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$36aP-0PF4IkCiBeNgJeEhls1bBY;->f$1:F

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$36aP-0PF4IkCiBeNgJeEhls1bBY;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$36aP-0PF4IkCiBeNgJeEhls1bBY;->f$1:F

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMaxProgress$7$LottieDrawable(FLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
