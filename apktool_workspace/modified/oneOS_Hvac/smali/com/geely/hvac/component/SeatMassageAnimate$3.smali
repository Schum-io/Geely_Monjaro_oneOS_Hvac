.class Lcom/geely/hvac/component/SeatMassageAnimate$3;
.super Ljava/lang/Object;
.source "SeatMassageAnimate.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/SeatMassageAnimate;->setType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/SeatMassageAnimate;

.field final synthetic val$fileInputStream:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/SeatMassageAnimate;Ljava/io/FileInputStream;)V
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
    iput-object p1, p0, Lcom/geely/hvac/component/SeatMassageAnimate$3;->this$0:Lcom/geely/hvac/component/SeatMassageAnimate;

    iput-object p2, p0, Lcom/geely/hvac/component/SeatMassageAnimate$3;->val$fileInputStream:Ljava/io/FileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/geely/livewallpager/lotties/LottieComposition;)V
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
    iget-object v0, p0, Lcom/geely/hvac/component/SeatMassageAnimate$3;->this$0:Lcom/geely/hvac/component/SeatMassageAnimate;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/SeatMassageAnimate;->setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 132
    iget-object p1, p0, Lcom/geely/hvac/component/SeatMassageAnimate$3;->this$0:Lcom/geely/hvac/component/SeatMassageAnimate;

    invoke-virtual {p1}, Lcom/geely/hvac/component/SeatMassageAnimate;->cancelAnimation()V

    .line 133
    iget-object p1, p0, Lcom/geely/hvac/component/SeatMassageAnimate$3;->this$0:Lcom/geely/hvac/component/SeatMassageAnimate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/SeatMassageAnimate;->setProgress(F)V

    .line 134
    iget-object p1, p0, Lcom/geely/hvac/component/SeatMassageAnimate$3;->this$0:Lcom/geely/hvac/component/SeatMassageAnimate;

    invoke-virtual {p1}, Lcom/geely/hvac/component/SeatMassageAnimate;->playAnimation()V

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/geely/hvac/component/SeatMassageAnimate$3;->val$fileInputStream:Ljava/io/FileInputStream;

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
