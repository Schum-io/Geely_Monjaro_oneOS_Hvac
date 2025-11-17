.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$ABZLBbuTUSmfSJEy3Np0nie8OA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/BlowWindAnimateIons$2;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/BlowWindAnimateIons$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$ABZLBbuTUSmfSJEy3Np0nie8OA0;->f$0:Lcom/geely/hvac/component/BlowWindAnimateIons$2;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$ABZLBbuTUSmfSJEy3Np0nie8OA0;->f$0:Lcom/geely/hvac/component/BlowWindAnimateIons$2;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->lambda$onAnimationEnd$1$BlowWindAnimateIons$2(Ljava/lang/Throwable;)V

    return-void
.end method
