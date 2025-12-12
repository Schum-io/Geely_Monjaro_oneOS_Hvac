.class public Lcom/geely/hvac/util/TrackballHelper;
.super Ljava/lang/Object;
.source "TrackballHelper.java"


# static fields
.field private static final ANIM_DURATION:Ljava/lang/Long;

.field private static final DEFAULT_RADIUS:F = 0.0f

.field private static final DEFAULT_SCALE:F = 1.2f

.field private static final DEFAULT_STROKE_COLOR:I

.field private static final DEFAULT_STROKE_WIDTH:I = 0x3


# instance fields
.field private radius:F

.field private scale:F

.field private strokeColor:I

.field private strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "#FF018786"

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/geely/hvac/util/TrackballHelper;->DEFAULT_STROKE_COLOR:I

    const-wide/16 v0, 0xc8

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/geely/hvac/util/TrackballHelper;->ANIM_DURATION:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private focus(Landroid/view/View;IIFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "strokeWidth",
            "strokeColor",
            "radius",
            "scale"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 57
    invoke-virtual {p2, p5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 58
    invoke-virtual {p2, p5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object p3, Lcom/geely/hvac/util/TrackballHelper;->ANIM_DURATION:Ljava/lang/Long;

    .line 59
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const p2, 0x3f333333    # 0.7f

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$resolveAttrs$0$TrackballHelper(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 41
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 p3, 0x9

    if-eq p2, p3, :cond_1

    const/16 p3, 0xa

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/geely/hvac/util/TrackballHelper;->normal(Landroid/view/View;)V

    goto :goto_0

    .line 44
    :cond_1
    iget v2, p0, Lcom/geely/hvac/util/TrackballHelper;->strokeWidth:I

    iget v3, p0, Lcom/geely/hvac/util/TrackballHelper;->strokeColor:I

    iget v4, p0, Lcom/geely/hvac/util/TrackballHelper;->radius:F

    iget v5, p0, Lcom/geely/hvac/util/TrackballHelper;->scale:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/geely/hvac/util/TrackballHelper;->focus(Landroid/view/View;IIFF)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public normal(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/geely/hvac/util/TrackballHelper;->ANIM_DURATION:Ljava/lang/Long;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public resolveAttrs(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 p4, 0x0

    .line 28
    :try_start_0
    sget-object v0, Lcom/geely/hvac/R$styleable;->TrackBallHelper:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p4

    const/4 p2, 0x3

    const/high16 p3, 0x40400000    # 3.0f

    .line 29
    invoke-virtual {p4, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/geely/hvac/util/TrackballHelper;->strokeWidth:I

    const/4 p2, 0x2

    .line 30
    sget p3, Lcom/geely/hvac/util/TrackballHelper;->DEFAULT_STROKE_COLOR:I

    invoke-virtual {p4, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/util/TrackballHelper;->strokeColor:I

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 31
    invoke-virtual {p4, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/hvac/util/TrackballHelper;->radius:F

    const/4 p2, 0x1

    const p3, 0x3f99999a    # 1.2f

    .line 32
    invoke-virtual {p4, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/hvac/util/TrackballHelper;->scale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 34
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_0

    .line 37
    :goto_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    :cond_0
    new-instance p2, Lcom/geely/hvac/util/-$$Lambda$TrackballHelper$w-CmSLE7cFUGe7igV6Qm016mPT4;

    invoke-direct {p2, p0, p1}, Lcom/geely/hvac/util/-$$Lambda$TrackballHelper$w-CmSLE7cFUGe7igV6Qm016mPT4;-><init>(Lcom/geely/hvac/util/TrackballHelper;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void

    :goto_1
    if-eqz p4, :cond_1

    .line 37
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    :cond_1
    throw p1
.end method
