.class public final synthetic Lcom/geely/hvac/utils/-$$Lambda$ViewPagerHelper$kwlwzMi5-ks9HZccTrBI7ICl_KM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/utils/ViewPagerHelper;

.field public final synthetic f$1:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/utils/ViewPagerHelper;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/utils/-$$Lambda$ViewPagerHelper$kwlwzMi5-ks9HZccTrBI7ICl_KM;->f$0:Lcom/geely/hvac/utils/ViewPagerHelper;

    iput-object p2, p0, Lcom/geely/hvac/utils/-$$Lambda$ViewPagerHelper$kwlwzMi5-ks9HZccTrBI7ICl_KM;->f$1:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/utils/-$$Lambda$ViewPagerHelper$kwlwzMi5-ks9HZccTrBI7ICl_KM;->f$0:Lcom/geely/hvac/utils/ViewPagerHelper;

    iget-object v1, p0, Lcom/geely/hvac/utils/-$$Lambda$ViewPagerHelper$kwlwzMi5-ks9HZccTrBI7ICl_KM;->f$1:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/utils/ViewPagerHelper;->lambda$setCurrentItem$0$ViewPagerHelper(Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V

    return-void
.end method
