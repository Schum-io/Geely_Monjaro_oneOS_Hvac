.class public Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiResultDialog.java"


# instance fields
.field private mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mResultIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mResultIconId:I

.field private mResultText:Ljava/lang/String;

.field private mResultTv:Lcom/geely/toolchain/hmi/view/HmiTextView;

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

    .line 32
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultTv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultIconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

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

    .line 75
    sget v0, Lcom/geely/toolchain/hmi/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 76
    sget v0, Lcom/geely/toolchain/hmi/R$id;->result:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultTv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 77
    sget v0, Lcom/geely/toolchain/hmi/R$id;->resultIcon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 78
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiResultDialog$zIDJ9t3elf6bRY1ny3W0C8_XWRA;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiResultDialog$zIDJ9t3elf6bRY1ny3W0C8_XWRA;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 55
    sget-object v1, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->TAG:Ljava/lang/String;

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

    .line 56
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->TAG:Ljava/lang/String;

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

    .line 57
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 62
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 65
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 67
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultTv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 71
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultIconId:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiResultDialog(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

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

    .line 42
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->initView(Landroid/view/Window;)V

    .line 45
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->initData()V

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    .line 37
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_result_dialog:I

    return v0
.end method

.method public setResultIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultIconId"
        }
    .end annotation

    .line 103
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultIconId:I

    return-object p0
.end method

.method public setResultText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultText"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiResultDialog;->mResultText:Ljava/lang/String;

    return-object p0
.end method
