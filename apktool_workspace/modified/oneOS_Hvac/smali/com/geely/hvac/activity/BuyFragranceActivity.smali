.class public Lcom/geely/hvac/activity/BuyFragranceActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "BuyFragranceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BuyFragranceActivityTAG"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

.field private mServiceConnectionListener:Lcom/geely/lib/cloud/listener/ServiceConnectionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$6ZPgI0cFAbL8m3dqwZ-GFuBsotU;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$6ZPgI0cFAbL8m3dqwZ-GFuBsotU;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity;)V

    iput-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mServiceConnectionListener:Lcom/geely/lib/cloud/listener/ServiceConnectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/activity/BuyFragranceActivity;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    return-object p0
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    .line 126
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 127
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$JKetaUVu5BcRITca3VKvpDO6Gho;

    invoke-direct {v1, p0}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$JKetaUVu5BcRITca3VKvpDO6Gho;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getView$3$BuyFragranceActivity(Landroid/view/View;)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getMainActivityVisible()Landroidx/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    const-string v1, "BuyFragranceActivityTAG"

    if-eqz v0, :cond_0

    const-string v0, "finish Activity"

    .line 129
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "moveTaskToBack Activity"

    .line 132
    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0, v0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->moveTaskToBack(Z)Z

    .line 135
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$0$BuyFragranceActivity()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$new$1$BuyFragranceActivity()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic lambda$new$2$BuyFragranceActivity(Z)V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceConnection() called with: connectionState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuyFragranceActivityTAG"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/geely/lib/cloud/CloudApiManager;->getInstance(Landroid/content/Context;)Lcom/geely/lib/cloud/CloudApiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/lib/cloud/CloudApiManager;->getResourceManager()Lcom/geely/lib/cloud/resource/ResourceManager;

    move-result-object p1

    new-instance v0, Lcom/geely/hvac/activity/BuyFragranceActivity$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/activity/BuyFragranceActivity$1;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity;)V

    invoke-virtual {p1, v0}, Lcom/geely/lib/cloud/resource/ResourceManager;->getFragranceUrl(Lcom/geely/lib/cloud/listener/OperationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    new-instance p1, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$39uhzslAy3XYPveOSaY47_wSY-g;

    invoke-direct {p1, p0}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$39uhzslAy3XYPveOSaY47_wSY-g;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity;)V

    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/BuyFragranceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$dHfymm3EGOIf7RG68Fst4TFafbI;

    invoke-direct {p1, p0}, Lcom/geely/hvac/activity/-$$Lambda$BuyFragranceActivity$dHfymm3EGOIf7RG68Fst4TFafbI;-><init>(Lcom/geely/hvac/activity/BuyFragranceActivity;)V

    invoke-virtual {p0, p1}, Lcom/geely/hvac/activity/BuyFragranceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 103
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/geely/hvac/activity/BuyFragranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate url extra is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuyFragranceActivityTAG"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceId:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceBuyWay:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->tvFragranceWait:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mBinding:Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutBuyFragranceBinding;->qrIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v1, 0xe0

    invoke-static {p1, v1, v1}, Lcom/geely/hvac/utils/QrCodeUtil;->createQRCodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/geely/lib/cloud/CloudApiManager;->getInstance(Landroid/content/Context;)Lcom/geely/lib/cloud/CloudApiManager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mServiceConnectionListener:Lcom/geely/lib/cloud/listener/ServiceConnectionListener;

    invoke-virtual {p1, v0}, Lcom/geely/lib/cloud/CloudApiManager;->registerServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V

    .line 113
    invoke-static {p0}, Lcom/geely/lib/cloud/CloudApiManager;->getInstance(Landroid/content/Context;)Lcom/geely/lib/cloud/CloudApiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geely/lib/cloud/CloudApiManager;->init()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/geely/hvac/activity/DialogActivity;->onDestroy()V

    .line 120
    invoke-static {p0}, Lcom/geely/lib/cloud/CloudApiManager;->getInstance(Landroid/content/Context;)Lcom/geely/lib/cloud/CloudApiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/activity/BuyFragranceActivity;->mServiceConnectionListener:Lcom/geely/lib/cloud/listener/ServiceConnectionListener;

    invoke-virtual {v0, v1}, Lcom/geely/lib/cloud/CloudApiManager;->unregisterServiceConnectionListener(Lcom/geely/lib/cloud/listener/ServiceConnectionListener;)V

    return-void
.end method
