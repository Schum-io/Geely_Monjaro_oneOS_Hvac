.class public Lcom/geely/hvac/component/FlingHelper;
.super Ljava/lang/Object;
.source "FlingHelper.java"


# static fields
.field private static DECELERATION_RATE:F

.field private static mFlingFriction:F

.field private static mPhysicalCoeff:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/geely/hvac/component/FlingHelper;->DECELERATION_RATE:F

    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    sput v0, Lcom/geely/hvac/component/FlingHelper;->mFlingFriction:F

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    sput p1, Lcom/geely/hvac/component/FlingHelper;->mPhysicalCoeff:F

    return-void
.end method

.method private getSplineDeceleration(I)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    sget v0, Lcom/geely/hvac/component/FlingHelper;->mFlingFriction:F

    sget v1, Lcom/geely/hvac/component/FlingHelper;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineDecelerationByDistance(D)D
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 22
    sget v0, Lcom/geely/hvac/component/FlingHelper;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    sget v2, Lcom/geely/hvac/component/FlingHelper;->mFlingFriction:F

    sget v3, Lcom/geely/hvac/component/FlingHelper;->mPhysicalCoeff:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr p1, v2

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double/2addr v0, p1

    sget p1, Lcom/geely/hvac/component/FlingHelper;->DECELERATION_RATE:F

    float-to-double p1, p1

    div-double/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public getSplineFlingDistance(I)D
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FlingHelper;->getSplineDeceleration(I)D

    move-result-wide v0

    sget p1, Lcom/geely/hvac/component/FlingHelper;->DECELERATION_RATE:F

    float-to-double v2, p1

    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    sget p1, Lcom/geely/hvac/component/FlingHelper;->mFlingFriction:F

    sget v2, Lcom/geely/hvac/component/FlingHelper;->mPhysicalCoeff:F

    mul-float/2addr p1, v2

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getVelocityByDistance(D)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FlingHelper;->getSplineDecelerationByDistance(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    sget v0, Lcom/geely/hvac/component/FlingHelper;->mFlingFriction:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    sget v0, Lcom/geely/hvac/component/FlingHelper;->mPhysicalCoeff:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide v0, 0x3fd6666660000000L    # 0.3499999940395355

    div-double/2addr p1, v0

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method
