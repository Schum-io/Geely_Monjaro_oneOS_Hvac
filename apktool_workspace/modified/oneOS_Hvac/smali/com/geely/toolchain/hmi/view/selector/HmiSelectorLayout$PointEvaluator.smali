.class Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$PointEvaluator;
.super Ljava/lang/Object;
.source "HmiSelectorLayout.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;)Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fraction",
            "startValue",
            "endValue"
        }
    .end annotation

    .line 550
    iget v0, p2, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->left:F

    iget v1, p3, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->left:F

    iget v2, p2, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->left:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 551
    iget v1, p2, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->right:F

    iget p3, p3, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->right:F

    iget p2, p2, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->right:F

    sub-float/2addr p3, p2

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    .line 552
    new-instance p1, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    invoke-direct {p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;-><init>()V

    .line 553
    iput v0, p1, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->left:F

    .line 554
    iput v1, p1, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;->right:F

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "fraction",
            "startValue",
            "endValue"
        }
    .end annotation

    .line 547
    check-cast p2, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    check-cast p3, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$PointEvaluator;->evaluate(FLcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;)Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    move-result-object p1

    return-object p1
.end method
