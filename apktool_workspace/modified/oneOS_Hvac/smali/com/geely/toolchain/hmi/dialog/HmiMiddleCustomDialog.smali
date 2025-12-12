.class public Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiMiddleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiSingleButtonListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiConfigChangeListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveCheckedListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeCheckedListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveClickListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeClickListener;
    }
.end annotation


# instance fields
.field private hmiCloseResourceId:I

.field private hmiDesc:Ljava/lang/String;

.field private hmiLeftBtnText:Ljava/lang/String;

.field private hmiRightBtnText:Ljava/lang/String;

.field private hmiSingleMarginBtnText:Ljava/lang/String;

.field private hmiView:Landroid/view/View;

.field private isChecked:Z

.field private isShowCheckBox:Z

.field private mBox:Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mContent:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/widget/FrameLayout;

.field private mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mHeight:I

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mHmiConfigChangeListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiConfigChangeListener;

.field private mHmiNegativeCheckedListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeCheckedListener;

.field private mHmiNegativeClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeClickListener;

.field private mHmiPositiveCheckedListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveCheckedListener;

.field private mHmiPositiveClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveClickListener;

.field private mHmiPrivacyClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;

.field private mHmiPrivacyIconId:I

.field private mHmiSingleButtonListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiSingleButtonListener;

.field private mHmiTitle:Ljava/lang/String;

.field private mIsSingleButton:Z

.field private mLlCheckbox:Landroid/widget/LinearLayout;

.field private mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mPositiveButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mPrivacyString:Ljava/lang/CharSequence;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSingleButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mTvTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 38
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    const/16 v0, 0x5d0

    .line 66
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mWidth:I

    const/16 v0, 0x2a8

    .line 67
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHeight:I

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    .line 69
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    return p0
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPrivacyClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;

    return-object p0
.end method

