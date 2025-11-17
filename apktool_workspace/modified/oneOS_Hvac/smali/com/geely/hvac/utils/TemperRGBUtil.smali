.class public Lcom/geely/hvac/utils/TemperRGBUtil;
.super Ljava/lang/Object;
.source "TemperRGBUtil.java"


# static fields
.field private static final MAX_SECOND_TEMP:F = 26.5f

.field private static final MAX_TEMP:F = 28.5f

.field private static final MIN_SECOND_TEMP:F = 19.5f

.field private static final MIN_TEMP:F = 15.5f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCenterColor:I

.field private final mLeftColor:I

.field private final mLinearGradientUtil:Lcom/geely/hvac/utils/LinearGradientUtil;

.field private final mRightColor:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftColor",
            "centerColor",
            "rightColor"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Lcom/geely/hvac/utils/TemperRGBUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->TAG:Ljava/lang/String;

    .line 17
    iput p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mLeftColor:I

    .line 18
    iput p2, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mCenterColor:I

    .line 19
    iput p3, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mRightColor:I

    .line 21
    new-instance p1, Lcom/geely/hvac/utils/LinearGradientUtil;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, Lcom/geely/hvac/utils/LinearGradientUtil;-><init>(I)V

    iput-object p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mLinearGradientUtil:Lcom/geely/hvac/utils/LinearGradientUtil;

    return-void
.end method


# virtual methods
.method public getRGB(F)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temp"
        }
    .end annotation

    const/high16 v0, 0x41d40000    # 26.5f

    .line 36
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/high16 v2, 0x419c0000    # 19.5f

    if-ltz v1, :cond_0

    .line 37
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->TAG:Ljava/lang/String;

    const-string v0, "26.5<= v <=19.5"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iget p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mCenterColor:I

    return p1

    :cond_0
    const/high16 v1, 0x41e40000    # 28.5f

    .line 40
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_1

    .line 41
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->TAG:Ljava/lang/String;

    const-string v2, "28.5<= v <26.5"

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mLinearGradientUtil:Lcom/geely/hvac/utils/LinearGradientUtil;

    iget v2, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mLeftColor:I

    iget v3, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mCenterColor:I

    invoke-virtual {v0, v2, v3}, Lcom/geely/hvac/utils/LinearGradientUtil;->setColor(II)V

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    .line 45
    iget-object p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mLinearGradientUtil:Lcom/geely/hvac/utils/LinearGradientUtil;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/utils/LinearGradientUtil;->getColor(F)I

    move-result p1

    return p1

    .line 46
    :cond_1
    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_2

    const/high16 v0, 0x41780000    # 15.5f

    .line 47
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->TAG:Ljava/lang/String;

    const-string v1, "19.5< v <=15.5"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sub-float/2addr v2, p1

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr v2, p1

    .line 50
    iget-object p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mLinearGradientUtil:Lcom/geely/hvac/utils/LinearGradientUtil;

    iget v0, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mCenterColor:I

    iget v1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mRightColor:I

    invoke-virtual {p1, v0, v1}, Lcom/geely/hvac/utils/LinearGradientUtil;->setColor(II)V

    .line 51
    iget-object p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->mLinearGradientUtil:Lcom/geely/hvac/utils/LinearGradientUtil;

    invoke-virtual {p1, v2}, Lcom/geely/hvac/utils/LinearGradientUtil;->getColor(F)I

    move-result p1

    return p1

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/geely/hvac/utils/TemperRGBUtil;->TAG:Ljava/lang/String;

    const-string v0, "invalid value"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p1, 0xff

    return p1
.end method
