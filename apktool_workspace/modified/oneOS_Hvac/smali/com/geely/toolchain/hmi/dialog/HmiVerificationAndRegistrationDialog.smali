.class public Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiVerificationAndRegistrationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$HmiQrCodeRefreshListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$RegistrationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VerificationAndRegistrationDialog"


# instance fields
.field private checkBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

.field private mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mChangeNumText:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mHmiQrCodeRefreshListener:Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$HmiQrCodeRefreshListener;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconId:I

.field private mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mRegister:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mRegisterCl:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;

.field private qrIconLl:Landroid/widget/LinearLayout;

.field private registrationListener:Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$RegistrationListener;

.field private relativelyWideState:Z


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

    .line 49
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 39
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mIconId:I

    return-void
.end method

.method private initData()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mIconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 133
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mContentText:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 134
    iget-object v3, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v3, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRegisterCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRegisterCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->qrIconLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 141
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_qr_code_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initView(Landroid/view/Window;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 97
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 98
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 99
    sget v0, Lcom/geely/toolchain/hmi/R$id;->qrCode:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 100
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 101
    sget v0, Lcom/geely/toolchain/hmi/R$id;->registerCl:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRegisterCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 102
    sget v0, Lcom/geely/toolchain/hmi/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 103
    sget v0, Lcom/geely/toolchain/hmi/R$id;->register:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRegister:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 104
    sget v0, Lcom/geely/toolchain/hmi/R$id;->box:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->checkBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    .line 105
    sget v0, Lcom/geely/toolchain/hmi/R$id;->changeNumText:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mChangeNumText:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 106
    sget v0, Lcom/geely/toolchain/hmi/R$id;->qrIconLl:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->qrIconLl:Landroid/widget/LinearLayout;

    .line 107
    sget v0, Lcom/geely/toolchain/hmi/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 108
    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiVerificationAndRegistrationDialog$sNhLBlrZSxGyakuQy-87k_EopPs;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiVerificationAndRegistrationDialog$sNhLBlrZSxGyakuQy-87k_EopPs;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRegister:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiVerificationAndRegistrationDialog$fRBTs2JAdw-rSEnI5lvacYaHoUg;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiVerificationAndRegistrationDialog$fRBTs2JAdw-rSEnI5lvacYaHoUg;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiVerificationAndRegistrationDialog$5VoB3b6brDM5hgOcR4WLg1R4EuQ;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiVerificationAndRegistrationDialog$5VoB3b6brDM5hgOcR4WLg1R4EuQ;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->relativelyWideState:Z

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_qr_code_wide_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 126
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hmiConfigChange(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiMode ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerificationAndRegistrationDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
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

    .line 74
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 79
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 82
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 84
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mIconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->qrIconLl:Landroid/widget/LinearLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_code_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->checkBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_check_box_two_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mChangeNumText:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mRegister:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_bg_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiVerificationAndRegistrationDialog(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiVerificationAndRegistrationDialog(Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->registrationListener:Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$RegistrationListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->checkBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$RegistrationListener;->registration(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "VerificationAndRegistrationDialog"

    const-string v1, "registrationListener is null"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$2$HmiVerificationAndRegistrationDialog(Landroid/view/View;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mHmiQrCodeRefreshListener:Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$HmiQrCodeRefreshListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$HmiQrCodeRefreshListener;->refresh()V

    goto :goto_0

    :cond_0
    const-string v0, "VerificationAndRegistrationDialog"

    const-string v1, "initView: mHmiQrCodeRefreshListener is null"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
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

    .line 59
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->initView(Landroid/view/Window;)V

    .line 62
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->initData()V

    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiQrCodeRefreshListener(Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$HmiQrCodeRefreshListener;)Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiQrCodeRefreshListener"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mHmiQrCodeRefreshListener:Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$HmiQrCodeRefreshListener;

    return-object p0
.end method

.method public setIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconId"
        }
    .end annotation

    .line 158
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mIconId:I

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 54
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_verification_and_registrarion_dialog:I

    return v0
.end method

.method public setQrCodeBitmap(Landroid/graphics/Bitmap;)Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrCodeBitmap"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQrCodeBitmap: qrCodeBitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerificationAndRegistrationDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 192
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p0
.end method

.method public setRegistrationListener(Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$RegistrationListener;)Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registrationListener"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->registrationListener:Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog$RegistrationListener;

    return-object p0
.end method

.method public setRelativelyWideDialog(Z)Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relativelyWideState"
        }
    .end annotation

    .line 179
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->relativelyWideState:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiVerificationAndRegistrationDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method
