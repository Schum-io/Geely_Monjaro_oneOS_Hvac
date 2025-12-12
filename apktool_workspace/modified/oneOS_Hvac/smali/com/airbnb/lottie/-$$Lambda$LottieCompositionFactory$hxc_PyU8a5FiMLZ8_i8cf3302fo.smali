.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$hxc_PyU8a5FiMLZ8_i8cf3302fo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(ZLjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$hxc_PyU8a5FiMLZ8_i8cf3302fo;->f$0:Z

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$hxc_PyU8a5FiMLZ8_i8cf3302fo;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$hxc_PyU8a5FiMLZ8_i8cf3302fo;->f$0:Z

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$hxc_PyU8a5FiMLZ8_i8cf3302fo;->f$1:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonInputStream$6(ZLjava/io/InputStream;)V

    return-void
.end method
