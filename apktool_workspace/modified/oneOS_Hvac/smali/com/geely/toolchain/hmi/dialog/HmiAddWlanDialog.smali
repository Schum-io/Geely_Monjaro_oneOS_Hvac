.class public Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiAddWlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiSeePasswordListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mCancelText:Ljava/lang/String;

.field private mClearPassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

.field private mConnectionText:Ljava/lang/String;

.field private mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

.field private mEnable:Z

.field private mGroupId:Landroidx/constraintlayout/widget/Group;

.field private mHint:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mHintText:Ljava/lang/String;

.field private mHmiConnectionListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;

.field private mHmiSeePasswordListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiSeePasswordListener;

.field private mHmiTextChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

.field private mInitCheckPwdIcon:Z

.field private mInputType:I

.field private mKeyOne:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mKeyTwo:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mLockIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mPasswordCl:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mPwdMinLength:I

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSafeLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mSafeLevelText:Ljava/lang/String;

.field private mSeePassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mSignal:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mSignalText:Ljava/lang/String;

.field private mStyle:I

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/geely/toolchain/hmi/dialog/BaseDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

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

    .line 77
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 32
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mPwdMinLength:I

    const-string/jumbo p1, "\u8fde\u63a5"

    .line 44
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnectionText:Ljava/lang/String;

    const-string/jumbo p1, "\u53d6\u6d88"

    .line 45
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancelText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 61
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mStyle:I

    const-string/jumbo p1, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u4f4e\u4e8e8\u4f4d"

    .line 65
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHintText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHmiTextChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/view/HmiEditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initData()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSignal:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSignalText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSafeLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSafeLevelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnectionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mPwdMinLength:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiEditText;->setMaxHeight(I)V

    .line 233
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInputType:I

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiEditText;->setInputType(I)V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInitCheckPwdIcon:Z

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->setSeePasswordIcon(Z)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    .line 238
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHint:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView(Landroid/view/Window;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 132
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 133
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 134
    sget v0, Lcom/geely/toolchain/hmi/R$id;->keyOneValue:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSignal:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 135
    sget v0, Lcom/geely/toolchain/hmi/R$id;->keyTwoValue:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSafeLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 136
    sget v0, Lcom/geely/toolchain/hmi/R$id;->keyOne:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mKeyOne:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 137
    sget v0, Lcom/geely/toolchain/hmi/R$id;->keyTwo:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mKeyTwo:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 138
    sget v0, Lcom/geely/toolchain/hmi/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiEditText;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    .line 139
    sget v0, Lcom/geely/toolchain/hmi/R$id;->clearPassword:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mClearPassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 140
    sget v0, Lcom/geely/toolchain/hmi/R$id;->seePassword:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSeePassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 141
    sget v0, Lcom/geely/toolchain/hmi/R$id;->connection:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 142
    sget v0, Lcom/geely/toolchain/hmi/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    .line 143
    sget v0, Lcom/geely/toolchain/hmi/R$id;->groupId:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mGroupId:Landroidx/constraintlayout/widget/Group;

    .line 144
    sget v0, Lcom/geely/toolchain/hmi/R$id;->hint:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHint:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 145
    sget v0, Lcom/geely/toolchain/hmi/R$id;->closeIcon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 146
    sget v0, Lcom/geely/toolchain/hmi/R$id;->passwordCl:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mPasswordCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 147
    sget v0, Lcom/geely/toolchain/hmi/R$id;->lockIcon:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mLockIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 148
    iget p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mStyle:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mGroupId:Landroidx/constraintlayout/widget/Group;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_return_pop_big:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 151
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mPasswordCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 152
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_psssword_cl_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 155
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mGroupId:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->setHmiListener()V

    return-void
.end method

.method private setHmiListener()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$uwMYdzbX0kLBK8Qz40iSonn9s0c;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$uwMYdzbX0kLBK8Qz40iSonn9s0c;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSeePassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$erDRtj0tVEyW6_Uilzpmau0dRWc;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$erDRtj0tVEyW6_Uilzpmau0dRWc;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mClearPassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$nAgsZG-sKu1ykoKdgpYgIscQrDs;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$nAgsZG-sKu1ykoKdgpYgIscQrDs;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$RDGa-GeBhqdqyczfsbxPuck10kc;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$RDGa-GeBhqdqyczfsbxPuck10kc;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$9csV_yn2jaLD583tf0oWJJBwmvE;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddWlanDialog$9csV_yn2jaLD583tf0oWJJBwmvE;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-super {p0}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->dismiss()V

    return-void
.end method

.method public getEditPassword()Lcom/geely/toolchain/hmi/view/HmiEditText;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    return-object v0
.end method

.method public getPwdMinLength()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mPwdMinLength:I

    return v0
.end method

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

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 94
    sget-object v1, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

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

    .line 95
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

    .line 96
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 97
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 101
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 104
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 106
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 107
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 109
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_return_pop_big:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    goto :goto_1

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mKeyOne:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mKeyTwo:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSignal:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSafeLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mPasswordCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_input_password_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mLockIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_lock_press:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiEditText;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_password_text_hint_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiEditText;->setHintTextColor(I)V

    .line 123
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInitCheckPwdIcon:Z

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->setSeePasswordIcon(Z)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    .line 124
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mClearPassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 125
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHint:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 126
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEnable:Z

    invoke-virtual {p0, v0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->setConnectionBtnIsEnableClick(ZLandroid/content/Context;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    .line 127
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_unselect_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancel:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_unselect_btn_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$setHmiListener$0$HmiAddWlanDialog(Landroid/view/View;)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setHmiListener$1$HmiAddWlanDialog(Landroid/view/View;)V
    .locals 3

    .line 166
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInitCheckPwdIcon:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInitCheckPwdIcon:Z

    .line 167
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHmiSeePasswordListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiSeePasswordListener;

    if-eqz v1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    invoke-interface {v1, p0, v2, v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiSeePasswordListener;->isShowPassword(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;Lcom/geely/toolchain/hmi/view/HmiEditText;Z)V

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setHmiListener$2$HmiAddWlanDialog(Landroid/view/View;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    const-string v1, "password is clear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setHmiListener$3$HmiAddWlanDialog(Landroid/view/View;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHmiConnectionListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;

    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    invoke-interface {v0, v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;->connection(Lcom/geely/toolchain/hmi/view/HmiEditText;Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    goto :goto_0

    .line 214
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    const-string v1, "please set ConnectionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$setHmiListener$4$HmiAddWlanDialog(Landroid/view/View;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHmiConnectionListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEditPassword:Lcom/geely/toolchain/hmi/view/HmiEditText;

    invoke-interface {v0, v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;->cancel(Lcom/geely/toolchain/hmi/view/HmiEditText;Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V

    goto :goto_0

    .line 221
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    const-string v1, "please set ConnectionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
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

    .line 82
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->initView(Landroid/view/Window;)V

    .line 84
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->initData()V

    return-void
.end method

.method public setCancelText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancelText"
        }
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mCancelText:Ljava/lang/String;

    .line 418
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelText text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setClearPwdIconVisibility(I)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClearPwdIconVisibility is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mClearPassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    return-object p0
.end method

.method public setConnectionBtnIsEnableClick(Z)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 2
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

    .line 431
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEnable:Z

    if-eqz p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_bg:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 435
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setEnabled(Z)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_unclick_bg:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_un_click_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 439
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setEnabled(Z)V

    :goto_0
    return-object p0
.end method

.method public setConnectionBtnIsEnableClick(ZLandroid/content/Context;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 1
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

    .line 452
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mEnable:Z

    if-eqz p1, :cond_0

    .line 454
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_bg:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v0, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 456
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setEnabled(Z)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_button_select_unclick_bg:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    sget v0, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_select_btn_un_click_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setTextColor(I)V

    .line 460
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnection:Lcom/geely/toolchain/hmi/view/HmiButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiButton;->setEnabled(Z)V

    :goto_0
    return-object p0
.end method

.method public setConnectionListener(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiConnectionListener"
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHmiConnectionListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiConnectionListener;

    return-object p0
.end method

.method public setConnectionText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionText"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mConnectionText:Ljava/lang/String;

    .line 406
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionText text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setHintText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHintText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiSeePasswordListener(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiSeePasswordListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiSeePasswordListener"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHmiSeePasswordListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiSeePasswordListener;

    return-object p0
.end method

.method public setHmiTextChangedListener(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiTextChangedListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mHmiTextChangedListener:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    return-object p0
.end method

.method public setInitCheckPwdIcon(Z)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShow"
        }
    .end annotation

    .line 296
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInitCheckPwdIcon:Z

    return-object p0
.end method

.method public setInputType(I)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 285
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInputType:I

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 467
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_add_wlan_dialog:I

    return v0
.end method

.method public setPwdMinLength(I)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 360
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PasswordLength is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mPwdMinLength:I

    return-object p0
.end method

.method public setSafeLevelText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "safeLevelText"
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSafeLevelText:Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "safeLevelText text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setSeePasswordIcon(Z)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is show password icon -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mInitCheckPwdIcon:Z

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSeePassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_show_password_press:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSeePassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_hide_password_press:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    :goto_0
    return-object p0
.end method

.method public setSeePwdIconVisibility(I)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeePwdIconVisibility is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSeePassword:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    return-object p0
.end method

.method public setSignalText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signalText"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mSignalText:Ljava/lang/String;

    .line 382
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signalText text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setStyle(I)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 254
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mStyle:I

    return-object p0
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textWatcher"
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->mTitleText:Ljava/lang/String;

    .line 349
    sget-object v0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
