.class public Lcom/geely/hvac/component/ViewWithBackground;
.super Landroid/view/View;
.source "ViewWithBackground.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNormalColor:I

.field private mPressColor:I

.field private mRadius:F


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

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    .line 23
    iput v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mPressColor:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    .line 23
    iput v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mPressColor:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/ViewWithBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/ViewWithBackground;->TAG:Ljava/lang/String;

    const/4 p3, 0x0

    .line 22
    iput p3, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    .line 23
    iput p3, p0, Lcom/geely/hvac/component/ViewWithBackground;->mPressColor:I

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/ViewWithBackground;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bindViewWithBgNormal(Lcom/geely/hvac/component/ViewWithBackground;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "colorId"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/geely/hvac/component/ViewWithBackground;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    .line 48
    iget-object p1, p0, Lcom/geely/hvac/component/ViewWithBackground;->TAG:Ljava/lang/String;

    const-string p2, "init, attr is null"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_normalColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 53
    sget v1, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_pressColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 54
    sget v2, Lcom/geely/hvac/common/R$styleable;->ViewWithBackground_radius:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 55
    iget-object v2, p0, Lcom/geely/hvac/component/ViewWithBackground;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, radius:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0, p2, v1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setBackground(IIF)V

    return-void
.end method


# virtual methods
.method public setBackground(IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "normalColor",
            "pressColor",
            "radius"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2, p3}, Lcom/geely/hvac/utils/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    .line 85
    iput p3, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    .line 86
    iput p1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    .line 87
    iput p2, p0, Lcom/geely/hvac/component/ViewWithBackground;->mPressColor:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 76
    iget p1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    iget v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mPressColor:I

    iget v1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    invoke-static {p0, p1, v0, v1}, Lcom/geely/hvac/utils/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    goto :goto_0

    .line 78
    :cond_0
    iget p1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    invoke-static {p0, p1, v0, v1}, Lcom/geely/hvac/utils/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    :goto_0
    return-void
.end method

.method public setNormalColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalColor"
        }
    .end annotation

    .line 61
    iget v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mPressColor:I

    iget v1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setBackground(IIF)V

    return-void
.end method

.method public setPressColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressColor"
        }
    .end annotation

    .line 69
    iget v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    iget v1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mRadius:F

    invoke-virtual {p0, v0, p1, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setBackground(IIF)V

    return-void
.end method

.method public setRadius(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 65
    iget v0, p0, Lcom/geely/hvac/component/ViewWithBackground;->mNormalColor:I

    iget v1, p0, Lcom/geely/hvac/component/ViewWithBackground;->mPressColor:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setBackground(IIF)V

    return-void
.end method
