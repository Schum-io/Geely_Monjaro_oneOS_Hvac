.class public Lcom/geely/hvac/component/ImageViewWithUpDown;
.super Lcom/geely/hvac/component/ImgUpDowStatus;
.source "ImageViewWithUpDown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;,
        Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewWithUpDown"


# instance fields
.field private mUpDownAnimListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;

.field private mUpDownListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/ImgUpDowStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/ImgUpDowStatus;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/ImgUpDowStatus;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/ImageViewWithUpDown;Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "listener"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setUpDownListener(Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    sget-object v0, Lcom/geely/hvac/component/ImageViewWithUpDown;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setAlpha(F)V

    .line 85
    iget-object v0, p0, Lcom/geely/hvac/component/ImageViewWithUpDown;->mUpDownListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    if-eqz v0, :cond_4

    .line 86
    invoke-interface {v0, p0}, Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;->onUp(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    const-string v1, "up"

    .line 76
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setAlpha(F)V

    .line 78
    iget-object v0, p0, Lcom/geely/hvac/component/ImageViewWithUpDown;->mUpDownListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    if-eqz v0, :cond_4

    .line 79
    invoke-interface {v0, p0}, Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;->onUp(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 65
    :cond_2
    sget-object v0, Lcom/geely/hvac/component/ImageViewWithUpDown;->TAG:Ljava/lang/String;

    const-string v2, "down"

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lcom/geely/hvac/component/ImageViewWithUpDown;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const v0, 0x3f19999a    # 0.6f

    .line 67
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/ImageViewWithUpDown;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/geely/hvac/component/ImageViewWithUpDown;->mUpDownListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    if-eqz v0, :cond_3

    .line 69
    invoke-interface {v0, p0}, Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;->onDown(Landroid/widget/ImageView;)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/component/ImageViewWithUpDown;->mUpDownAnimListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;

    if-eqz v0, :cond_4

    .line 72
    invoke-interface {v0}, Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;->onRun()V

    .line 92
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/geely/hvac/component/ImgUpDowStatus;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setUpDownAnimListener(Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upDownAnimListener"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/geely/hvac/component/ImageViewWithUpDown;->mUpDownAnimListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownAnimListener;

    return-void
.end method

.method public setUpDownListener(Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upDownListener"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/geely/hvac/component/ImageViewWithUpDown;->mUpDownListener:Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;

    return-void
.end method
