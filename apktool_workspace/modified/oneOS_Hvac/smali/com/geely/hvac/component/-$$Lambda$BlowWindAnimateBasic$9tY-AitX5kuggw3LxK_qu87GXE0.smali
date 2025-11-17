.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/BlowWindAnimateBasic;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/BlowWindAnimateBasic;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0;->f$0:Lcom/geely/hvac/component/BlowWindAnimateBasic;

    iput-object p2, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0;->f$0:Lcom/geely/hvac/component/BlowWindAnimateBasic;

    iget-object v1, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateBasic$9tY-AitX5kuggw3LxK_qu87GXE0;->f$1:Ljava/lang/Runnable;

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/component/BlowWindAnimateBasic;->lambda$setAnimationPath$1$BlowWindAnimateBasic(Ljava/lang/Runnable;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
