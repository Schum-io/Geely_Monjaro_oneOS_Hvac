.class public Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiRollTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiBtnClickListener;
    }
.end annotation


# static fields
.field public static final HAS_HINT:I = 0x2

.field public static final NONE:I = 0x0

.field public static final SINGLE_BUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HmiRollTextDialog"


# instance fields
.field private mBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

.field private mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mBtnText:Ljava/lang/String;

.field private mCloseBtn:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mContentText:Ljava/lang/CharSequence;

.field private mEnable:Z

.field private mHintLayout:Landroid/widget/LinearLayout;

.field private mHmiBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiBtnClickListener;

.field private mHmiScrollChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;

.field private mHmiScrollViewHeightListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;

.field private mNotHint:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mNotHintText:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;

.field private mType:I

.field private seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

.field private shadowBottom:Landroid/view/View;

.field private shadowTop:Landroid/view/View;


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

    .line 65
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mEnable:Z

    return-void
.end method

.method private initData()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mType:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_368dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 238
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->setHmiMaxHeight(I)V

    .line 239
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_208dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 224
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->setHmiMaxHeight(I)V

    .line 225
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->setPadding(IIII)V

    .line 226
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 227
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_roll_button_top:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 228
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 229
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 230
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 231
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 232
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiButton;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_320dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 212
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->setHmiMaxHeight(I)V

    .line 213
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->setPadding(IIII)V

    .line 214
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 215
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 216
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 217
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 218
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiButton;->setVisibility(I)V

    :goto_0
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

    .line 124
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 125
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 126
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 127
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 128
    sget v0, Lcom/geely/toolchain/hmi/R$id;->hint:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHintLayout:Landroid/widget/LinearLayout;

    .line 129
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mCloseBtn:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 130
    sget v0, Lcom/geely/toolchain/hmi/R$id;->box:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    .line 131
    sget v0, Lcom/geely/toolchain/hmi/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    .line 132
    sget v0, Lcom/geely/toolchain/hmi/R$id;->shadowTop:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowTop:Landroid/view/View;

    .line 133
    sget v0, Lcom/geely/toolchain/hmi/R$id;->shadowBottom:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowBottom:Landroid/view/View;

    .line 134
    sget v0, Lcom/geely/toolchain/hmi/R$id;->vertical_bar:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    .line 135
    sget v0, Lcom/geely/toolchain/hmi/R$id;->notHint:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mNotHint:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 136
    sget v0, Lcom/geely/toolchain/hmi/R$id;->notHintText:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mNotHintText:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 137
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-static {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->bind(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;)Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    .line 138
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->setHmiListener()V

    return-void
.end method

.method private setHmiListener()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$dDSfaFnY4QBDpQtJcz3g2Ghg7aU;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$dDSfaFnY4QBDpQtJcz3g2Ghg7aU;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mCloseBtn:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$rABKp5yVf5ZU7-XQgShXn_eZTWM;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$rABKp5yVf5ZU7-XQgShXn_eZTWM;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$5e08UGxk-ZWCmaeFeF-DBAPxSJI;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$5e08UGxk-ZWCmaeFeF-DBAPxSJI;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->post(Ljava/lang/Runnable;)Z

    .line 172
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    new-instance v2, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs;

    invoke-direct {v2, p0, v0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

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

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiMode ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiRollTextDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
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

    .line 90
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v3, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 95
    :cond_0
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v0, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    .line 98
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    .line 101
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 103
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mCloseBtn:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_main_theme_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setLinkTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowTop:Landroid/view/View;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_shadow_top_shape:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowBottom:Landroid/view/View;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_shadow_bottom_shape:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_scrollbar_track:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_scrollbar:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setThumbOffset(I)V

    .line 114
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    iget-object v3, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-static {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->bind(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;)Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_check_box_two_bg:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mNotHint:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_bg_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mNotHintText:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 119
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mEnable:Z

    invoke-virtual {p0, v0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->setBtnEnableClick(ZLandroid/content/Context;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;

    const-string p1, "hmiConfigChange end"

    .line 120
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$setHmiListener$0$HmiRollTextDialog(Landroid/view/View;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiBtnClickListener;

    const-string v1, "HmiRollTextDialog"

    if-eqz v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    invoke-virtual {v2}, Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, p0, v2}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiBtnClickListener;->btnClick(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Z)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBox Checked is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBox:Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;

    invoke-virtual {v2}, Lcom/geely/toolchain/hmi/view/HmiCircleCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "mHmiBtnClickListener is null"

    .line 150
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setHmiListener$1$HmiRollTextDialog(Landroid/view/View;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setHmiListener$2$HmiRollTextDialog()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v2}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getHmiMaxHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    const-string v2, "mHmiScrollViewHeightListener is null"

    const-string v3, "HmiRollTextDialog"

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiScrollViewHeightListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 160
    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;->isLessThanMaxHeight(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Z)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiScrollViewHeightListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 166
    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;->isLessThanMaxHeight(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Z)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$setHmiListener$3$HmiRollTextDialog(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 175
    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {p2}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getMeasuredHeight()I

    move-result p2

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 177
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "childViewHeight ="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "---scrollY + scrollViewHeight="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/2addr p4, p2

    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {p2}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getPaddingBottom()I

    move-result p2

    sub-int p2, p4, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "------getScrollY()="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {p3}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getScrollY()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HmiRollTextDialog"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, -0x5

    const/16 p2, 0x8

    if-gt p1, p4, :cond_1

    .line 179
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowBottom:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiScrollChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;

    if-eqz p1, :cond_0

    .line 181
    iget-object p4, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-interface {p1, p0, p4}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;->onBottom(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Landroid/widget/Button;)V

    goto :goto_0

    :cond_0
    const-string p1, "HmiScrollChangedListener is null1"

    .line 183
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowBottom:Landroid/view/View;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowTop:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiScrollChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;

    if-eqz p1, :cond_2

    .line 189
    iget-object p4, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-interface {p1, p0, p4}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;->onMiddle(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Landroid/widget/Button;)V

    goto :goto_0

    :cond_2
    const-string p1, "HmiScrollChangedListener is null2"

    .line 191
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getScrollY()I

    move-result p1

    if-nez p1, :cond_4

    .line 195
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->shadowTop:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiScrollChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;

    if-eqz p1, :cond_3

    .line 197
    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-interface {p1, p0, p2}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;->onTop(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;Landroid/widget/Button;)V

    goto :goto_1

    :cond_3
    const-string p1, "HmiScrollChangedListener is null3"

    .line 199
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
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

    .line 75
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->initView(Landroid/view/Window;)V

    .line 78
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->initData()V

    return-void
.end method

.method public setBtnEnableClick(Z)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mEnable:Z

    .line 301
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    if-nez v0, :cond_0

    const-string p1, "HmiRollTextDialog"

    const-string v0, "setBtnEnableClick: mBtn is null"

    .line 302
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_unclick_bg:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_un_click_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setEnabled(Z)V

    return-object p0
.end method

.method public setBtnEnableClick(ZLandroid/content/Context;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "context"
        }
    .end annotation

    .line 324
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mEnable:Z

    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_bg:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_unclick_bg:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_un_click_text_color:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 332
    :goto_0
    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p2, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setEnabled(Z)V

    return-object p0
.end method

.method public setBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnText"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setContent(Ljava/lang/CharSequence;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHmiBtnClickListener(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiBtnClickListener;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnClickListener"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiBtnClickListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiBtnClickListener;

    return-object p0
.end method

.method public setHmiScrollChangedListener(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiScrollChangedListener"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiScrollChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollChangedListener;

    const-string p1, "HmiRollTextDialog"

    const-string v0, "mHmiScrollChangedListener is not null"

    .line 355
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setHmiScrollViewHeightListener(Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiScrollViewHeightListener"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mHmiScrollViewHeightListener:Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog$HmiScrollViewHeightListener;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 70
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_roll_text_dialog:I

    return v0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 287
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiRollTextDialog;->mType:I

    return-object p0
.end method
