.class public Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiSingleButtonHasIconAndTitleDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiSingleButtonHasIconAndTitleDialog"


# instance fields
.field private iconResourceId:I

.field private mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mBtnText:Ljava/lang/String;

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mCloseResourceId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/String;

.field private mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

.field private mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 29
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mCloseResourceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;)Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->iconResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 85
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tvTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 86
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 87
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 88
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 89
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 90
    sget v0, Lcom/geely/toolchain/hmi/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 91
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog$1;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasIconAndTitleDialog$f-_MG8Q8TK4HGi2eSYoV4k-lv0I;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiSingleButtonHasIconAndTitleDialog$f-_MG8Q8TK4HGi2eSYoV4k-lv0I;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hmiConfigChange()V
    .locals 5

    .line 60
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HmiSingleButtonHasIconAndTitleDialog"

    if-nez v0, :cond_0

    const-string v0, "hmiConfigChange: context is null"

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiMode ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 69
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mCloseResourceId:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->iconResourceId:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 72
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_bg_color:I

    .line 73
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 75
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiSingleButtonHasIconAndTitleDialog(Landroid/view/View;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;->action()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiClickListener;->onHmiClick(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    :cond_1
    const-string v0, "HmiSingleButtonHasIconAndTitleDialog"

    const-string v1, "initView: mHmiBtnListener is null"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 80
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 81
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->hmiConfigChange()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->initView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->initData()V

    return-void
.end method

.method public setHmiBtnListener(Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiBtnListener;

    return-object p0
.end method

.method public setHmiBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    const-string v0, "HmiSingleButtonHasIconAndTitleDialog"

    const-string v1, "setHmiCloseListener: run"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mContentText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconResourceId"
        }
    .end annotation

    .line 159
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->iconResourceId:I

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 45
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_single_button_has_icon_and_title_dialog:I

    return v0
.end method

.method public setOnHmiClickListener(Lcom/geely/toolchain/hmi/dialog/HmiClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHmiClickListener"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiSingleButtonHasIconAndTitleDialog;->mHmiClickListener:Lcom/geely/toolchain/hmi/dialog/HmiClickListener;

    return-object p0
.end method
