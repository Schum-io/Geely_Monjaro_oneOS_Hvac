.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$9qrY9yhuxpC_QiRgnqNX_RAz1V4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/parser/moshi/JsonReader;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/parser/moshi/JsonReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$9qrY9yhuxpC_QiRgnqNX_RAz1V4;->f$0:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$9qrY9yhuxpC_QiRgnqNX_RAz1V4;->f$0:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonReader$10(Lcom/airbnb/lottie/parser/moshi/JsonReader;)V

    return-void
.end method
