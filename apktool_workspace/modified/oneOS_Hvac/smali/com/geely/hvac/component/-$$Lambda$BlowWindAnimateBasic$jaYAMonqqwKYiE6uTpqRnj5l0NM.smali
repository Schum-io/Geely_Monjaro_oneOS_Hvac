.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$jaYAMonqqwKYiE6uTpqRnj5l0NM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/ImageAssetDelegate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$jaYAMonqqwKYiE6uTpqRnj5l0NM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$jaYAMonqqwKYiE6uTpqRnj5l0NM;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->lambda$setAnimationPath$0(Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
