.class public Lcom/geely/hvac/component/AutoBlowAnimate;
.super Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;
.source "AutoBlowAnimate.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 29
    invoke-super {p0}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->onAttachedToWindow()V

    .line 30
    iget-boolean v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mAutoOn:Z

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mCurrentAnimateRes:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow, path is empty"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AutoBlowAnimate;->setRepeatCount(I)V

    .line 36
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoBlowAnimate;->playAnimation()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/geely/hvac/component/intf/AutoBlowAnimateAbs;->onDetachedFromWindow()V

    .line 43
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoBlowAnimate;->cancelAnimation()V

    return-void
.end method

.method protected updateAnimateRes()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoBlowAnimate;->cancelAnimation()V

    .line 63
    iget-object v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mCurrentAnimateRes:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->TAG:Ljava/lang/String;

    const-string v1, "updateAnimateRes, path is empty"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mCurrentAnimateRes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/animate.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AutoBlowAnimate;->setAnimation(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mCurrentAnimateRes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AutoBlowAnimate;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoBlowAnimate;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mAutoOn:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AutoBlowAnimate;->setRepeatCount(I)V

    .line 71
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoBlowAnimate;->playAnimation()V

    :cond_1
    return-void
.end method

.method protected updateAutoState()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mAutoOn:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->mCurrentAnimateRes:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/geely/hvac/component/AutoBlowAnimate;->TAG:Ljava/lang/String;

    const-string v1, "updateAutoState, path is empty"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AutoBlowAnimate;->setRepeatCount(I)V

    .line 54
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoBlowAnimate;->playAnimation()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/geely/hvac/component/AutoBlowAnimate;->cancelAnimation()V

    :goto_0
    return-void
.end method
