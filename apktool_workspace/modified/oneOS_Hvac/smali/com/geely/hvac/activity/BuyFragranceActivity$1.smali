.class Lcom/geely/hvac/activity/BuyFragranceActivity$1;
.super Ljava/lang/Object;
.source "BuyFragranceActivity.java"

# interfaces
.implements Lcom/geely/lib/cloud/listener/OperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/activity/BuyFragranceActivity;->lambda$new$2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;


# direct methods
.method constructor <init>(Lcom/geely/hvac/activity/BuyFragranceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFail$3$BuyFragranceActivity$1()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$onSuccess$0$BuyFragranceActivity$1()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$onSuccess$1$BuyFragranceActivity$1(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v1, 0xe0

    invoke-static {p1, v1, v1}, Lcom/geely/hvac/utils/QrCodeUtil;->createQRCodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic lambda$onSuccess$2$BuyFragranceActivity$1()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    invoke-static {v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFragranceUrl fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BuyFragranceActivityTAG"

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$xybtQ7612t5KzQ0RwkEu6nBn7ag;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$xybtQ7612t5KzQ0RwkEu6nBn7ag;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFragranceUrl success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuyFragranceActivityTAG"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$YbpqB0CFmuj65Vt_sJoMggT_CJU;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$YbpqB0CFmuj65Vt_sJoMggT_CJU;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$VQseCD16uHn5qB2m3LGqKHiEAts;

    invoke-direct {v2, p0, p1}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$VQseCD16uHn5qB2m3LGqKHiEAts;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/geely/hvac/activity/BuyFragranceActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;->this$0:Lcom/geely/hvac/activity/BuyFragranceActivity;

    new-instance v2, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$jL17iIXvgzZuEO8vRty6OXNDVrw;

    invoke-direct {v2, p0}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$1$jL17iIXvgzZuEO8vRty6OXNDVrw;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity$1;)V

    invoke-virtual {v0, v2}, Lcom/geely/hvac/activity/BuyFragranceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    invoke-static {p1}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
