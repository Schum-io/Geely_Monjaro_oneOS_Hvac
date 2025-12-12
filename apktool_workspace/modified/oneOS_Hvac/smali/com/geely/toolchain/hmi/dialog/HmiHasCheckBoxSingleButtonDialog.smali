.class public Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiHasCheckBoxSingleButtonDialog.java"

# interfaces
.implements Lcom/geely/toolchain/dialog/HmiDialogHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$HmiBtnListener;
    }
.end annotation


# instance fields
.field private hmiBtnText:Ljava/lang/String;

.field private hmiContent:Ljava/lang/String;

.field private hmiDesc:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private mBox:Landroid/widget/CheckBox;

.field private mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mCloseResourceId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mDescIcon:Landroid/widget/ImageView;

.field private mDescIconId:I

.field private mDescLinearLayout:Landroid/widget/LinearLayout;

.field private mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$HmiBtnListener;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 33
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mCloseResourceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)Lcom/geely/toolchain/hmi/view/HmiTextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 119
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 125
    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiMode ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mCloseResourceId:I

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 129
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 131
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_desc_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_bg_color:I

    .line 133
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 134
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 132
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 135
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$1;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$1;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 114
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

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

    .line 71
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 72
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 73
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 74
    sget v0, Lcom/geely/toolchain/hmi/R$id;->desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 75
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 76
    sget v0, Lcom/geely/toolchain/hmi/R$id;->box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mBox:Landroid/widget/CheckBox;

    .line 77
    sget v0, Lcom/geely/toolchain/hmi/R$id;->descIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescIcon:Landroid/widget/ImageView;

    .line 78
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 79
    sget v0, Lcom/geely/toolchain/hmi/R$id;->ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescLinearLayout:Landroid/widget/LinearLayout;

    .line 80
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxSingleButtonDialog$6riILfe05EfcmEEzJ14HAjUceMI;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxSingleButtonDialog$6riILfe05EfcmEEzJ14HAjUceMI;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxSingleButtonDialog$xU0TZK9av3T2pV5AP_vo7MJ93TY;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiHasCheckBoxSingleButtonDialog$xU0TZK9av3T2pV5AP_vo7MJ93TY;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiHasCheckBoxSingleButtonDialog(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$HmiBtnListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$HmiBtnListener;->action(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;Z)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->TAG:Ljava/lang/String;

    const-string v1, "action mHmiBtnListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiHasCheckBoxSingleButtonDialog(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->dismiss()V

    .line 93
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

    .line 140
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiConfigChange()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 146
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    .line 59
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiContent:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiDesc:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiBtnText:Ljava/lang/String;

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->initView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->initData()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiTitle:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiContent:Ljava/lang/String;

    const-string v1, "hmiContent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiContent:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiDesc:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiBtnText:Ljava/lang/String;

    const-string v1, "hmiBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiBtnText:Ljava/lang/String;

    return-void
.end method

.method public setDescResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDescIconId"
        }
    .end annotation

    .line 173
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mDescIconId:I

    return-object p0
.end method

.method public setHmiBtnListener(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnListener"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$HmiBtnListener;

    return-object p0
.end method

.method public setHmiBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnText"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-void
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiDesc(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiDesc:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 54
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_has_check_box_single_button_dialog:I

    return v0
.end method
