.class Lcom/geely/hvac/activity/FragranceTipsActivity$1;
.super Ljava/lang/Object;
.source "FragranceTipsActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/activity/FragranceTipsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/activity/FragranceTipsActivity;

.field final synthetic val$imageViewTab0:Landroid/widget/ImageView;

.field final synthetic val$imageViewTab1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/geely/hvac/activity/FragranceTipsActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$imageViewTab0",
            "val$imageViewTab1"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->this$0:Lcom/geely/hvac/activity/FragranceTipsActivity;

    iput-object p2, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->val$imageViewTab0:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->val$imageViewTab1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const-string p1, "FragranceTipsActivityTAG"

    const-string v0, "onPageScrollStateChanged"

    .line 62
    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    const-string p1, "FragranceTipsActivityTAG"

    const-string p2, "onPageScrolled"

    .line 44
    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragranceTipsActivityTAG"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x7f07008f

    const v1, 0x7f07008e

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->val$imageViewTab0:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->this$0:Lcom/geely/hvac/activity/FragranceTipsActivity;

    invoke-virtual {v2, v1}, Lcom/geely/hvac/activity/FragranceTipsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object p1, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->val$imageViewTab1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->this$0:Lcom/geely/hvac/activity/FragranceTipsActivity;

    invoke-virtual {v1, v0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 55
    iget-object p1, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->val$imageViewTab0:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->this$0:Lcom/geely/hvac/activity/FragranceTipsActivity;

    invoke-virtual {v2, v0}, Lcom/geely/hvac/activity/FragranceTipsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object p1, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->val$imageViewTab1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/geely/hvac/activity/FragranceTipsActivity$1;->this$0:Lcom/geely/hvac/activity/FragranceTipsActivity;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/activity/FragranceTipsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
