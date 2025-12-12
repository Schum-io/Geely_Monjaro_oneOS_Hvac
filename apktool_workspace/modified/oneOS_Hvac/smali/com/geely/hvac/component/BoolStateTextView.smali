.class public Lcom/geely/hvac/component/BoolStateTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "BoolStateTextView.java"


# instance fields
.field private mFalseColor:I

.field private mFalseText:Ljava/lang/String;

.field private mTrueColor:I

.field private mTrueText:Ljava/lang/String;


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

    .line 22
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/BoolStateTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BoolStateTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BoolStateTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/BoolStateTextView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isOn"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateTextView;->setStatus(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 37
    sget-object v0, Lcom/geely/hvac/R$styleable;->BoolStateTextView:[I

    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/high16 v0, -0x1000000

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/BoolStateTextView;->mTrueColor:I

    const/4 p2, 0x0

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/BoolStateTextView;->mFalseColor:I

    const/4 p2, 0x3

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/BoolStateTextView;->mTrueText:Ljava/lang/String;

    const/4 p2, 0x1

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/BoolStateTextView;->mFalseText:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 56
    iget v0, p0, Lcom/geely/hvac/component/BoolStateTextView;->mTrueColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/BoolStateTextView;->mFalseColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BoolStateTextView;->setTextColor(I)V

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateTextView;->mTrueText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateTextView;->mFalseText:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
