.class public Lcom/geely/hvac/component/BoolStateImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BoolStateImageView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDisableFalseDrawableRes:I

.field private mDisableTrueDrawableRes:I

.field private mEnable:Z

.field private mFalseDrawableRes:I

.field private mStatus:Z

.field private mTrueDrawableRes:I


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

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mEnable:Z

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/BoolStateImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mEnable:Z

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BoolStateImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/BoolStateImageView;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    .line 20
    iput-boolean p3, p0, Lcom/geely/hvac/component/BoolStateImageView;->mEnable:Z

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/BoolStateImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/BoolStateImageView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ecoView",
            "isOn"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateImageView;->setStatus(Z)V

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/BoolStateImageView;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enable"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindBoolStateImageEnable enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoolStateImageView"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateImageView;->setEnable(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f19999a    # 0.6f

    .line 78
    :goto_0
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateImageView;->setAlpha(F)V

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

    .line 44
    iget-object p1, p0, Lcom/geely/hvac/component/BoolStateImageView;->TAG:Ljava/lang/String;

    const-string p2, "init, attr is null"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/geely/hvac/common/R$styleable;->BoolStateImageView:[I

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/geely/hvac/common/R$styleable;->BoolStateImageView_stateFalseImage:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mFalseDrawableRes:I

    .line 50
    sget p2, Lcom/geely/hvac/common/R$styleable;->BoolStateImageView_stateTrueImage:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mTrueDrawableRes:I

    .line 51
    sget p2, Lcom/geely/hvac/common/R$styleable;->BoolStateImageView_stateDisableFalseImage:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mDisableFalseDrawableRes:I

    .line 52
    sget p2, Lcom/geely/hvac/common/R$styleable;->BoolStateImageView_stateDisableTrueImage:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mDisableTrueDrawableRes:I

    .line 53
    iget v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mDisableFalseDrawableRes:I

    if-nez v0, :cond_1

    .line 54
    iget v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mFalseDrawableRes:I

    iput v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mDisableFalseDrawableRes:I

    :cond_1
    if-nez p2, :cond_2

    .line 57
    iget p2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mFalseDrawableRes:I

    iput p2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mDisableTrueDrawableRes:I

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    iget p1, p0, Lcom/geely/hvac/component/BoolStateImageView;->mFalseDrawableRes:I

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private updateImg()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImg, mEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/BoolStateImageView;->mStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mEnable:Z

    if-eqz v0, :cond_1

    .line 104
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mStatus:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mTrueDrawableRes:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mFalseDrawableRes:I

    goto :goto_0

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mStatus:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mDisableTrueDrawableRes:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->mDisableFalseDrawableRes:I

    :goto_0
    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/BoolStateImageView;->setImageResource(I)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/component/BoolStateImageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImg, resId is 0, this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateImageView;->setClickable(Z)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/BoolStateImageView;->setFocusable(Z)V

    .line 84
    iput-boolean p1, p0, Lcom/geely/hvac/component/BoolStateImageView;->mEnable:Z

    .line 85
    invoke-direct {p0}, Lcom/geely/hvac/component/BoolStateImageView;->updateImg()V

    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 117
    iput-boolean p1, p0, Lcom/geely/hvac/component/BoolStateImageView;->mStatus:Z

    .line 118
    invoke-direct {p0}, Lcom/geely/hvac/component/BoolStateImageView;->updateImg()V

    return-void
.end method
