.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$L$-6rEpil1SG-fEHuDofrCcapNQNo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$L$-6rEpil1SG-fEHuDofrCcapNQNo;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCacheDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$L$-6rEpil1SG-fEHuDofrCcapNQNo;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/airbnb/lottie/L;->lambda$networkCache$0(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
