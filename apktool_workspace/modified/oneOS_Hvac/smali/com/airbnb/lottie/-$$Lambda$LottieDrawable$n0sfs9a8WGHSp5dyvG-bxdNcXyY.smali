.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$n0sfs9a8WGHSp5dyvG-bxdNcXyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$n0sfs9a8WGHSp5dyvG-bxdNcXyY;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$n0sfs9a8WGHSp5dyvG-bxdNcXyY;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$n0sfs9a8WGHSp5dyvG-bxdNcXyY;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieDrawable$n0sfs9a8WGHSp5dyvG-bxdNcXyY;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinFrame$4$LottieDrawable(ILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
