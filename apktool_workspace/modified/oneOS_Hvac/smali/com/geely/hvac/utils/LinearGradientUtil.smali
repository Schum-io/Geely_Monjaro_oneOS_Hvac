.class public Lcom/geely/hvac/utils/LinearGradientUtil;
.super Ljava/lang/Object;
.source "LinearGradientUtil.java"


# instance fields
.field private mAlpha:I

.field private mEndColor:I

.field private mStartColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 13
    iput v0, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mAlpha:I

    .line 27
    iput p1, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mAlpha:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startColor",
            "endColor"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 13
    iput v0, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mAlpha:I

    .line 16
    iput p1, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mStartColor:I

    .line 17
    iput p2, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mEndColor:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "alpha",
            "startColor",
            "endColor"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 13
    iput v0, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mAlpha:I

    .line 21
    iput p1, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mAlpha:I

    .line 22
    iput p2, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mStartColor:I

    .line 23
    iput p3, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mEndColor:I

    return-void
.end method


# virtual methods
.method public getColor(F)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radio"
        }
    .end annotation

    .line 41
    iget v0, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mStartColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mStartColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 43
    iget v2, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mStartColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 44
    iget v3, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mEndColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 45
    iget v4, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mEndColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 46
    iget v5, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mEndColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-double v6, v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p1

    float-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v0, v6

    int-to-double v6, v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v2, p1

    float-to-double v2, v2

    add-double/2addr v2, v10

    add-double/2addr v6, v2

    double-to-int v2, v6

    int-to-double v5, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, p1

    float-to-double v3, v1

    add-double/2addr v3, v10

    add-double/2addr v5, v3

    double-to-int p1, v5

    .line 51
    iget v1, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mAlpha:I

    invoke-static {v1, v0, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mAlpha:I

    return-void
.end method

.method public setColor(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startColor",
            "endColor"
        }
    .end annotation

    .line 31
    iput p1, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mStartColor:I

    .line 32
    iput p2, p0, Lcom/geely/hvac/utils/LinearGradientUtil;->mEndColor:I

    return-void
.end method
