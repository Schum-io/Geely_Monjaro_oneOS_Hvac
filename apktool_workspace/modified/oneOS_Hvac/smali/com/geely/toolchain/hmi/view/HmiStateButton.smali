.class public Lcom/geely/toolchain/hmi/view/HmiStateButton;
.super Lcom/geely/toolchain/hmi/view/HmiIconButton;
.source "HmiStateButton.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HmiStateColorButton"


# instance fields
.field private mAnimEnable:Z

.field private mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRadius:F

.field mStateBackground:Landroid/graphics/drawable/StateListDrawable;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private states:[[I

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
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

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 79
    sget v0, Landroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 68
    iput-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mAnimEnable:Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private cancelAnim()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 244
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setScaleX(F)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setScaleY(F)V

    .line 246
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
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

    const/4 v0, 0x2

    new-array v0, v0, [[I

    .line 88
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->states:[[I

    .line 89
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStateBackground:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStateBackground:Landroid/graphics/drawable/StateListDrawable;

    .line 95
    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 101
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->states:[[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const v3, -0x101009e

    aput v3, v2, v4

    .line 102
    aput-object v2, v0, v1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 108
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->initAnim()V

    if-nez p2, :cond_1

    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 113
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateButton_hmiBtnColor:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 114
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateButton_hmiBtnRadius:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mRadius:F

    .line 115
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateButton_hmiBtnAnimEnable:I

    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mAnimEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mAnimEnable:Z

    .line 116
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateButton_hmiBtnStrokeColor:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStrokeColor:I

    .line 117
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateButton_hmiBtnStrokeWidth:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStrokeWidth:I

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setStroke()V

    .line 120
    iget p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mRadius:F

    invoke-virtual {p0, p2, p1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    return-void
.end method

.method private initAnim()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 129
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiStateButton$Rj97eH8EtIui9V4aSY1q1FpOLuM;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiStateButton$Rj97eH8EtIui9V4aSY1q1FpOLuM;-><init>(Lcom/geely/toolchain/hmi/view/HmiStateButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setStroke()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStrokeWidth:I

    iget v2, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initAnim$0$HmiStateButton(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 135
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setPivotX(F)V

    .line 136
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setPivotY(F)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setScaleX(F)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 238
    invoke-super {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->onDetachedFromWindow()V

    .line 239
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->cancelAnim()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mAnimEnable:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setAlpha(F)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mAnimEnable:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setAlpha(F)V

    .line 233
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mAnimEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 265
    :cond_1
    invoke-super {p0}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animEnable"
        }
    .end annotation

    .line 209
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mAnimEnable:Z

    return-void
.end method

.method public setBtnColorAndRadius(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backgroundColor",
            "btnRadius"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBtnColorAndRadius: defaultColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nbtnRadius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiStateColorButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 155
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 156
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStateBackground:Landroid/graphics/drawable/StateListDrawable;

    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->states:[[I

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStateBackground:Landroid/graphics/drawable/StateListDrawable;

    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->states:[[I

    const/4 v0, 0x1

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStateBackground:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 195
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiIconButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 197
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setAlpha(F)V

    return-void

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 200
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setAlpha(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setClickable(Z)V

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadius: radius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiStateColorButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mRadius:F

    .line 170
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mNormalBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeColor"
        }
    .end annotation

    .line 179
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStrokeColor:I

    .line 180
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setStroke()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strokeWidth"
        }
    .end annotation

    .line 189
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateButton;->mStrokeWidth:I

    .line 190
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setStroke()V

    return-void
.end method
