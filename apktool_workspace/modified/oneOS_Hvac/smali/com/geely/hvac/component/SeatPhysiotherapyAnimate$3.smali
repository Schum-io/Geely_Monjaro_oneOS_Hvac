.class Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;
.super Ljava/lang/Object;
.source "SeatPhysiotherapyAnimate.java"

# interfaces
.implements Lcom/airbnb/lottie/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->setType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

.field final synthetic val$fileInputStream:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;Ljava/io/FileInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fileInputStream"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;->this$0:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    iput-object p2, p0, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;->val$fileInputStream:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "composition"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;->this$0:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 132
    iget-object p1, p0, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;->this$0:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    invoke-virtual {p1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->cancelAnimation()V

    .line 133
    iget-object p1, p0, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;->this$0:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->setProgress(F)V

    .line 134
    iget-object p1, p0, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;->this$0:Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;

    invoke-virtual {p1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;->playAnimation()V

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$3;->val$fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
