.class public Lcom/geely/toolchain/hmi/search/HmiSearchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "HmiSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;,
        Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;,
        Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;
    }
.end annotation


# static fields
.field private static final SDK_INT:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "HmiSearchView"


# instance fields
.field private final mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

.field private mFocusListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private mQueryListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;

.field private final mSearchViewClearButton:Landroid/widget/ImageButton;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;


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

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;

    .line 43
    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;

    .line 57
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 59
    sget-object v4, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView:[I

    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .line 59
    invoke-static/range {v2 .. v8}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 62
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_layout:I

    sget v2, Lcom/geely/toolchain/hmi/R$layout;->hmi_search_view:I

    invoke-virtual {v0, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    const/4 v2, 0x1

    .line 64
    invoke-virtual {p2, p3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 65
    sget p2, Lcom/geely/toolchain/hmi/R$id;->search_iv_icon:I

    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 66
    sget p3, Lcom/geely/toolchain/hmi/R$id;->voice_iv_icon:I

    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object p3, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mVoiceImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 67
    sget v2, Lcom/geely/toolchain/hmi/R$id;->search_view_edit_text:I

    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/search/FocusEditText;

    iput-object v2, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    .line 68
    new-instance v3, Lcom/geely/toolchain/hmi/search/HmiSearchView$1;

    invoke-direct {v3, p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$1;-><init>(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V

    invoke-virtual {v2, v3}, Lcom/geely/toolchain/hmi/search/FocusEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    new-instance v3, Lcom/geely/toolchain/hmi/search/HmiSearchView$2;

    invoke-direct {v3, p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$2;-><init>(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V

    invoke-virtual {v2, v3}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    new-instance v3, Lcom/geely/toolchain/hmi/search/HmiSearchView$3;

    invoke-direct {v3, p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$3;-><init>(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V

    invoke-virtual {v2, v3}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 100
    new-instance v3, Lcom/geely/toolchain/hmi/search/HmiSearchView$4;

    invoke-direct {v3, p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$4;-><init>(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V

    invoke-virtual {v2, v3}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v2, Lcom/geely/toolchain/hmi/R$id;->search_view_clear_button:I

    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mSearchViewClearButton:Landroid/widget/ImageButton;

    .line 108
    new-instance v3, Lcom/geely/toolchain/hmi/search/HmiSearchView$5;

    invoke-direct {v3, p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$5;-><init>(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v3, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_search_clearIcon:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    sget v3, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_search_close_icon:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setClearIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/16 v3, 0x8

    .line 118
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 119
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_android_hint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_android_hint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 123
    :cond_1
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_android_imeOptions:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 125
    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setImeOptions(I)V

    .line 127
    :cond_2
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_android_inputType:I

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 129
    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setInputType(I)V

    .line 131
    :cond_3
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_backgroundDefault:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_search_bg:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_4
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_searchIcon:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    sget v2, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_searchIcon:I

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_5
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HMISearchView_voiceIconGone:I

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 141
    invoke-virtual {p3, v3}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 143
    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/search/HmiSearchView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/geely/toolchain/hmi/search/HmiSearchView;)Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/toolchain/hmi/search/HmiSearchView;)Lcom/geely/toolchain/hmi/search/FocusEditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    return-object p0
.end method

.method private onSubmitQuery()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;

    const-string v2, "HmiSearchView"

    if-nez v1, :cond_0

    const-string v0, "mQueryListener is null!"

    .line 202
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setFocusMode(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->hideKeyboard()V

    .line 209
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    :cond_1
    const-string v0, "query is null! or query lenth < 0"

    .line 211
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mSearchViewClearButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mSearchViewClearButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 262
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/CharSequence;)V

    .line 265
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mOldQueryText:Ljava/lang/CharSequence;

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

    .line 163
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->clearFocus()V

    return-void
.end method

.method public getTextQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceImageView()Lcom/geely/toolchain/hmi/view/HmiImageView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mVoiceImageView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 3

    .line 243
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 246
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    .line 247
    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
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

    .line 301
    instance-of v0, p1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    .line 303
    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 304
    iget-object v0, p1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setTextQuery(Ljava/lang/CharSequence;Z)V

    .line 305
    iget-boolean p1, p1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    if-eqz p1, :cond_1

    .line 306
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->requestFocus()Z

    goto :goto_0

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 290
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;

    invoke-direct {v1, v0}, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 293
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->getTextQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->text:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->hasFocus()Z

    move-result v0

    iput-boolean v0, v1, Lcom/geely/toolchain/hmi/search/HmiSearchView$SavedState;->focus:Z

    return-object v1

    .line 297
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

    .line 159
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 152
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 171
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mSearchViewClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

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

    .line 166
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setFocusable(Z)V

    .line 167
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setFocusableInTouchMode(Z)V

    .line 168
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 218
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 174
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 177
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setInputType(I)V

    return-void
.end method

.method public setOnFocusChangeListener(Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mQueryListener:Lcom/geely/toolchain/hmi/search/HmiSearchView$OnQueryTextListener;

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

    .line 180
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 183
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 224
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 221
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

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

    .line 189
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setSelection(I)V

    .line 192
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->onSubmitQuery()V

    :cond_1
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

    .line 215
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    .line 233
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 236
    iget-object v1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView;->mFocusEditText:Lcom/geely/toolchain/hmi/search/FocusEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
