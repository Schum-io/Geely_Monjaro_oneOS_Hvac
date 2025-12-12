.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wcxaKz2O3aZRyZiN4iEWs55rXFg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wcxaKz2O3aZRyZiN4iEWs55rXFg;->f$0:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wcxaKz2O3aZRyZiN4iEWs55rXFg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wcxaKz2O3aZRyZiN4iEWs55rXFg;->f$0:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$wcxaKz2O3aZRyZiN4iEWs55rXFg;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJson$7(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method
