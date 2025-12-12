.class public Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiDoubleButtonHasTitleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;,
        Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextDoubleButtonDialog"


# instance fields
.field private iconId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mLeftButtonText:Ljava/lang/String;

.field private mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mRightButtonText:Ljava/lang/String;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;

.field private mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;

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

.method private initData()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mLeftButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRightButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->iconId:I

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    :cond_0
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

    .line 97
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 98
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 99
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftButton:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 100
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightButton:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 101
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 102
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->iconId:I

    if-eqz v0, :cond_0

    .line 103
    sget v0, Lcom/geely/toolchain/hmi/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonHasTitleDialog$SoA5VYPrMAo6hkKRvNQ9b9gFGqc;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonHasTitleDialog$SoA5VYPrMAo6hkKRvNQ9b9gFGqc;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonHasTitleDialog$egVzDLnjCgd7rp5TuzEwfRO6bCs;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonHasTitleDialog$egVzDLnjCgd7rp5TuzEwfRO6bCs;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;)V

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

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiMode ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextDoubleButtonDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
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

    .line 73
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 74
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 78
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 81
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 83
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_unselect_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 91
    iget p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->iconId:I

    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initView$0$HmiDoubleButtonHasTitleDialog(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;->leftAction()V

    .line 108
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "TextDoubleButtonDialog"

    const-string v1, "mSelectListener is null"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;->leftAction(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;)V

    goto :goto_0

    :cond_1
    const-string v1, "mSelectListener2 is null"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiDoubleButtonHasTitleDialog(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;->rightAction()V

    .line 121
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "TextDoubleButtonDialog"

    const-string v1, "mSelectListener is null"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;->rightAction(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;)V

    goto :goto_0

    :cond_1
    const-string v1, "mSelectListener2 is null"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
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

    .line 58
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->initView(Landroid/view/Window;)V

    .line 61
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->initData()V

    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconId"
        }
    .end annotation

    .line 201
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->iconId:I

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->iconId:I

    if-nez v0, :cond_0

    .line 49
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_double_button_has_title_dialog:I

    goto :goto_0

    .line 51
    :cond_0
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_double_button_has_image_and_title_dialog:I

    :goto_0
    return v0
.end method

.method public setLeftButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mLeftButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setMIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
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

    .line 191
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->iconId:I

    return-object p0
.end method

.method public setRightButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mRightButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public setSelectListener(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener;

    return-object p0
.end method

.method public setSelectListener2(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog$SelectListener2;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonHasTitleDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method
