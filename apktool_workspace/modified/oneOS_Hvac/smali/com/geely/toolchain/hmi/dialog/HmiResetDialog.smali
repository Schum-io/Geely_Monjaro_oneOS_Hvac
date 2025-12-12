.class public Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiResetDialog.java"


# instance fields
.field private iconId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;


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

    .line 33
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 27
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_loading:I

    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->iconId:I

    const-string/jumbo p1, "\u6b63\u5728\u6062\u590d\u51fa\u5382\u8bbe\u7f6e..."

    .line 29
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mContentText:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->iconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 85
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 86
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView(Landroid/view/Window;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 77
    sget v0, Lcom/geely/toolchain/hmi/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 78
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 79
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
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

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 56
    sget-object v1, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->TAG:Ljava/lang/String;

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

    .line 57
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hmiConfigChange: context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 63
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 66
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 68
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->iconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 71
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 73
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_edit_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->initView(Landroid/view/Window;)V

    .line 46
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->initData()V

    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconId"
        }
    .end annotation

    .line 108
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->iconId:I

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 38
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_reset_dialog:I

    return v0
.end method

.method public setMIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconId"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResetDialog;->iconId:I

    return-object p0
.end method
