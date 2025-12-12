.class public Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
.super Landroid/app/Dialog;
.source "HmiMessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog$OnClickMessageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiMessageDialog"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private contentValue:Ljava/lang/String;

.field private mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mClickMessageListener:Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog$OnClickMessageListener;

.field private mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mDrawableId:I

.field private mHmiOnClickListener:Lcom/geely/toolchain/hmi/listener/HmiOnClickListener;

.field private mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mLook:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mTime:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTimeValue:Ljava/lang/String;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private titleValue:Ljava/lang/String;

.field private tvCancel:Ljava/lang/String;

.field private tvLook:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 58
    sget v0, Lcom/geely/toolchain/hmi/R$style;->onesHmiMessageDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mDrawableId:I

    .line 59
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_message_top_magin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {p1, v2}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 p1, 0x30

    .line 63
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

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

    .line 76
    sget v0, Lcom/geely/toolchain/hmi/R$id;->msg_bton_look:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mLook:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 77
    sget v0, Lcom/geely/toolchain/hmi/R$id;->msg_bton_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 78
    sget v0, Lcom/geely/toolchain/hmi/R$id;->img_icon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 79
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 80
    sget v0, Lcom/geely/toolchain/hmi/R$id;->message_time_tv:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTime:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 81
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 82
    sget v0, Lcom/geely/toolchain/hmi/R$id;->constraintlayout:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 83
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mLook:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMessageDialog$MPGaVJTMDJ218O-iaG6LpZE_TE4;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMessageDialog$MPGaVJTMDJ218O-iaG6LpZE_TE4;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMessageDialog$ddym8mlkBGpmT6RTFoFyWPkXfX0;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMessageDialog$ddym8mlkBGpmT6RTFoFyWPkXfX0;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTimeValue:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTime:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mLook:Lcom/geely/toolchain/hmi/view/HmiButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTime:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTimeValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->titleValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->contentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mLook:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->tvLook:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->tvCancel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$MPGaVJTMDJ218O-iaG6LpZE_TE4(Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mClickMessageListener:Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog$OnClickMessageListener;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog$OnClickMessageListener;->lookAction()V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mHmiOnClickListener:Lcom/geely/toolchain/hmi/listener/HmiOnClickListener;

    if-eqz v0, :cond_1

    .line 239
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/listener/HmiOnClickListener;->lookAction()V

    goto :goto_0

    :cond_1
    const-string v0, "HmiMessageDialog"

    const-string v1, "mClickMessageListener or mHmiOnClickListener  is null"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hmiConfigChange()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_message_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_message_bt_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_bg_message_canceltext_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mLook:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_message_bt_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mLook:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_main_theme_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_bg_message_title_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_bg_message_content_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->bitmap:Landroid/graphics/Bitmap;

    const-string v1, "HmiMessageDialog"

    if-eqz v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const-string v0, "bitmap == null"

    .line 204
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mDrawableId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    const-string v0, "mDrawable == null"

    .line 209
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public synthetic lambda$initView$0$HmiMessageDialog(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mHmiOnClickListener:Lcom/geely/toolchain/hmi/listener/HmiOnClickListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/listener/HmiOnClickListener;->cancelAction()V

    goto :goto_0

    :cond_0
    const-string v0, "HmiMessageDialog"

    const-string v1, "messageCancelListener is null"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->dismiss()V

    .line 91
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

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

    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget p1, Lcom/geely/toolchain/hmi/R$layout;->hmi_message_dialog:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 72
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->initView(Landroid/view/Window;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->contentValue:Ljava/lang/String;

    return-object p0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setImageByDrawable(Landroid/graphics/drawable/Drawable;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setImageById(I)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconId"
        }
    .end annotation

    .line 165
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mDrawableId:I

    .line 166
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mImage:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setLeftButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftButtonText"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->tvLook:Ljava/lang/String;

    return-object p0
.end method

.method public setOnClickMessageListener(Landroid/content/Context;Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog$OnClickMessageListener;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "onClickMessageListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mClickMessageListener:Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog$OnClickMessageListener;

    return-object p0
.end method

.method public setOnClickMessageListener(Lcom/geely/toolchain/hmi/listener/HmiOnClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiOnClickListener"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mHmiOnClickListener:Lcom/geely/toolchain/hmi/listener/HmiOnClickListener;

    return-object p0
.end method

.method public setRightButtonText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightButtonText"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->tvCancel:Ljava/lang/String;

    return-object p0
.end method

.method public setTime(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->mTimeValue:Ljava/lang/String;

    return-object p0
.end method

.method public setTitlevalue(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMessageDialog;->titleValue:Ljava/lang/String;

    return-object p0
.end method
