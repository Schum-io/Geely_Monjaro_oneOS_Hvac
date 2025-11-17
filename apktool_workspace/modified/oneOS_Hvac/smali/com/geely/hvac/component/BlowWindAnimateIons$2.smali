.class Lcom/geely/hvac/component/BlowWindAnimateIons$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlowWindAnimateIons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/BlowWindAnimateIons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/BlowWindAnimateIons;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$BlowWindAnimateIons$2(Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonPathSecond:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlowWindAnimateBasic"

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setRepeatCount(I)V

    .line 162
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;

    invoke-virtual {p1}, Lcom/geely/hvac/component/BlowWindAnimateIons;->playAnimation()V

    return-void
.end method

.method public synthetic lambda$onAnimationEnd$1$BlowWindAnimateIons$2(Ljava/lang/Throwable;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setNextVisiReloadAnimate(Z)V

    const-string v0, "BlowWindAnimateBasic"

    .line 165
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 152
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 153
    iget-object p1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;

    invoke-virtual {p1, p0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;

    invoke-static {v0}, Lcom/geely/hvac/component/BlowWindAnimateIons;->access$000(Lcom/geely/hvac/component/BlowWindAnimateIons;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_circle"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/animate.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/images/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v1, p0, Lcom/geely/hvac/component/BlowWindAnimateIons$2;->this$0:Lcom/geely/hvac/component/BlowWindAnimateIons;

    new-instance v2, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44;

    invoke-direct {v2, p0, v0}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$swMK3ucUIVlBPsiuK9e_HCE7z44;-><init>(Lcom/geely/hvac/component/BlowWindAnimateIons$2;Ljava/lang/String;)V

    new-instance v3, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$ABZLBbuTUSmfSJEy3Np0nie8OA0;

    invoke-direct {v3, p0}, Lcom/geely/hvac/component/-$$Lambda$BlowWindAnimateIons$2$ABZLBbuTUSmfSJEy3Np0nie8OA0;-><init>(Lcom/geely/hvac/component/BlowWindAnimateIons$2;)V

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/geely/hvac/component/BlowWindAnimateIons;->setAnimationPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method