.method private checkBtnText(Lcom/geely/toolchain/hmi/view/HmiStateButton;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "btn",
            "hmiBtnText"
        }
    .end annotation

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 241
    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setVisibility(I)V

    .line 244
    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private checkSingleBtnText()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "single button text  isEmpty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mSingleButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setVisibility(I)V

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mSingleButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mSingleButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mSingleButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$v8MXCJf7QyDWlSTQ-76eCNYWA7s;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$v8MXCJf7QyDWlSTQ-76eCNYWA7s;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private hmiConfigChange()V
    .locals 5

    .line 249
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mRootView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->setTitlesColor()V

    .line 255
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPositiveButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_bg_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 255
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 257
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_btn_bg_color:I

    .line 258
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 259
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 257
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 260
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPositiveButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 261
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    .line 262
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_desc_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 263
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 264
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_check_box_one_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPositiveButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->checkBtnText(Lcom/geely/toolchain/hmi/view/HmiStateButton;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->checkBtnText(Lcom/geely/toolchain/hmi/view/HmiStateButton;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->checkSingleBtnText()V

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mTvTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mLlCheckbox:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mLlCheckbox:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mCustomView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: hmiView  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$QvGUMjUnSx3kLZIkMmjB_8J9Ry0;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$QvGUMjUnSx3kLZIkMmjB_8J9Ry0;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPositiveButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$x6_w16TpBzBtN_ghYN8zRrvrpLM;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$x6_w16TpBzBtN_ghYN8zRrvrpLM;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$Rpo_RvO03yTSW-Dds78xLbfEVkI;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$Rpo_RvO03yTSW-Dds78xLbfEVkI;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$HBCDC_a0aG_TKOhDwh7q79b3PSw;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiMiddleCustomDialog$HBCDC_a0aG_TKOhDwh7q79b3PSw;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mRootView:Landroid/widget/RelativeLayout;

    .line 110
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 111
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rightBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPositiveButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 112
    sget v0, Lcom/geely/toolchain/hmi/R$id;->leftBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 113
    sget v0, Lcom/geely/toolchain/hmi/R$id;->singleMarginBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mSingleButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 114
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mCustomView:Landroid/widget/FrameLayout;

    .line 115
    sget v0, Lcom/geely/toolchain/hmi/R$id;->ll_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mLlCheckbox:Landroid/widget/LinearLayout;

    .line 116
    sget v0, Lcom/geely/toolchain/hmi/R$id;->box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;

    .line 117
    sget v0, Lcom/geely/toolchain/hmi/R$id;->desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 119
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mTvTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 120
    sget v0, Lcom/geely/toolchain/hmi/R$id;->pri_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 121
    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPrivacyIconId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 122
    sget v0, Lcom/geely/toolchain/hmi/R$id;->pri_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 123
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPrivacyString:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget v1, Lcom/geely/toolchain/hmi/R$id;->content_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 125
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mContent:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mContent:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 127
    new-instance p1, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$1;

    invoke-direct {p1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$1;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiRectangleCheckBox;->setChecked(Z)V

    .line 137
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->setSingleButton()V

    return-void
.end method

.method private setSingleButton()V
    .locals 2

    .line 141
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mIsSingleButton:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setVisibility(I)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mNegativeButton:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public isSingleButton(Z)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSingleButton"
        }
    .end annotation

    .line 554
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mIsSingleButton:Z

    return-object p0
.end method

.method public synthetic lambda$checkSingleBtnText$0$HmiMiddleCustomDialog(Landroid/view/View;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiSingleButtonListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiSingleButtonListener;

    if-eqz v0, :cond_0

    .line 187
    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiSingleButtonListener;->onClick(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;Z)V

    .line 189
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initListener$1$HmiMiddleCustomDialog(Landroid/view/View;)V
    .locals 2

    .line 194
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    const-string v1, "leftAction mHmiSelectListener is null"

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiNegativeCheckedListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeCheckedListener;

    if-eqz v0, :cond_0

    .line 196
    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeCheckedListener;->onNegativeAction(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;Z)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiNegativeClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeClickListener;

    if-eqz v0, :cond_2

    .line 202
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeClickListener;->onNegativeClick(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initListener$2$HmiMiddleCustomDialog(Landroid/view/View;)V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    const-string v1, "rightAction mHmiSelectListener is null"

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPositiveCheckedListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveCheckedListener;

    if-eqz v0, :cond_0

    .line 212
    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveCheckedListener;->onPositiveAction(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;Z)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPositiveClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveClickListener;

    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveClickListener;->onPositiveClick(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initListener$3$HmiMiddleCustomDialog(Landroid/view/View;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: mHmiCloseListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->dismiss()V

    .line 231
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initListener$4$HmiMiddleCustomDialog(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 232
    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 269
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiConfigChange()V

    .line 271
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiConfigChangeListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiConfigChangeListener;

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiConfigChangeListener;->onConfigChange(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;Landroid/content/res/Configuration;)V

    :cond_0
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

    .line 278
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiTitle:Ljava/lang/String;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    const-string v1, "hmiSingleMarginBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    const-string v1, "isChecked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mIsSingleButton:Z

    const-string v1, "mIsSingleButton"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPrivacyString:Ljava/lang/CharSequence;

    const-string v1, "mPrivacyString"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 99
    invoke-super {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onStart()V

    .line 100
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mWidth:I

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart: run mWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 80
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "hmiTitle"

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiTitle:Ljava/lang/String;

    .line 83
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    const-string v1, "hmiSingleMarginBtnText"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiDesc:Ljava/lang/String;

    .line 88
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    const-string v1, "isChecked"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    .line 89
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mIsSingleButton:Z

    const-string v1, "mIsSingleButton"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mIsSingleButton:Z

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPrivacyString:Ljava/lang/CharSequence;

    const-string v1, "mPrivacyString"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPrivacyString:Ljava/lang/CharSequence;

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->initView(Landroid/view/View;)V

    .line 93
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->initData()V

    .line 94
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->initListener()V

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

    .line 294
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "hmiTitle"

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiTitle:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiDesc:Ljava/lang/String;

    const-string v1, "hmiDesc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiDesc:Ljava/lang/String;

    .line 301
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    const-string v1, "isChecked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isChecked:Z

    .line 302
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    .line 303
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    const-string v1, "hmiLeftBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    const-string v1, "hmiRightBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    const-string v1, "hmiSingleMarginBtnText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    .line 307
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mIsSingleButton:Z

    const-string v1, "mIsSingleButton"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mIsSingleButton:Z

    .line 308
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPrivacyString:Ljava/lang/CharSequence;

    const-string v1, "mPrivacyString"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPrivacyString:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogSize(II)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 319
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mWidth:I

    .line 320
    iput p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHeight:I

    return-object p0
.end method

.method public setHmiAddView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiAddView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiCloseListener: run isShowCheckBox = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiCloseResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeResourceId"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiCloseResourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiCloseResourceId:I

    return-object p0
.end method

.method public setHmiConfigChangeListener(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiConfigChangeListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiConfigChangeListener"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiSelectTitleListener: hmiSelectTitleListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiConfigChangeListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiConfigChangeListener;

    return-object p0
.end method

.method public setHmiContentText(Ljava/lang/CharSequence;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentText"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHmiDesc(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiDesc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiDesc:Ljava/lang/String;

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    return-object p0
.end method

.method public setHmiLeftBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBtnText"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiLeftBtnText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    return-object p0

    .line 409
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only allow to set single margin button"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHmiLeftButtonListener(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiNegativeClickListener"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "setHmiSelectListener: run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    if-nez v0, :cond_0

    .line 456
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiNegativeClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeClickListener;

    return-object p0

    .line 454
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "please use not with checkbox"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHmiLeftButtonWithCheckBoxListener(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeCheckedListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiSelectListener: run isShowCheckBox = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    if-eqz v0, :cond_0

    .line 486
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiNegativeCheckedListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeCheckedListener;

    return-object p0

    .line 484
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "please use with checkbox"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHmiRightBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightBtnText"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiRightBtnText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    return-object p0

    .line 424
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only allow to set single margin button"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHmiRightButtonListener(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiPositiveClickListener"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiSelectListener: run isShowCheckBox = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    if-nez v0, :cond_0

    .line 471
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPositiveClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveClickListener;

    return-object p0

    .line 469
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "please use not with checkbox"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHmiRightButtonWithCheckBoxListener(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveCheckedListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiSelectListener: run isShowCheckBox = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->isShowCheckBox:Z

    if-eqz v0, :cond_0

    .line 501
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPositiveCheckedListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPositiveCheckedListener;

    return-object p0

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "please use with checkbox"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 75
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_dialog_custom_middle_layout:I

    return v0
.end method

.method public setPrivacyClickListener(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPrivacyClickListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiPrivacyClickListener;

    return-object p0
.end method

.method public setPrivacyIconAndContent(ILjava/lang/CharSequence;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resId",
            "privacyText"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiPrivacyIconId:I

    .line 345
    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mPrivacyString:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSingleButtonClickListener(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiSingleButtonListener;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "setSingleButtonClickListener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mHmiSingleButtonListener:Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiSingleButtonListener;

    return-object p0
.end method

.method public setSingleMarginBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singleMarginBtnText"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiRightBtnText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiLeftBtnText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiRightBtnText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->hmiSingleMarginBtnText:Ljava/lang/String;

    return-object p0

    .line 439
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only allow to set left or right button"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTitlesColor()V
    .locals 3

    .line 533
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;->mTvTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    return-void
.end method
