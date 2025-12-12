.class public Lcom/geely/hvac/component/Switch;
.super Landroid/view/View;
.source "Switch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBgActiveColor:I

.field private mBgColor:I

.field private mBgColorAnimator:Landroid/animation/ValueAnimator;

.field private mBgDisableColor:I

.field private mBgUnActiveColor:I

.field private mEnable:Z

.field private mIndicatorActiveColor:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorColor:I

.field private mIndicatorDisableColor:I

.field private mIndicatorRadius:I

.field private mIndicatorUnActiveColor:I

.field private mIndicatorX:F

.field private mIsOn:Z

.field private mOnSwitchChangeListener:Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mViewSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 43
    iput-boolean v1, p0, Lcom/geely/hvac/component/Switch;->mEnable:Z

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/Switch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 43
    iput-boolean v1, p0, Lcom/geely/hvac/component/Switch;->mEnable:Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/Switch;->TAG:Ljava/lang/String;

    .line 23
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    .line 24
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    .line 25
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p3, Landroid/animation/ArgbEvaluator;

    invoke-direct {p3}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p3, p0, Lcom/geely/hvac/component/Switch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 43
    iput-boolean v0, p0, Lcom/geely/hvac/component/Switch;->mEnable:Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/Switch;Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/geely/hvac/component/Switch;->mOnSwitchChangeListener:Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/Switch;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isOn"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/Switch;->setState(ZZ)V

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/Switch;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enable"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/Switch;->setEnable(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    if-nez p2, :cond_0

    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/geely/hvac/common/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 103
    sget p2, Lcom/geely/hvac/common/R$styleable;->Switch_switchBgActiveColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Switch;->mBgActiveColor:I

    .line 104
    sget p2, Lcom/geely/hvac/common/R$styleable;->Switch_switchBgDisableColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Switch;->mBgDisableColor:I

    .line 105
    sget p2, Lcom/geely/hvac/common/R$styleable;->Switch_switchBgUnActiveColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Switch;->mBgUnActiveColor:I

    .line 107
    sget p2, Lcom/geely/hvac/common/R$styleable;->Switch_switchIndicatorActiveColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Switch;->mIndicatorActiveColor:I

    .line 109
    sget p2, Lcom/geely/hvac/common/R$styleable;->Switch_switchIndicatorUnActiveColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Switch;->mIndicatorUnActiveColor:I

    .line 112
    sget p2, Lcom/geely/hvac/common/R$styleable;->Switch_switchIndicatorDisableColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Switch;->mIndicatorDisableColor:I

    .line 115
    sget p2, Lcom/geely/hvac/common/R$styleable;->Switch_switchIndicatorRadius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Switch;->mIndicatorRadius:I

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init, mBgActiveColor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/geely/hvac/component/Switch;->mBgActiveColor:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", mBgUnActiveColor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/geely/hvac/component/Switch;->mBgUnActiveColor:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", mIndicatorActiveColor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/geely/hvac/component/Switch;->mIndicatorActiveColor:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", mIndicatorUnActiveColor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/geely/hvac/component/Switch;->mIndicatorUnActiveColor:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", mIndicatorRadius:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/geely/hvac/component/Switch;->mIndicatorRadius:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/geely/hvac/component/Switch;->mBgActiveColor:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/geely/hvac/component/Switch;->mBgUnActiveColor:I

    :goto_0
    iput p2, p0, Lcom/geely/hvac/component/Switch;->mBgColor:I

    if-eqz p1, :cond_2

    .line 128
    iget p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorActiveColor:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorUnActiveColor:I

    :goto_1
    iput p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorColor:I

    .line 129
    invoke-virtual {p0, p0}, Lcom/geely/hvac/component/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setState(ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isOn",
            "isFromUser"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState, mViewSize.x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mViewSize.y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-boolean v0, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 175
    :cond_0
    iput-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    .line 176
    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->mOnSwitchChangeListener:Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 177
    invoke-interface {v0, p1}, Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;->onSwitchChange(Z)V

    .line 179
    :cond_1
    iget-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 180
    :goto_0
    iget-object p2, p0, Lcom/geely/hvac/component/Switch;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 181
    iget-object p2, p0, Lcom/geely/hvac/component/Switch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->end()V

    .line 183
    :cond_3
    iget-object p2, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lez p2, :cond_4

    new-array p2, v4, [F

    .line 184
    iget v5, p0, Lcom/geely/hvac/component/Switch;->mIndicatorX:F

    aput v5, p2, v3

    aput p1, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/Switch;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 185
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 186
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$Switch$53ChmtuC4NnHoJwgjP03apAC-vM;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$Switch$53ChmtuC4NnHoJwgjP03apAC-vM;-><init>(Lcom/geely/hvac/component/Switch;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 193
    :cond_4
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mBgColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 194
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mBgColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 196
    :cond_5
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-lez p1, :cond_7

    new-array p1, v4, [I

    .line 197
    iget p2, p0, Lcom/geely/hvac/component/Switch;->mBgColor:I

    aput p2, p1, v3

    .line 198
    iget-boolean p2, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/geely/hvac/component/Switch;->mBgActiveColor:I

    goto :goto_1

    :cond_6
    iget p2, p0, Lcom/geely/hvac/component/Switch;->mBgUnActiveColor:I

    :goto_1
    aput p2, p1, v2

    .line 197
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/Switch;->mBgColorAnimator:Landroid/animation/ValueAnimator;

    .line 199
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mBgColorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/geely/hvac/component/Switch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 201
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mBgColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$Switch$2cIDO97wvUcqtZyMEd3JPkKLdNc;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$Switch$2cIDO97wvUcqtZyMEd3JPkKLdNc;-><init>(Lcom/geely/hvac/component/Switch;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mBgColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 207
    :cond_7
    iget-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/geely/hvac/component/Switch;->mBgActiveColor:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lcom/geely/hvac/component/Switch;->mBgUnActiveColor:I

    :goto_2
    iput p1, p0, Lcom/geely/hvac/component/Switch;->mBgColor:I

    .line 208
    invoke-virtual {p0}, Lcom/geely/hvac/component/Switch;->invalidate()V

    .line 212
    :goto_3
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 213
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 215
    :cond_9
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-lez p1, :cond_b

    new-array p1, v4, [I

    .line 216
    iget p2, p0, Lcom/geely/hvac/component/Switch;->mIndicatorColor:I

    aput p2, p1, v3

    .line 217
    iget-boolean p2, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    if-eqz p2, :cond_a

    iget p2, p0, Lcom/geely/hvac/component/Switch;->mIndicatorActiveColor:I

    goto :goto_4

    :cond_a
    iget p2, p0, Lcom/geely/hvac/component/Switch;->mIndicatorUnActiveColor:I

    :goto_4
    aput p2, p1, v2

    .line 216
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 219
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/geely/hvac/component/Switch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 221
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$Switch$AgTMwTgb82rLTHIplAnqdGr8zIQ;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$Switch$AgTMwTgb82rLTHIplAnqdGr8zIQ;-><init>(Lcom/geely/hvac/component/Switch;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6

    .line 227
    :cond_b
    iget-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorActiveColor:I

    goto :goto_5

    :cond_c
    iget p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorUnActiveColor:I

    :goto_5
    iput p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorColor:I

    :goto_6
    return-void
.end method


# virtual methods
.method public synthetic lambda$setState$0$Switch(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorX:F

    .line 188
    invoke-virtual {p0}, Lcom/geely/hvac/component/Switch;->invalidate()V

    return-void
.end method

.method public synthetic lambda$setState$1$Switch(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/Switch;->mBgColor:I

    .line 203
    invoke-virtual {p0}, Lcom/geely/hvac/component/Switch;->invalidate()V

    return-void
.end method

.method public synthetic lambda$setState$2$Switch(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 222
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorColor:I

    .line 223
    invoke-virtual {p0}, Lcom/geely/hvac/component/Switch;->invalidate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->TAG:Ljava/lang/String;

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    iget-boolean v0, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/Switch;->setState(ZZ)V

    .line 244
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 150
    iget-boolean v0, p0, Lcom/geely/hvac/component/Switch;->mEnable:Z

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/geely/hvac/component/Switch;->mBgColor:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/geely/hvac/component/Switch;->mBgDisableColor:I

    :goto_0
    if-eqz v0, :cond_1

    .line 151
    iget v0, p0, Lcom/geely/hvac/component/Switch;->mIndicatorColor:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/geely/hvac/component/Switch;->mIndicatorDisableColor:I

    .line 152
    :goto_1
    iget-object v4, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object v5, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 154
    iget-object v7, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float v8, v3, v1

    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float v9, v3, v1

    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float v10, v3, v4

    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float v11, v3, v1

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 158
    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 160
    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 164
    iget-object v3, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-boolean v0, p0, Lcom/geely/hvac/component/Switch;->mEnable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/geely/hvac/component/Switch;->mIndicatorX:F

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    :goto_2
    float-to-int v0, v0

    .line 166
    iget-object v1, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget v3, p0, Lcom/geely/hvac/component/Switch;->mIndicatorRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 167
    iget-object v0, p0, Lcom/geely/hvac/component/Switch;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/geely/hvac/component/Switch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 135
    iget-object p3, p0, Lcom/geely/hvac/component/Switch;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged, w:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ",h:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object p3, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 137
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 138
    iget-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object p3, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/geely/hvac/component/Switch;->mViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/geely/hvac/component/Switch;->mIndicatorX:F

    .line 139
    iget-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/geely/hvac/component/Switch;->mBgActiveColor:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/geely/hvac/component/Switch;->mBgUnActiveColor:I

    :goto_1
    iput p1, p0, Lcom/geely/hvac/component/Switch;->mBgColor:I

    .line 140
    invoke-virtual {p0}, Lcom/geely/hvac/component/Switch;->invalidate()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 71
    iput-boolean p1, p0, Lcom/geely/hvac/component/Switch;->mEnable:Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/Switch;->setClickable(Z)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/Switch;->setFocusable(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/geely/hvac/component/Switch;->invalidate()V

    return-void
.end method

.method public setOnSwitchChangeListener(Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSwitchChangeListener"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/geely/hvac/component/Switch;->mOnSwitchChangeListener:Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 235
    iget-boolean v0, p0, Lcom/geely/hvac/component/Switch;->mEnable:Z

    if-eqz v0, :cond_0

    .line 236
    iget-boolean v0, p0, Lcom/geely/hvac/component/Switch;->mIsOn:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/Switch;->setState(ZZ)V

    :cond_0
    return-void
.end method
