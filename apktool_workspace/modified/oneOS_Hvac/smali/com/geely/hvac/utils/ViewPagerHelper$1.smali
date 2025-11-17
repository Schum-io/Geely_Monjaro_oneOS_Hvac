.class Lcom/geely/hvac/utils/ViewPagerHelper$1;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/utils/ViewPagerHelper;->setCurrentItem(Landroidx/viewpager2/widget/ViewPager2;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/utils/ViewPagerHelper;

.field final synthetic val$pager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/geely/hvac/utils/ViewPagerHelper;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pager"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/geely/hvac/utils/ViewPagerHelper$1;->this$0:Lcom/geely/hvac/utils/ViewPagerHelper;

    iput-object p2, p0, Lcom/geely/hvac/utils/ViewPagerHelper$1;->val$pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 42
    iget-object p1, p0, Lcom/geely/hvac/utils/ViewPagerHelper$1;->val$pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->endFakeDrag()Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/geely/hvac/utils/ViewPagerHelper$1;->val$pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->beginFakeDrag()Z

    return-void
.end method
