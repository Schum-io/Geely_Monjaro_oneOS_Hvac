.class public final synthetic Lcom/geely/hvac/component/-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/component/AcFrontBehindSwitch;

.field public final synthetic f$1:Ljava/io/FileInputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/component/AcFrontBehindSwitch;Ljava/io/FileInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/component/-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw;->f$0:Lcom/geely/hvac/component/AcFrontBehindSwitch;

    iput-object p2, p0, Lcom/geely/hvac/component/-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw;->f$1:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/component/-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw;->f$0:Lcom/geely/hvac/component/AcFrontBehindSwitch;

    iget-object v1, p0, Lcom/geely/hvac/component/-$$Lambda$AcFrontBehindSwitch$xlp17nXV7KA1NiafUegqyU-tuLw;->f$1:Ljava/io/FileInputStream;

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/component/AcFrontBehindSwitch;->lambda$updateAnimateRes$0$AcFrontBehindSwitch(Ljava/io/FileInputStream;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
