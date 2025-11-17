.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$4fl7Zj3XeqRujKT14lSuU9G1bBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$4fl7Zj3XeqRujKT14lSuU9G1bBw;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$4fl7Zj3XeqRujKT14lSuU9G1bBw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$4fl7Zj3XeqRujKT14lSuU9G1bBw;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$4fl7Zj3XeqRujKT14lSuU9G1bBw;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonString$8(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method
