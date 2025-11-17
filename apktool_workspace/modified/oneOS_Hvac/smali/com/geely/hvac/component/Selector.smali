.class public Lcom/geely/hvac/component/Selector;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "Selector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String; = "Selector"


# instance fields
.field private mActiveColor:I

.field private mContent:Landroid/widget/LinearLayout;

.field private mEnable:Landroidx/databinding/ObservableBoolean;

.field private mIndex:I

.field private mIndicator:Lcom/geely/hvac/component/ViewWithBackground;

.field private mIndicatorBg:I

.field private mIndicatorHeight:I

.field private mIndicatorRadius:I

.field private mIndicatorWidth:I

.field private mItemBg:I

.field private mItemHeight:I

.field private mItemRadius:I

.field private mItemWidth:I

.field private mLabels:[Ljava/lang/String;

.field private mNormalColor:I

.field private mOnSelectChangedListener:Lcom/geely/hvac/component/intf/SelectorChangedListener;

.field private mTextSize:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 64
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/Selector;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/geely/hvac/component/Selector;->mLabels:[Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/Selector;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/Selector;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/geely/hvac/component/Selector;->mLabels:[Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/Selector;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/Selector;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/geely/hvac/component/Selector;->mLabels:[Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/Selector;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/Selector;ILcom/geely/hvac/component/intf/SelectorChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "value",
            "listener"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/geely/hvac/component/Selector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSelectorValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iput-object p2, p0, Lcom/geely/hvac/component/Selector;->mOnSelectChangedListener:Lcom/geely/hvac/component/intf/SelectorChangedListener;

    .line 52
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/Selector;->valueToIndex(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/geely/hvac/component/Selector;->select(IZ)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    if-nez p2, :cond_0

    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/geely/hvac/R$styleable;->Selector:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mItemWidth:I

    const/4 v0, 0x6

    .line 84
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mItemHeight:I

    const/4 v0, 0x7

    .line 85
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mItemRadius:I

    const/4 v0, 0x5

    .line 86
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mItemBg:I

    const/4 v0, 0x4

    .line 87
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mIndicatorWidth:I

    const/4 v0, 0x2

    .line 88
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mIndicatorHeight:I

    const/4 v0, 0x3

    .line 89
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mIndicatorRadius:I

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mIndicatorBg:I

    const/16 v0, 0xb

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mTextSize:I

    .line 92
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mActiveColor:I

    const/16 v0, 0xa

    .line 93
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Selector;->mNormalColor:I

    const/16 v0, 0x9

    .line 94
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/Selector;->mLabels:[Ljava/lang/String;

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Selector;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/geely/hvac/component/ViewWithBackground;

    invoke-direct {v0, p1}, Lcom/geely/hvac/component/ViewWithBackground;-><init>(Landroid/content/Context;)V

    .line 111
    iget v1, p0, Lcom/geely/hvac/component/Selector;->mItemBg:I

    iget v2, p0, Lcom/geely/hvac/component/Selector;->mItemRadius:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/geely/hvac/component/ViewWithBackground;->setBackground(IIF)V

    .line 112
    new-instance v1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/Selector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v0, Lcom/geely/hvac/component/ViewWithBackground;

    invoke-direct {v0, p1}, Lcom/geely/hvac/component/ViewWithBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geely/hvac/component/Selector;->mIndicator:Lcom/geely/hvac/component/ViewWithBackground;

    .line 117
    iget v1, p0, Lcom/geely/hvac/component/Selector;->mIndicatorBg:I

    iget v4, p0, Lcom/geely/hvac/component/Selector;->mIndicatorRadius:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setBackground(IIF)V

    .line 118
    new-instance v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    iget v1, p0, Lcom/geely/hvac/component/Selector;->mIndicatorWidth:I

    iget v4, p0, Lcom/geely/hvac/component/Selector;->mIndicatorHeight:I

    invoke-direct {v0, v1, v4}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 119
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 120
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 121
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 122
    iget v1, p0, Lcom/geely/hvac/component/Selector;->mItemWidth:I

    iget v4, p0, Lcom/geely/hvac/component/Selector;->mIndicatorWidth:I

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 123
    iget-object v1, p0, Lcom/geely/hvac/component/Selector;->mIndicator:Lcom/geely/hvac/component/ViewWithBackground;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v1, v4}, Lcom/geely/hvac/component/ViewWithBackground;->setElevation(F)V

    .line 124
    iget-object v1, p0, Lcom/geely/hvac/component/Selector;->mIndicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p0, v1, v0}, Lcom/geely/hvac/component/Selector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geely/hvac/component/Selector;->mContent:Landroid/widget/LinearLayout;

    .line 128
    new-instance v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 129
    iget-object v1, p0, Lcom/geely/hvac/component/Selector;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    iget-object v1, p0, Lcom/geely/hvac/component/Selector;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 131
    iget-object v1, p0, Lcom/geely/hvac/component/Selector;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/geely/hvac/component/Selector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/geely/hvac/component/Selector;->mLabels:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 134
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v1, p0, Lcom/geely/hvac/component/Selector;->mLabels:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget v1, p0, Lcom/geely/hvac/component/Selector;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget v1, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    if-ne v3, v1, :cond_0

    iget v1, p0, Lcom/geely/hvac/component/Selector;->mActiveColor:I

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/geely/hvac/component/Selector;->mNormalColor:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/geely/hvac/component/Selector;->mItemWidth:I

    iget v4, p0, Lcom/geely/hvac/component/Selector;->mItemHeight:I

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    iget-object v2, p0, Lcom/geely/hvac/component/Selector;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected indexToValue(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    return p1
.end method

.method public synthetic lambda$select$0$Selector(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 172
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 173
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 174
    iget-object p2, p0, Lcom/geely/hvac/component/Selector;->mIndicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    .line 185
    iget-object v0, p0, Lcom/geely/hvac/component/Selector;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lcom/geely/hvac/component/Selector;->TAG:Ljava/lang/String;

    const-string v1, "onClick: not enable"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 191
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/Selector;->select(IZ)V

    .line 194
    :cond_1
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public select(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "fromUser"
        }
    .end annotation

    .line 147
    iget v0, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 150
    :cond_0
    iput p1, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    .line 151
    iget-object v0, p0, Lcom/geely/hvac/component/Selector;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 153
    iget-object v3, p0, Lcom/geely/hvac/component/Selector;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 154
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 155
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 157
    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/geely/hvac/component/Selector;->mActiveColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 159
    :cond_1
    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/geely/hvac/component/Selector;->mNormalColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/component/Selector;->mIndicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 164
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v2

    .line 165
    iget v3, p0, Lcom/geely/hvac/component/Selector;->mItemWidth:I

    iget v4, p0, Lcom/geely/hvac/component/Selector;->mIndicatorWidth:I

    sub-int v4, v3, v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    iget v6, p0, Lcom/geely/hvac/component/Selector;->mIndex:I

    mul-int/2addr v6, v3

    add-int/2addr v4, v6

    .line 166
    iget-object v3, p0, Lcom/geely/hvac/component/Selector;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    iget-object v3, p0, Lcom/geely/hvac/component/Selector;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    :cond_4
    new-array v3, v5, [I

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v4, v3, v1

    .line 169
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/hvac/component/Selector;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object v1, p0, Lcom/geely/hvac/component/Selector;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/geely/hvac/component/-$$Lambda$Selector$VfiM0B9QJp4fEs2HlLKXLEZoxMg;

    invoke-direct {v2, p0, v0}, Lcom/geely/hvac/component/-$$Lambda$Selector$VfiM0B9QJp4fEs2HlLKXLEZoxMg;-><init>(Lcom/geely/hvac/component/Selector;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    iget-object v0, p0, Lcom/geely/hvac/component/Selector;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 177
    iget-object v0, p0, Lcom/geely/hvac/component/Selector;->mOnSelectChangedListener:Lcom/geely/hvac/component/intf/SelectorChangedListener;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 178
    sget-object p2, Lcom/geely/hvac/component/Selector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOnSelectChangedListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    iget-object p2, p0, Lcom/geely/hvac/component/Selector;->mOnSelectChangedListener:Lcom/geely/hvac/component/intf/SelectorChangedListener;

    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/Selector;->indexToValue(I)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/geely/hvac/component/intf/SelectorChangedListener;->onSelectChanged(Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 104
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/geely/hvac/component/Selector;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method protected valueToIndex(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return p1
.end method
