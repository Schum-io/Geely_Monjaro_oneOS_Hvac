.class Lcom/geely/hvac/component/BlowWindAnimate$2;
.super Ljava/lang/Object;
.source "BlowWindAnimate.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/OnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/BlowWindAnimate;->updateAnimateRes(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/BlowWindAnimate;

.field final synthetic val$fileInputStream:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/BlowWindAnimate;Ljava/io/FileInputStream;)V
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

    .line 178
    iput-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimate;

    iput-object p2, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->val$fileInputStream:Ljava/io/FileInputStream;

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

    .line 181
    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimate;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/BlowWindAnimate;->setComposition(Lcom/geely/livewallpager/lotties/LottieComposition;)V

    .line 182
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimate;

    invoke-virtual {p1}, Lcom/geely/hvac/component/BlowWindAnimate;->cancelAnimation()V

    .line 183
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/BlowWindAnimate;->setProgress(F)V

    .line 184
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimate;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/BlowWindAnimate;->setRepeatCount(I)V

    .line 185
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimate;

    invoke-static {p1}, Lcom/geely/hvac/component/BlowWindAnimate;->access$000(Lcom/geely/hvac/component/BlowWindAnimate;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimate;

    invoke-virtual {p1}, Lcom/geely/hvac/component/BlowWindAnimate;->playAnimation()V

    .line 189
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimate$2;->val$fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
