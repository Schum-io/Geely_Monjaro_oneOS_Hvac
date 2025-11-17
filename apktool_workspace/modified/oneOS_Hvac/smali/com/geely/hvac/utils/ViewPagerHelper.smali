.class public Lcom/geely/hvac/utils/ViewPagerHelper;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"


# instance fields
.field private previousValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setCurrentItem$0$ViewPagerHelper(Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 29
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 30
    iget v0, p0, Lcom/geely/hvac/utils/ViewPagerHelper;->previousValue:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    neg-float v0, v0

    .line 31
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->fakeDragBy(F)Z

    .line 32
    iput p2, p0, Lcom/geely/hvac/utils/ViewPagerHelper;->previousValue:I

    return-void
.end method

.method public setCurrentItem(Landroidx/viewpager2/widget/ViewPager2;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "pager",
            "item",
            "duration"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/geely/hvac/utils/ViewPagerHelper;->previousValue:I

    .line 24
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    .line 25
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getWidth()I

    move-result v2

    sub-int/2addr p2, v1

    mul-int/2addr v2, p2

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v0, p2, v0

    const/4 v0, 0x1

    aput v2, p2, v0

    .line 27
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 28
    new-instance v0, Lcom/geely/hvac/utils/-$$Lambda$ViewPagerHelper$kwlwzMi5-ks9HZccTrBI7ICl_KM;

    invoke-direct {v0, p0, p1}, Lcom/geely/hvac/utils/-$$Lambda$ViewPagerHelper$kwlwzMi5-ks9HZccTrBI7ICl_KM;-><init>(Lcom/geely/hvac/utils/ViewPagerHelper;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    new-instance v0, Lcom/geely/hvac/utils/ViewPagerHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/hvac/utils/ViewPagerHelper$1;-><init>(Lcom/geely/hvac/utils/ViewPagerHelper;Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 54
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
