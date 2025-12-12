.class public Lcom/geely/toolchain/hmi/search/HmiCompatEditText;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "HmiCompatEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;,
        Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;,
        Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;,
        Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnPasswordStatesChangeListener;
    }
.end annotation


# static fields
.field private static final RES_ID_DEFAULT:I = -0x1

.field private static final SDK_INT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "HmiCompatEditText"


# instance fields
.field private hidePassword:Z

.field private final isCloseIconShow:Z

.field private mCenterIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mClearImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

.field private mFocusListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;

.field private mLeftIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private mPasswordListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnPasswordStatesChangeListener;

.field private mQueryListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;

.field private mRightIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mPasswordListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnPasswordStatesChangeListener;

    .line 48
    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;

    .line 49
    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->hidePassword:Z

    .line 74
    sget-object v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle:[I

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 76
    sget-object v5, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle:[I

    .line 77
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    .line 76
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/geely/toolchain/hmi/R$layout;->hmi_compat_edit_text:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    sget p1, Lcom/geely/toolchain/hmi/R$id;->hmi_compat_edit_root_view:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->rootView:Landroid/view/View;

    .line 82
    sget p1, Lcom/geely/toolchain/hmi/R$id;->hmi_edit_text:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/search/FocusEditText;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    .line 84
    sget p1, Lcom/geely/toolchain/hmi/R$id;->hmi_edit_text_clear_iv:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mClearImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 86
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiCloseIconShow:I

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->isCloseIconShow:Z

    .line 89
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_android_hint:I

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_android_hint:I

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiPasswordIconShow:I

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    sget p1, Lcom/geely/toolchain/hmi/R$id;->hmi_password_iv_icon:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 99
    new-instance p2, Lcom/geely/toolchain/hmi/search/-$$Lambda$HmiCompatEditText$clAtfOnRu6KbM5UbOJTBsivANDQ;

    invoke-direct {p2, p0, p1}, Lcom/geely/toolchain/hmi/search/-$$Lambda$HmiCompatEditText$clAtfOnRu6KbM5UbOJTBsivANDQ;-><init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;Lcom/geely/toolchain/hmi/view/HmiImageView;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 110
    :cond_1
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_android_inputType:I

    const/4 p2, -0x1

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 112
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->setInputType(I)V

    .line 115
    :cond_2
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_android_textSize:I

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v1, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDimension(IF)F

    move-result p1

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->setTextSize(F)V

    .line 120
    :cond_3
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiErrorStatus:I

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->setErrorStatus(Z)V

    .line 123
    invoke-direct {p0, v1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->initIcon(Landroidx/appcompat/widget/TintTypedArray;)V

    .line 124
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->initListener()V

    .line 126
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;Ljava/lang/CharSequence;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)Lcom/geely/toolchain/hmi/search/FocusEditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    return-object p0
.end method

.method private initIcon(Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typedArray"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    sget v0, Lcom/geely/toolchain/hmi/R$id;->hmi_compat_edit_left_iv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mLeftIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 136
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiLeftIconShow:I

    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiLeftIconSrc:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->initStyleableIcon(Landroidx/appcompat/widget/TintTypedArray;Lcom/geely/toolchain/hmi/view/HmiImageView;II)V

    .line 138
    sget v0, Lcom/geely/toolchain/hmi/R$id;->hmi_compat_edit_center_iv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mCenterIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 139
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiCenterIconShow:I

    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiCenterIconSrc:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->initStyleableIcon(Landroidx/appcompat/widget/TintTypedArray;Lcom/geely/toolchain/hmi/view/HmiImageView;II)V

    .line 141
    sget v0, Lcom/geely/toolchain/hmi/R$id;->hmi_compat_edit_right_iv:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mRightIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 142
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiRightIconShow:I

    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HmiCompatEditTextStyle_hmiRightIconSrc:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->initStyleableIcon(Landroidx/appcompat/widget/TintTypedArray;Lcom/geely/toolchain/hmi/view/HmiImageView;II)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    new-instance v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$1;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$1;-><init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    new-instance v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$2;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$2;-><init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    new-instance v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$3;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$3;-><init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    new-instance v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$4;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$4;-><init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mClearImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$5;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$5;-><init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initStyleableIcon(Landroidx/appcompat/widget/TintTypedArray;Lcom/geely/toolchain/hmi/view/HmiImageView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "typedArray",
            "mImageView",
            "styleableShowId",
            "styleableResId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 149
    invoke-virtual {p2, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    const/4 p3, -0x1

    .line 150
    invoke-virtual {p1, p4, p3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 152
    invoke-virtual {p2, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;

    if-nez v1, :cond_0

    .line 316
    sget-object v0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->TAG:Ljava/lang/String;

    const-string v1, "mQueryListener is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->setFocusMode(Z)V

    .line 322
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->hideKeyboard()V

    .line 323
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 325
    :cond_1
    sget-object v0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->TAG:Ljava/lang/String;

    const-string v1, "query is null! or query lenth < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newText"
        }
    .end annotation

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->isCloseIconShow:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mClearImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mClearImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mUserQuery:Ljava/lang/CharSequence;

    .line 392
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;->onQueryTextChange(Ljava/lang/CharSequence;)V

    .line 395
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mOldQueryText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->clearFocus()V

    return-void
.end method

.method public getCenterIcon()Lcom/geely/toolchain/hmi/view/HmiImageView;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mCenterIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    return-object v0
.end method

.method public getLeftIcon()Lcom/geely/toolchain/hmi/view/HmiImageView;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mLeftIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    return-object v0
.end method

.method public getRightIcon()Lcom/geely/toolchain/hmi/view/HmiImageView;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mRightIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    return-object v0
.end method

.method public getTextQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 375
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    .line 376
    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$HmiCompatEditText(Lcom/geely/toolchain/hmi/view/HmiImageView;Landroid/view/View;)V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->hidePassword:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->hidePassword:Z

    if-eqz v0, :cond_0

    .line 101
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_compat_edit_password_icon_off:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_compat_edit_password_icon_on:I

    :goto_0
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 102
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mPasswordListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnPasswordStatesChangeListener;

    if-eqz p1, :cond_1

    .line 103
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->hidePassword:Z

    invoke-interface {p1, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnPasswordStatesChangeListener;->onStatesChange(Z)V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setSelection(I)V

    .line 106
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parcelable"
        }
    .end annotation

    .line 446
    instance-of v0, p1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;

    if-eqz v0, :cond_0

    .line 447
    check-cast p1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;

    .line 448
    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 449
    iget-object v0, p1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->setTextQuery(Ljava/lang/CharSequence;Z)V

    .line 450
    iget-boolean p1, p1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;->focus:Z

    if-eqz p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->requestFocus()Z

    goto :goto_0

    .line 454
    :cond_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 434
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;

    invoke-direct {v1, v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 437
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->getTextQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;->text:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->hasFocus()Z

    move-result v0

    iput-boolean v0, v1, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$SavedState;->focus:Z

    return-object v1

    .line 441
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1, p2}, Lcom/geely/toolchain/hmi/search/FocusEditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setBackgroundColor(I)V

    return-void
.end method

.method public setClearIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mClearImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setErrorStatus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_compat_edit_text_error_bg:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_compat_edit_text_bg:I

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setFocusMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setFocusable(Z)V

    .line 261
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setFocusableInTouchMode(Z)V

    .line 262
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->requestFocus()Z

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hint"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imeOptions"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setInputType(I)V

    return-void
.end method

.method public setOnFocusChangeListener(Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;)V
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
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;

    return-void
.end method

.method public setOnPasswordChangeListener(Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnPasswordStatesChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mPasswordListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnPasswordStatesChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnQueryTextListener;

    return-void
.end method

.method public setText(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resid"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextClearOnBackPressed(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clear"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setTextClearOnBackPressed(Z)V

    return-void
.end method

.method public setTextClearOnClearFocus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearFocus"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setTextClearOnClearFocus(Z)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setTextColor(I)V

    return-void
.end method

.method public setTextHintColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setHintTextColor(I)V

    return-void
.end method

.method public setTextQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "query",
            "submit"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setSelection(I)V

    .line 305
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setTextSize(IF)V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeface"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    .line 361
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 364
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
