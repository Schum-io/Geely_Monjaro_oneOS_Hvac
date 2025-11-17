.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$WXFu1FB62zvkgL6gaALvFVZNqU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/zip/ZipInputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$WXFu1FB62zvkgL6gaALvFVZNqU4;->f$0:Ljava/util/zip/ZipInputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$LottieCompositionFactory$WXFu1FB62zvkgL6gaALvFVZNqU4;->f$0:Ljava/util/zip/ZipInputStream;

    invoke-static {v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$14(Ljava/util/zip/ZipInputStream;)V

    return-void
.end method
