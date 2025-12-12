.class public Lcom/geely/hvac/component/ImgUpDowStatus;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImgUpDowStatus.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActiveImgId:I

.field private mNormalImgId:I


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

    .line 21
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/ImgUpDowStatus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->TAG:Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/ImgUpDowStatus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->TAG:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/ImgUpDowStatus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/ImgUpDowStatus;->setClickable(Z)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/ImgUpDowStatus;->setFocusable(Z)V

    .line 41
    sget-object v0, Lcom/geely/hvac/common/R$styleable;->ImgUpDowStatus:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcom/geely/hvac/common/R$styleable;->ImgUpDowStatus_normalImg:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->mNormalImgId:I

    .line 43
    sget p2, Lcom/geely/hvac/common/R$styleable;->ImgUpDowStatus_activeImg:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->mActiveImgId:I

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    iget p1, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->mNormalImgId:I

    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/ImgUpDowStatus;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->mNormalImgId:I

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/ImgUpDowStatus;->setImageResource(I)V

    goto :goto_0

    .line 53
    :cond_1
    iget v0, p0, Lcom/geely/hvac/component/ImgUpDowStatus;->mActiveImgId:I

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/ImgUpDowStatus;->setImageResource(I)V

    .line 66
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
