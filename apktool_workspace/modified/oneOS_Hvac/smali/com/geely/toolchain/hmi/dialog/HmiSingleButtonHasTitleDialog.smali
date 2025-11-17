.class public Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiSingleButtonHasTitleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener2;,
        Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiSingleButtonHasTitleDialog"


# instance fields
.field private mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener;

.field private mBtnClickListener2:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener2;

.field private mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mButtonText:Ljava/lang/String;

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mCloseResourceId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;


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

    .line 42
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mButtonText:Ljava/lang/String;

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

    .line 87
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 88
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 89
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 90
    sget v0, Lcom/geely/toolchain/hmi/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 91
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasTitleDialog$DEmYty97YQLg4_nSHXuvbKXqQQo;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasTitleDialog$DEmYty97YQLg4_nSHXuvbKXqQQo;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$1;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$1;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiMode ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiSingleButtonHasTitleDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
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

    .line 67
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 72
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 75
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 77
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_single_button_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 83
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiSingleButtonHasTitleDialog(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener;->action()V

    .line 95
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "HmiSingleButtonHasTitleDialog"

    const-string v1, "mBtnClickListener is null"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mBtnClickListener2:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener2;

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener2;->action(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;)V

    goto :goto_0

    :cond_1
    const-string v1, "mBtnClickListener2 is null"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
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

    .line 52
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->initView(Landroid/view/Window;)V

    .line 55
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->initData()V

    return-void
.end method

.method public setBtnClickListener(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;
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

    .line 172
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener;

    return-object p0
.end method

.method public setBtnClickListener2(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener2;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnClickListener"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mBtnClickListener2:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$BtnClickListener2;

    return-object p0
.end method

.method public setButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setCloseResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeResourceId"
        }
    .end annotation

    .line 130
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mCloseResourceId:I

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog$HmiCloseListener;

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    .line 47
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_single_button_has_title_dialog:I

    return v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasTitleDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method
