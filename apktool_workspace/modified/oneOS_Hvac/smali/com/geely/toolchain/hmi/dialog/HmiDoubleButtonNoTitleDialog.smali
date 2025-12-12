.class public Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiDoubleButtonNoTitleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;,
        Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiDoubleButtonNoTitleDialog"


# instance fields
.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mLeftButtonText:Ljava/lang/String;

.field private mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mRightButtonText:Ljava/lang/String;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;

.field private mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;


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

    .line 37
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mLeftButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRightButtonText:Ljava/lang/String;

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

    .line 82
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 84
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftButton:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 85
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightButton:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 86
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonNoTitleDialog$LOF2pP1J07agKKL_MYzTbwYng-E;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonNoTitleDialog$LOF2pP1J07agKKL_MYzTbwYng-E;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonNoTitleDialog$JN9ha82sLhk1yDMrDXGtmw2RvZo;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiDoubleButtonNoTitleDialog$JN9ha82sLhk1yDMrDXGtmw2RvZo;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 60
    sget-object v1, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->getWindow()Landroid/view/Window;

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
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mLeftButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_unselect_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRightButton:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiDoubleButtonNoTitleDialog(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;->leftAction()V

    .line 89
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->dismiss()V

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

    const-string v1, "mSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;->leftAction(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;)V

    goto :goto_0

    :cond_1
    const-string v1, "mSelectListener2 is null"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiDoubleButtonNoTitleDialog(Landroid/view/View;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;->rightAction()V

    .line 102
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->dismiss()V

    goto :goto_0

    .line 104
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

    const-string v1, "mSelectListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;->rightAction(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;)V

    goto :goto_0

    :cond_1
    const-string v1, "mSelectListener2 is null"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
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

    .line 47
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->initView(Landroid/view/Window;)V

    .line 50
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->initData()V

    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mContentText:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content text is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 42
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_double_button_no_title_dialog:I

    return v0
.end method

.method public setLeftButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mLeftButtonText:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left button text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setRightButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mRightButtonText:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "right button text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setSelectListener(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;
    .locals 1
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

    .line 161
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mSelectListener:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener;

    .line 162
    sget-object p1, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

    const-string v0, "HmiDoubleButtonNoTitleDialog SelectListener is not null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setSelectListener2(Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;)Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectListener"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->mSelectListener2:Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog$SelectListener2;

    .line 173
    sget-object p1, Lcom/geely/toolchain/hmi/dialog/HmiDoubleButtonNoTitleDialog;->TAG:Ljava/lang/String;

    const-string v0, "HmiDoubleButtonNoTitleDialog SelectListener2 is not null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
