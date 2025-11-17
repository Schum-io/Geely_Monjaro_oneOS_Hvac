.class public Lcom/geely/hvac/activity/SeatSetDetailActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "SeatSetDetailActivity.java"


# static fields
.field private static mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/geely/hvac/activity/SeatSetDetailActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCushionDownAnim:Landroid/view/animation/Animation;

.field private mCushionUpAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method

.method public static finishActivity()V
    .locals 1

    const-string v0, "kx11a2"

    .line 172
    invoke-static {v0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/activity/SeatSetDetailActivity;

    invoke-virtual {v0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getCancel$4(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;Ljava/util/List;)V
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->stopLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Z)V

    .line 166
    iget-object p0, p0, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgViewAssistant:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {p0, v0}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->stopLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Z)V

    .line 167
    invoke-static {v0}, Lcom/geely/hvac/util/AnimationUtil;->cancelTranslateAnimation(Z)V

    return-void
.end method

.method private startCushionAnim(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 135
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->cushionUp:Lcom/geely/hvac/component/ImageViewWithUpDown;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$XjpIgdhms9nZ9B5heEQINCozd_8;

    invoke-direct {v1, p0, p1}, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$XjpIgdhms9nZ9B5heEQINCozd_8;-><init>(Lcom/geely/hvac/activity/SeatSetDetailActivity;Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setUpDownAnimListener(Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;)V

    .line 144
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->cushionDown:Lcom/geely/hvac/component/ImageViewWithUpDown;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$0S80bO4Iwt7EWl3h5uCjV1iuSq0;

    invoke-direct {v1, p0, p1}, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$0S80bO4Iwt7EWl3h5uCjV1iuSq0;-><init>(Lcom/geely/hvac/activity/SeatSetDetailActivity;Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setUpDownAnimListener(Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;)V

    return-void
.end method


# virtual methods
.method public getCancel(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->liveDataCancel:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$kxl4tZCfFej9eXr7Q3RJUbtxZ9k;

    invoke-direct {v1, p1}, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$kxl4tZCfFej9eXr7Q3RJUbtxZ9k;-><init>(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public getKey(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binding"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->liveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$7lQReddNHEEbeH6-N7OY_K1bm98;

    invoke-direct {v1, p0, p1}, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$7lQReddNHEEbeH6-N7OY_K1bm98;-><init>(Lcom/geely/hvac/activity/SeatSetDetailActivity;Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 4

    .line 42
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    .line 44
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;

    .line 46
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->setMainModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 48
    iget-object v2, v1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->close:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$wfwQB5OQpWwq7nO9iWTMcq6pgYA;

    invoke-direct {v3, p0}, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$wfwQB5OQpWwq7nO9iWTMcq6pgYA;-><init>(Lcom/geely/hvac/activity/SeatSetDetailActivity;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->setModel(Lcom/geely/hvac/viewmodel/SeatSetDetailViewModel;)V

    .line 50
    invoke-direct {p0, v1}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->startCushionAnim(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getKey(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getCancel(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V

    .line 55
    invoke-virtual {v1}, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getKey$1$SeatSetDetailActivity(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;Ljava/util/Map;)V
    .locals 6

    .line 69
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setVisibility(I)V

    .line 70
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgViewAssistant:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->setVisibility(I)V

    .line 71
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesViewAssistant:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesLumbarSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesLegSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setVisibility(I)V

    .line 75
    invoke-static {}, Lcom/geely/hvac/util/AnimationUtil;->cleanTranslateAnimation()V

    if-nez p2, :cond_0

    .line 81
    iget-object p1, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->TAG:Ljava/lang/String;

    const-string p2, "getKey() is null"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object p1, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->TAG:Ljava/lang/String;

    const-string p2, "getKey() map is null"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "type"

    .line 89
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "lottie"

    .line 90
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seatsetDetail lottie  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    const-string v4, "oneLottie"

    const/4 v5, 0x0

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 119
    :cond_2
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesLumbarSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {p1, p2, v5}, Lcom/geely/hvac/util/AnimationUtil;->translationImages(Landroid/widget/ImageView;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesLegSupport:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {p1, p2, v5}, Lcom/geely/hvac/util/AnimationUtil;->translationImages(Landroid/widget/ImageView;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 108
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgViewAssistant:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {p1, p2}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->startLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Ljava/util/Map;)V

    goto :goto_0

    .line 110
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding.lottieImgViewAssistant  oneLottie  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgViewAssistant:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgViewAssistant:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->rightSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v0, p1, p2}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->oneLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;Ljava/util/Map;)V

    goto :goto_0

    .line 114
    :cond_6
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesViewAssistant:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {p1, p2, v5}, Lcom/geely/hvac/util/AnimationUtil;->translationImages(Landroid/widget/ImageView;Ljava/util/Map;Z)V

    goto :goto_0

    .line 96
    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-static {p1, p2}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->startLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Ljava/util/Map;)V

    goto :goto_0

    .line 98
    :cond_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding.lottieImgView  oneLottie  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    invoke-virtual {v2}, Lcom/geely/livewallpager/lotties/LottieAnimationView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->lottieImgView:Lcom/geely/livewallpager/lotties/LottieAnimationView;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->leftSeatBg:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {v0, p1, p2}, Lcom/geely/hvac/classify/classifyreturn/LottieAnimationSetUtils;->oneLottieAnimationSet(Lcom/geely/livewallpager/lotties/LottieAnimationView;Lcom/geely/toolchain/hmi/view/HmiImageView;Ljava/util/Map;)V

    goto :goto_0

    .line 102
    :cond_9
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->hmiImagesView:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-static {p1, p2, v5}, Lcom/geely/hvac/util/AnimationUtil;->translationImages(Landroid/widget/ImageView;Ljava/util/Map;Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getView$0$SeatSetDetailActivity(Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->finish()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$startCushionAnim$2$SeatSetDetailActivity(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionUpAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0

    :cond_0
    const v0, 0x7f01001d

    .line 139
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionUpAnim:Landroid/view/animation/Animation;

    .line 140
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->seatCushionIndicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v1, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 142
    :goto_0
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->seatCushionIndicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public synthetic lambda$startCushionAnim$3$SeatSetDetailActivity(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionDownAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0

    :cond_0
    const v0, 0x7f01001c

    .line 148
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionDownAnim:Landroid/view/animation/Animation;

    .line 149
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->seatCushionIndicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v1, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 151
    :goto_0
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;->seatCushionIndicator:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mCushionDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcom/geely/hvac/activity/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "kx11a2"

    .line 33
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/geely/hvac/activity/SeatSetDetailActivity;->mRef:Ljava/lang/ref/WeakReference;

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->getSeatSetActivityLifecycleObserver()Landroidx/lifecycle/DefaultLifecycleObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/geely/hvac/activity/DialogActivity;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/geely/hvac/activity/SeatSetDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/geely/hvac/activity/DialogActivity;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->right1click:Z

    .line 63
    invoke-virtual {p0}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v0

    iput-boolean v1, v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;->left1click:Z

    return-void
.end method
