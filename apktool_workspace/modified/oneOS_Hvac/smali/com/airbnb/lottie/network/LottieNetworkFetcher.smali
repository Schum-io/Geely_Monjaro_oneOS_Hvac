.class public interface abstract Lcom/airbnb/lottie/network/LottieNetworkFetcher;
.super Ljava/lang/Object;
.source "LottieNetworkFetcher.java"


# virtual methods
.method public abstract fetchSync(Ljava/lang/String;)Lcom/airbnb/lottie/network/LottieFetchResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
