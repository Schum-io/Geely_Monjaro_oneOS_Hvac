.class public Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiVolumeDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HmiVolumeDialog"


# instance fields
.field private mFunIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mIconId:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 32
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public hmiConfigChange(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 60
    sget-object v1, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uiMode ===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hmiConfigChange: context = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 67
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 70
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 72
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mFunIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mIconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mProgressBar:Landroid/widget/ProgressBar;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_progress_drawable:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x2

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 47
    sget v0, Lcom/geely/toolchain/hmi/R$id;->volumeProgress:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 48
    sget v0, Lcom/geely/toolchain/hmi/R$id;->funIcon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mFunIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 49
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mFunIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    return-void
.end method

.method public setIconId(I)Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconId"
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVolumeDialog;->mIconId:I

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 37
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_volume_dialog:I

    return v0
.end method
