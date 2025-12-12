.class public Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;
.super Landroid/app/Dialog;
.source "HmiPhoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickMsgListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiPhoneDialog"


# instance fields
.field private mAnswerIcon:Landroid/widget/ImageView;

.field private mClickListener:Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickMsgListener;

.field private mClickPhoneListener:Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;

.field private mHangupIcon:Landroid/widget/ImageView;

.field private mMsg:Ljava/lang/String;

.field private mPhoneDialogMsg:Landroid/widget/TextView;

.field private mPhoneDialogTitle:Landroid/widget/TextView;

.field private mPhoneIconLeft:Landroid/widget/ImageView;

.field private mPhoneIconRight:Landroid/widget/ImageView;

.field private mPhoneLeftIconId:I

.field private mPhoneRightIconId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 34
    sget v0, Lcom/geely/toolchain/hmi/R$style;->onesHmiMessageDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 47
    sget v0, Lcom/geely/toolchain/hmi/R$id;->phone_up_text_tv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneDialogTitle:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/geely/toolchain/hmi/R$id;->phone_down_text_tv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneDialogMsg:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/geely/toolchain/hmi/R$id;->phone_left_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneIconLeft:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/geely/toolchain/hmi/R$id;->phone_right_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneIconRight:Landroid/widget/ImageView;

    .line 51
    sget v0, Lcom/geely/toolchain/hmi/R$id;->right_layout_phone_left_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mAnswerIcon:Landroid/widget/ImageView;

    .line 52
    sget v0, Lcom/geely/toolchain/hmi/R$id;->right_layout_phone_right_icon_iv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mHangupIcon:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/geely/toolchain/hmi/R$id;->phone_layout:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiPhoneDialog$D5hpI-km3mFPZ0vFGv_mJFewItA;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiPhoneDialog$D5hpI-km3mFPZ0vFGv_mJFewItA;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_phone_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 64
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 65
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 69
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneRightIconId:I

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneIconRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneLeftIconId:I

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneIconLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mAnswerIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiPhoneDialog$J7lhkE9M6TO3ecnaw75cloAoxMs;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiPhoneDialog$J7lhkE9M6TO3ecnaw75cloAoxMs;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mHangupIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiPhoneDialog$-A5HPB7nAxgV8FCEC-hB9Yrk_7g;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiPhoneDialog$-A5HPB7nAxgV8FCEC-hB9Yrk_7g;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneDialogTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneDialogMsg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$HmiPhoneDialog(Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mClickListener:Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickMsgListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickMsgListener;->onClick()V

    .line 56
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string v0, "HmiPhoneDialog"

    const-string v1, "mClickListener is null"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initData$1$HmiPhoneDialog(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mClickPhoneListener:Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;->answer()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initData$2$HmiPhoneDialog(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mClickPhoneListener:Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;->hangUp()V

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

    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_phone_dialog:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->init()V

    .line 42
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->initData()V

    return-void
.end method

.method public setLeftIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 82
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneLeftIconId:I

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setOnclickMsgListener(Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickMsgListener;)Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mClickListener:Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickMsgListener;

    return-object p0
.end method

.method public setOnclickPhoneListener(Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;)Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mClickPhoneListener:Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog$OnClickPhoneListener;

    return-object p0
.end method

.method public setRightIcon(I)Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 87
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mPhoneRightIconId:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiPhoneDialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method
