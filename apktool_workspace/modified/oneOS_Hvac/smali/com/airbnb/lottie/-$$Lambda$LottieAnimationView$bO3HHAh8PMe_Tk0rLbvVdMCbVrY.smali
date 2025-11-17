.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$bO3HHAh8PMe_Tk0rLbvVdMCbVrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$bO3HHAh8PMe_Tk0rLbvVdMCbVrY;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$bO3HHAh8PMe_Tk0rLbvVdMCbVrY;->f$1:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$bO3HHAh8PMe_Tk0rLbvVdMCbVrY;->f$0:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieAnimationView$bO3HHAh8PMe_Tk0rLbvVdMCbVrY;->f$1:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->lambda$fromRawRes$1$LottieAnimationView(I)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method
