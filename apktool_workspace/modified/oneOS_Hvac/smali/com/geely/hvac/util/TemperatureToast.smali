.class public Lcom/geely/hvac/util/TemperatureToast;
.super Ljava/lang/Object;
.source "TemperatureToast.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TemperatureToast"

.field private static mWindowType:I


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mHasCancel:Z

.field private mHasShow:Z

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    invoke-static {v0}, Lcom/ecarx/xui/adaptapi/policy/Policy;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/policy/Policy;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/policy/Policy;->getWindowManagerPolicy()Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    move-result-object v0

    const-string v1, "SWIPE_FROM_BOTTOM_VIEW"

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;->getWindowTypeByCode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/geely/hvac/util/TemperatureToast;->mWindowType:I

    .line 49
    sget-object v0, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toast static, mWindowType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/geely/hvac/util/TemperatureToast;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasShow:Z

    .line 37
    iput-boolean v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasCancel:Z

    const/16 v0, 0x1388

    .line 38
    iput v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mDuration:I

    .line 39
    new-instance v0, Lcom/geely/hvac/util/TemperatureToast$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/util/TemperatureToast$1;-><init>(Lcom/geely/hvac/util/TemperatureToast;)V

    iput-object v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/util/TemperatureToast;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/geely/hvac/util/TemperatureToast;)Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 59
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$vvAG6L8ePuoxZtGMxklMt3Vf1Mw;

    invoke-direct {v1, p0}, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$vvAG6L8ePuoxZtGMxklMt3Vf1Mw;-><init>(Lcom/geely/hvac/util/TemperatureToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasCancel:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$cancel$0$TemperatureToast(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 72
    iget-object p2, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->root:Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    invoke-virtual {p2, p1}, Lcom/geely/hvac/component/ConstraintLayoutWithBg;->setAlpha(F)V

    .line 73
    sget-object p2, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel, alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$cancel$1$TemperatureToast()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasShow:Z

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    const-string v1, "not show return"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasCancel:Z

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    const-string v1, "already canceled, return"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasCancel:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 69
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$j0r7zrfLHsDYvQZF3XDDDGiIVMo;

    invoke-direct {v1, p0, v0}, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$j0r7zrfLHsDYvQZF3XDDDGiIVMo;-><init>(Lcom/geely/hvac/util/TemperatureToast;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    new-instance v1, Lcom/geely/hvac/util/TemperatureToast$2;

    invoke-direct {v1, p0}, Lcom/geely/hvac/util/TemperatureToast$2;-><init>(Lcom/geely/hvac/util/TemperatureToast;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public synthetic lambda$show$2$TemperatureToast(Landroid/view/View;)V
    .locals 2

    .line 127
    sget-object v0, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    const-string v1, "root click"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/geely/hvac/util/TemperatureToast;->cancel()V

    .line 129
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$show$3$TemperatureToast(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->root:Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/ConstraintLayoutWithBg;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$show$4$TemperatureToast()V
    .locals 10

    .line 106
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    .line 107
    iget-boolean v1, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasShow:Z

    if-eqz v1, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 111
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v2

    new-instance v3, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v3}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v1, v2, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v2, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 112
    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 110
    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 114
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x5

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    const v4, 0x7f0501ec

    .line 117
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    const v5, 0x7f0501ed

    .line 118
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    iget-object v3, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    const v6, 0x7f0501f0

    .line 119
    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    iget-object v3, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    const v7, 0x7f0501ee

    .line 120
    invoke-virtual {v3, v7}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const/4 v7, 0x3

    aput v3, v2, v7

    const/4 v3, 0x4

    iget-object v8, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    const v9, 0x7f0501ef

    .line 121
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    aput v8, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 123
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 124
    iget-object v1, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->content:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->wrap:Lcom/geely/hvac/util/TemperatureToastRoot;

    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$pRQgXqBWPVioxjhIGFjz2_Vfl6Q;

    invoke-direct {v1, p0}, Lcom/geely/hvac/util/-$$Lambda$pRQgXqBWPVioxjhIGFjz2_Vfl6Q;-><init>(Lcom/geely/hvac/util/TemperatureToast;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/util/TemperatureToastRoot;->setTouchListener(Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;)V

    .line 126
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->root:Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$sgPQYEs2HCiw4AsWMqazeiSRFe0;

    invoke-direct {v1, p0}, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$sgPQYEs2HCiw4AsWMqazeiSRFe0;-><init>(Lcom/geely/hvac/util/TemperatureToast;)V

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ConstraintLayoutWithBg;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-boolean v5, p0, Lcom/geely/hvac/util/TemperatureToast;->mHasShow:Z

    new-array v0, v6, [F

    .line 131
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$2XUag0-1PFY86IZ6n8cZusM94tQ;

    invoke-direct {v1, p0}, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$2XUag0-1PFY86IZ6n8cZusM94tQ;-><init>(Lcom/geely/hvac/util/TemperatureToast;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 138
    sget-object v0, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "windowType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/geely/hvac/util/TemperatureToast;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 140
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x780

    .line 141
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x2d0

    .line 142
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 143
    sget v2, Lcom/geely/hvac/util/TemperatureToast;->mWindowType:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x3

    .line 144
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x9840448

    .line 145
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 146
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 147
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 148
    iget-object v2, p0, Lcom/geely/hvac/util/TemperatureToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 149
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 150
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 151
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 152
    sget-object v2, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show, view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    invoke-virtual {v4}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    iget-object v2, p0, Lcom/geely/hvac/util/TemperatureToast;->mBinding:Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;

    invoke-virtual {v2}, Lcom/geely/hvac/databinding/LayoutTemperatureToastBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/util/TemperatureToast;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/geely/hvac/util/TemperatureToast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public resetTimer()V
    .locals 4

    .line 98
    sget-object v0, Lcom/geely/hvac/util/TemperatureToast;->TAG:Ljava/lang/String;

    const-string v1, "resetTimer"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/util/TemperatureToast;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    iget-object v1, p0, Lcom/geely/hvac/util/TemperatureToast;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/geely/hvac/util/TemperatureToast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 105
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$dMwmZMt4pA67P7ADEa8EiJFDTkU;

    invoke-direct {v1, p0}, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$dMwmZMt4pA67P7ADEa8EiJFDTkU;-><init>(Lcom/geely/hvac/util/TemperatureToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
