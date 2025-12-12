.class public Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiSingleButtonNoTitleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener2;,
        Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextSingleButtonDialog"


# instance fields
.field private mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener;

.field private mBtnClickListener2:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener2;

.field private mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mButtonText:Ljava/lang/String;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

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

    .line 35
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

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

    .line 78
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 79
    sget v0, Lcom/geely/toolchain/hmi/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 80
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonNoTitleDialog$UZ6gRD-xys7nTVv082qaz5iSEf0;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonNoTitleDialog$UZ6gRD-xys7nTVv082qaz5iSEf0;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiMode ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextSingleButtonDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
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

    .line 60
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 61
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 65
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 68
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 70
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_single_button_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiSingleButtonNoTitleDialog(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener;->action()V

    .line 84
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "TextSingleButtonDialog"

    const-string v1, "mBtnClickListener is null"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mBtnClickListener2:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener2;

    if-eqz v1, :cond_1

    .line 88
    invoke-interface {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener2;->action(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;)V

    goto :goto_0

    :cond_1
    const-string v1, "mBtnClickListener2 is null"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
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

    .line 45
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->initView(Landroid/view/Window;)V

    .line 48
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->initData()V

    return-void
.end method

.method public setBtnClickListener(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnClickListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener;

    return-object p0
.end method

.method public setBtnClickListener2(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener2;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnClickListener"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mBtnClickListener2:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog$BtnClickListener2;

    return-object p0
.end method

.method public setButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonNoTitleDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 40
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_single_button_no_title_dialog:I

    return v0
.end method
