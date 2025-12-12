.class public Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;
.super Landroid/widget/FrameLayout;
.source "HmiSelectorLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$PointEvaluator;,
        Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;
    }
.end annotation


# static fields
.field private static final DIFF:F = 0.01f

.field public static final TAG:Ljava/lang/String; = "HmiSelectorLayout"

.field private static final TEXT_BOLD_BOTH:I = 0x2

.field private static final TEXT_BOLD_NONE:I = 0x0

.field private static final TEXT_BOLD_WHEN_SELECT:I = 0x1


# instance fields
.field private mBgColor:I

.field protected mBgRadius:F

.field private final mCurrentP:Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

.field private mCurrentPosition:I

.field private mIconHeight:F

.field private mIconMargin:F

.field private mIconVisible:Z

.field private mIconWidth:F

.field private mIndicatorAnimDuration:J

.field private mIndicatorAnimEnable:Z

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private final mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field protected mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorWidth:F

.field private final mInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private final mLastP:Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

.field private mLastTab:I

.field private mListener:Lcom/geely/toolchain/hmi/view/selector/listener/OnTabSelectListener;

.field private final mSelectorEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mTabCount:I

.field private final mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:I

.field protected mTextSelectColor:I

.field private mTextSize:F

.field protected mTextUnselectColor:I

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, v0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mSelectorEntities:Ljava/util/ArrayList;

    .line 75
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 77
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 123
    new-instance p3, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p3, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 544
    new-instance p3, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    invoke-direct {p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;-><init>()V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentP:Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    .line 545
    new-instance p3, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    invoke-direct {p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;-><init>()V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mLastP:Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout$IndicatorPoint;

    const/4 p3, 0x0

    .line 141
    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setWillNotDraw(Z)V

    .line 142
    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setClipChildren(Z)V

    .line 143
    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setClipToPadding(Z)V

    .line 145
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 146
    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    iget p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgColor:I

    iget p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgRadius:F

    invoke-static {p0, p1, p1, p2}, Lcom/geely/toolchain/hmi/util/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 154
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    .line 155
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f828f5c    # 1.02f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$startAnim$1(Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;Landroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 278
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setPivotX(F)V

    .line 279
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setPivotY(F)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setScaleX(F)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private startAnim()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 269
    sget v1, Lcom/geely/toolchain/hmi/R$id;->view_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;

    .line 270
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 271
    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorAnimEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setVisibility(I)V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/geely/toolchain/hmi/view/selector/-$$Lambda$HmiSelectorLayout$GUEXkq_Qvlzi8j85apYAeMtgbWA;

    invoke-direct {v2, v0}, Lcom/geely/toolchain/hmi/view/selector/-$$Lambda$HmiSelectorLayout$GUEXkq_Qvlzi8j85apYAeMtgbWA;-><init>(Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private updateTabSelection(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 321
    :goto_0
    iget v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabCount:I

    if-ge v1, v2, :cond_5

    .line 322
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    .line 324
    :goto_1
    sget v5, Lcom/geely/toolchain/hmi/R$id;->tv_tab_title:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 325
    iget v6, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextSelectColor:I

    goto :goto_2

    :cond_1
    iget v6, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextUnselectColor:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    sget v6, Lcom/geely/toolchain/hmi/R$id;->iv_tab_icon:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 327
    iget-object v7, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mSelectorEntities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;

    if-eqz v4, :cond_2

    .line 328
    invoke-interface {v7}, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;->getSelectedIcon()I

    move-result v7

    goto :goto_3

    :cond_2
    invoke-interface {v7}, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;->getUnselectedIcon()I

    move-result v7

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    sget v6, Lcom/geely/toolchain/hmi/R$id;->view_indicator:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;

    if-eqz v4, :cond_3

    move v6, v0

    goto :goto_4

    :cond_3
    const/16 v6, 0x8

    .line 330
    :goto_4
    invoke-virtual {v2, v6}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setVisibility(I)V

    .line 331
    iget v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextBold:I

    if-ne v2, v3, :cond_4

    .line 332
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateTabStyles()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 287
    :goto_0
    iget v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabCount:I

    if-ge v1, v2, :cond_8

    .line 288
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 290
    sget v3, Lcom/geely/toolchain/hmi/R$id;->tv_tab_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 291
    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    if-ne v1, v4, :cond_0

    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextSelectColor:I

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextUnselectColor:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextSize:F

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    iget-boolean v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextAllCaps:Z

    if-eqz v4, :cond_1

    .line 294
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_1
    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextBold:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 298
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    .line 300
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 303
    :cond_3
    :goto_2
    sget v3, Lcom/geely/toolchain/hmi/R$id;->iv_tab_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 304
    iget-boolean v3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconVisible:Z

    if-eqz v3, :cond_7

    .line 305
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mSelectorEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;

    .line 307
    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    if-ne v1, v4, :cond_4

    invoke-interface {v3}, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;->getSelectedIcon()I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;->getUnselectedIcon()I

    move-result v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconWidth:F

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    const/4 v7, -0x2

    if-gtz v6, :cond_5

    move v4, v7

    goto :goto_4

    :cond_5
    float-to-int v4, v4

    .line 310
    :goto_4
    iget v6, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconHeight:F

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_6

    goto :goto_5

    :cond_6
    float-to-int v7, v6

    :goto_5
    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    iget v4, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconMargin:F

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 313
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_7
    const/16 v3, 0x8

    .line 315
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method protected addTab(ILandroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "tabView"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mSelectorEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    sget v1, Lcom/geely/toolchain/hmi/R$id;->tv_tab_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;->getSelectorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    sget v1, Lcom/geely/toolchain/hmi/R$id;->iv_tab_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 235
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;->getUnselectedIcon()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    sget v0, Lcom/geely/toolchain/hmi/R$id;->view_indicator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;

    .line 238
    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 239
    iget v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorWidth:F

    iget v3, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginLeft:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 240
    iget v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorHeight:F

    float-to-int v2, v2

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 241
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorColor:I

    iget v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setCorner(IF)V

    const/16 v1, 0x8

    .line 243
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorIndicator;->setVisibility(I)V

    .line 245
    new-instance v0, Lcom/geely/toolchain/hmi/view/selector/-$$Lambda$HmiSelectorLayout$IGTOIAFbXDY4j2tjzV083DYAAKg;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/view/selector/-$$Lambda$HmiSelectorLayout$IGTOIAFbXDY4j2tjzV083DYAAKg;-><init>(Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 264
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected compareFloat(FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "af",
            "bf"
        }
    .end annotation

    sub-float/2addr p1, p2

    .line 578
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected dp2px(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dp"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 481
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    return v0
.end method

.method public getIconView(I)Landroid/widget/ImageView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    sget v0, Lcom/geely/toolchain/hmi/R$id;->iv_tab_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectorCount()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabCount:I

    return v0
.end method

.method public getTitleView(I)Landroid/widget/TextView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 495
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_tab_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$addTab$0$HmiSelectorLayout(Landroid/view/View;)V
    .locals 4

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    iget v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    const-string v2, "HmiSelectorLayout"

    if-eq v1, v0, :cond_1

    .line 248
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setCurrentSelector(I)V

    .line 249
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->startAnim()V

    .line 250
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mListener:Lcom/geely/toolchain/hmi/view/selector/listener/OnTabSelectListener;

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v1, v0}, Lcom/geely/toolchain/hmi/view/selector/listener/OnTabSelectListener;->onTabSelect(I)V

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabView onTabSelect: tagPosition "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mListener:Lcom/geely/toolchain/hmi/view/selector/listener/OnTabSelectListener;

    if-eqz v1, :cond_2

    .line 256
    invoke-interface {v1, v0}, Lcom/geely/toolchain/hmi/view/selector/listener/OnTabSelectListener;->onTabReselect(I)V

    .line 258
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabView onTabReselect: tagPosition "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mSelectorEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabCount:I

    const/4 v0, 0x0

    .line 215
    :goto_0
    iget v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabCount:I

    if-ge v0, v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_tab_left:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->addTab(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    .line 221
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setCurrentSelector(I)V

    return-void
.end method

.method protected obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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

    .line 159
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 160
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_bg_color:I

    const-string v0, "#80FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgColor:I

    .line 161
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_bg_radius:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgRadius:F

    .line 163
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_color:I

    const-string v1, "#1368FB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorColor:I

    .line 164
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_height:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorHeight:F

    .line 165
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_width:I

    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorWidth:F

    .line 166
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_corner_radius:I

    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorCornerRadius:F

    .line 168
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_margin:I

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 169
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_margin_left:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginLeft:F

    .line 170
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_margin_top:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginTop:F

    .line 171
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_margin_right:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginRight:F

    .line 172
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_margin_bottom:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginBottom:F

    .line 175
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_anim_enable:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorAnimEnable:Z

    .line 176
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_indicator_anim_duration:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorAnimDuration:J

    .line 179
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_textSize:I

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p0, v2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->sp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextSize:F

    .line 180
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_textSelectColor:I

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextSelectColor:I

    .line 181
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_textUnselectColor:I

    const-string v2, "#AAffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextUnselectColor:I

    .line 182
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_textBold:I

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextBold:I

    .line 183
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextAllCaps:Z

    .line 185
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_iconVisible:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconVisible:Z

    .line 186
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_iconWidth:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconWidth:F

    .line 187
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_iconHeight:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconHeight:F

    .line 188
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiSelectorLayout_hmi_sl_iconMargin:I

    const/high16 v0, 0x40200000    # 2.5f

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconMargin:F

    .line 190
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 510
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 511
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 512
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 525
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 526
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mCurrentTab"

    .line 527
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    const-string v0, "instanceState"

    .line 528
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 529
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 530
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabSelection(I)V

    .line 533
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 518
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 519
    iget v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    const-string v2, "mCurrentTab"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setBgColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bgColor"
        }
    .end annotation

    .line 379
    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgColor:I

    .line 380
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgRadius:F

    invoke-static {p0, p1, p1, v0}, Lcom/geely/toolchain/hmi/util/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    return-void
.end method

.method public setBgRadius(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bgRadius"
        }
    .end annotation

    .line 388
    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgRadius:F

    .line 389
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mBgColor:I

    invoke-static {p0, v0, v0, p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->setBackgroundColor(Landroid/view/View;IIF)V

    return-void
.end method

.method public setCurrentSelector(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->getSelectorCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentTab: position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be less  selectorCount "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->getSelectorCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HmiSelectorLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    iput v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mLastTab:I

    .line 348
    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mCurrentPosition:I

    .line 349
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabSelection(I)V

    .line 350
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 585
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiSelectorLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 589
    :goto_0
    iget v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabCount:I

    if-ge v0, v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 591
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 594
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setAlpha(F)V

    return-void

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 597
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->setAlpha(F)V

    return-void
.end method

.method public setIconHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconHeight"
        }
    .end annotation

    .line 451
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconHeight:F

    .line 452
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setIconMargin(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconMargin"
        }
    .end annotation

    .line 456
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconMargin:F

    .line 457
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconVisible"
        }
    .end annotation

    .line 440
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconVisible:Z

    .line 441
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setIconWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconWidth"
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIconWidth:F

    .line 447
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorAnimDuration"
        }
    .end annotation

    .line 411
    iput-wide p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorAnimDuration:J

    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorAnimEnable"
        }
    .end annotation

    .line 415
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorAnimEnable:Z

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorColor"
        }
    .end annotation

    .line 355
    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorColor:I

    .line 356
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorCornerRadius"
        }
    .end annotation

    .line 370
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorCornerRadius:F

    .line 371
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorHeight"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorHeight:F

    .line 361
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorMargin"
        }
    .end annotation

    .line 402
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginLeft:F

    .line 403
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginTop:F

    .line 404
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginRight:F

    .line 405
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginBottom:F

    .line 406
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "indicatorMarginLeft",
            "indicatorMarginTop",
            "indicatorMarginRight",
            "indicatorMarginBottom"
        }
    .end annotation

    .line 394
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginLeft:F

    .line 395
    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginTop:F

    .line 396
    invoke-virtual {p0, p3}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginRight:F

    .line 397
    invoke-virtual {p0, p4}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorMarginBottom:F

    .line 398
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->invalidate()V

    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorWidth"
        }
    .end annotation

    .line 365
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mIndicatorWidth:F

    .line 366
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->invalidate()V

    return-void
.end method

.method public setOnTabSelectListener(Lcom/geely/toolchain/hmi/view/selector/listener/OnTabSelectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mListener:Lcom/geely/toolchain/hmi/view/selector/listener/OnTabSelectListener;

    return-void
.end method

.method public setSelectorData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabEntities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/geely/toolchain/hmi/view/selector/listener/CustomSelectorEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mSelectorEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mSelectorEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->notifyDataSetChanged()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "HmiSelectorLayout"

    const-string v0, "setTabData: tabEntities can not be NULL or EMPTY !"

    .line 200
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textAllCaps"
        }
    .end annotation

    .line 461
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextAllCaps:Z

    .line 462
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextBold(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textBold"
        }
    .end annotation

    .line 435
    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextBold:I

    .line 436
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSelectColor"
        }
    .end annotation

    .line 425
    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextSelectColor:I

    .line 426
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    .line 420
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->sp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextSize:F

    .line 421
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textUnselectColor"
        }
    .end annotation

    .line 430
    iput p1, p0, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->mTextUnselectColor:I

    .line 431
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->updateTabStyles()V

    return-void
.end method

.method protected sp2px(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sp"
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/selector/HmiSelectorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
