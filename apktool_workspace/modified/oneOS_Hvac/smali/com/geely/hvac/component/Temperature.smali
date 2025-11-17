.class public Lcom/geely/hvac/component/Temperature;
.super Landroid/view/View;
.source "Temperature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;,
        Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;,
        Lcom/geely/hvac/component/Temperature$ClickScrollHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Temperature"


# instance fields
.field private final DRAW_TEXT_SIZE:I

.field private final PICKER_ALIGN_CENTER:I

.field private final PICKER_ALIGN_LEFT:I

.field private final PICKER_ALIGN_RIGHT:I

.field private isTouchIng:Z

.field private final mActionDownPoint:Landroid/graphics/PointF;

.field private mActionScrollY:F

.field private mCanRefresh:Z

.field private final mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

.field private mCoo:Landroid/graphics/Point;

.field private mDeltaAlpha:F

.field private mDeltaTextSize:I

.field private final mDrawTextIndexes:[I

.field private mEnable:Z

.field private mFlingHelper:Lcom/geely/hvac/component/FlingHelper;

.field private mIsActionUp:Z

.field private mMaxAlpha:F

.field private mMaxScrollY:F

.field private mMaxTemp:F

.field private mMaxTextHeight:F

.field private mMaxTextSize:I

.field private mMinAlpha:F

.field private mMinScrollY:F

.field private mMinTemp:F

.field private mMinTextHeight:F

.field private mMinTextSize:I

.field private mOnScrollTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;

.field private mOnTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPickerAlign:I

.field private mScrollHeight:F

.field private volatile mScrollY:F

.field private mScroller:Lcom/geely/hvac/component/CustomScroller;

.field private mSoundIndex:I

.field private final mSoundIndexDelta:F

.field private final mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTempStep:F

.field private mTemperature:F

.field private mTextColor:I

.field private mTextMargin:F

.field private mUserSetAnimator:Landroid/animation/ValueAnimator;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

.field private mViewSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mMaxAlpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 44
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mMinAlpha:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 49
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    .line 51
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    .line 52
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/component/Temperature;->mCoo:Landroid/graphics/Point;

    const/16 v2, 0x3c

    .line 53
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextSize:I

    const/16 v2, 0x2a

    .line 54
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mMinTextSize:I

    const/4 v2, 0x0

    .line 55
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mDeltaTextSize:I

    const/high16 v3, -0x1000000

    .line 56
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mTextColor:I

    .line 57
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mPickerAlign:I

    .line 58
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    .line 59
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_CENTER:I

    .line 60
    iput v4, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_LEFT:I

    const/4 v3, 0x2

    .line 61
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_RIGHT:I

    const/high16 v3, 0x41e40000    # 28.5f

    .line 62
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    const/high16 v3, 0x41780000    # 15.5f

    .line 63
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    .line 64
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    const/4 v1, 0x5

    .line 66
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->DRAW_TEXT_SIZE:I

    new-array v1, v1, [I

    .line 67
    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mDrawTextIndexes:[I

    .line 68
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mActionDownPoint:Landroid/graphics/PointF;

    const v1, 0x3e4ccccd    # 0.2f

    .line 80
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mSoundIndexDelta:F

    .line 84
    new-instance v1, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;-><init>(Lcom/geely/hvac/component/Temperature$1;)V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    .line 85
    iput-boolean v4, p0, Lcom/geely/hvac/component/Temperature;->mEnable:Z

    .line 86
    new-instance v1, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v5, 0x1f4

    invoke-direct {v1, v5}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    .line 87
    iput-boolean v4, p0, Lcom/geely/hvac/component/Temperature;->mCanRefresh:Z

    .line 201
    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mOnTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;

    .line 202
    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mOnScrollTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;

    .line 204
    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    .line 840
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    .line 328
    invoke-direct {p0, p1, v3, v2}, Lcom/geely/hvac/component/Temperature;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
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

    .line 332
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mMaxAlpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 44
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mMinAlpha:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 49
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    .line 51
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    .line 52
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/component/Temperature;->mCoo:Landroid/graphics/Point;

    const/16 v2, 0x3c

    .line 53
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextSize:I

    const/16 v2, 0x2a

    .line 54
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mMinTextSize:I

    const/4 v2, 0x0

    .line 55
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mDeltaTextSize:I

    const/high16 v3, -0x1000000

    .line 56
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mTextColor:I

    .line 57
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mPickerAlign:I

    .line 58
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    .line 59
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_CENTER:I

    .line 60
    iput v4, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_LEFT:I

    const/4 v3, 0x2

    .line 61
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_RIGHT:I

    const/high16 v3, 0x41e40000    # 28.5f

    .line 62
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    const/high16 v3, 0x41780000    # 15.5f

    .line 63
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    .line 64
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    const/4 v1, 0x5

    .line 66
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->DRAW_TEXT_SIZE:I

    new-array v1, v1, [I

    .line 67
    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mDrawTextIndexes:[I

    .line 68
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mActionDownPoint:Landroid/graphics/PointF;

    const v1, 0x3e4ccccd    # 0.2f

    .line 80
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mSoundIndexDelta:F

    .line 84
    new-instance v1, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;-><init>(Lcom/geely/hvac/component/Temperature$1;)V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    .line 85
    iput-boolean v4, p0, Lcom/geely/hvac/component/Temperature;->mEnable:Z

    .line 86
    new-instance v1, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v5, 0x1f4

    invoke-direct {v1, v5}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    .line 87
    iput-boolean v4, p0, Lcom/geely/hvac/component/Temperature;->mCanRefresh:Z

    .line 201
    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mOnTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;

    .line 202
    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mOnScrollTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;

    .line 204
    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    .line 840
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    .line 333
    invoke-direct {p0, p1, p2, v2}, Lcom/geely/hvac/component/Temperature;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
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

    .line 337
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mMaxAlpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 44
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mMinAlpha:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 49
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    .line 51
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    .line 52
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/component/Temperature;->mCoo:Landroid/graphics/Point;

    const/16 v2, 0x3c

    .line 53
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextSize:I

    const/16 v2, 0x2a

    .line 54
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mMinTextSize:I

    const/4 v2, 0x0

    .line 55
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mDeltaTextSize:I

    const/high16 v3, -0x1000000

    .line 56
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mTextColor:I

    .line 57
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->mPickerAlign:I

    .line 58
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    .line 59
    iput v2, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_CENTER:I

    .line 60
    iput v4, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_LEFT:I

    const/4 v3, 0x2

    .line 61
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->PICKER_ALIGN_RIGHT:I

    const/high16 v3, 0x41e40000    # 28.5f

    .line 62
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    const/high16 v3, 0x41780000    # 15.5f

    .line 63
    iput v3, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    .line 64
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    const/4 v1, 0x5

    .line 66
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->DRAW_TEXT_SIZE:I

    new-array v1, v1, [I

    .line 67
    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mDrawTextIndexes:[I

    .line 68
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mActionDownPoint:Landroid/graphics/PointF;

    const v1, 0x3e4ccccd    # 0.2f

    .line 80
    iput v1, p0, Lcom/geely/hvac/component/Temperature;->mSoundIndexDelta:F

    .line 84
    new-instance v1, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;-><init>(Lcom/geely/hvac/component/Temperature$1;)V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    .line 85
    iput-boolean v4, p0, Lcom/geely/hvac/component/Temperature;->mEnable:Z

    .line 86
    new-instance v1, Lcom/geely/hvac/utils/ViewFroze;

    const/16 v5, 0x1f4

    invoke-direct {v1, v5}, Lcom/geely/hvac/utils/ViewFroze;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/Temperature;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    .line 87
    iput-boolean v4, p0, Lcom/geely/hvac/component/Temperature;->mCanRefresh:Z

    .line 201
    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mOnTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;

    .line 202
    iput-object v3, p0, Lcom/geely/hvac/component/Temperature;->mOnScrollTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;

    .line 204
    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    .line 840
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/Temperature;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/geely/hvac/component/Temperature;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->setTemperature(F)V

    return-void
.end method

.method private actionClick(Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 806
    invoke-static {}, Lcom/geely/hvac/util/ClickUtils;->isSeatFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    sget-object p1, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    const-string v0, "actionClick, too fast"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 810
    :cond_0
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionClick, y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x3e6b851f    # 0.23f

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 813
    iget-object v2, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    invoke-virtual {v2}, Lcom/geely/hvac/component/CustomScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "actionClick, is scroll"

    .line 814
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 817
    :cond_1
    iget-object v2, p0, Lcom/geely/hvac/component/Temperature;->mUserSetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 821
    :cond_2
    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    .line 822
    iget-object v3, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    cmpg-float v1, p1, v3

    if-gez v1, :cond_3

    const-string p1, "actionClick, ++"

    .line 823
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 824
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    add-float/2addr v2, p1

    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_0

    .line 825
    :cond_3
    iget-object v1, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v3, 0x3f451eb8    # 0.77f

    mul-float/2addr v1, v3

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    const-string p1, "actionClick, --"

    .line 826
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 827
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 829
    :cond_4
    :goto_0
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    const/16 v0, 0x64

    .line 833
    invoke-direct {p0, v2, p1, v0}, Lcom/geely/hvac/component/Temperature;->setTemperature(FZI)V

    .line 834
    invoke-direct {p0, v2}, Lcom/geely/hvac/component/Temperature;->callBackTemperature(F)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/Temperature;FFFLcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "max",
            "min",
            "step",
            "listener"
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p4}, Lcom/geely/hvac/component/Temperature;->setOnTemperatureChangeListener(Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;)V

    .line 152
    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    .line 153
    iput p2, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    .line 154
    iput p3, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    .line 155
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->updateTempList()V

    .line 157
    sget-object p0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bind, max:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ",min:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",step:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/Temperature;Z)V
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

    .line 177
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->setEnable(Z)V

    return-void
.end method

.method public static bindTemperature(Lcom/geely/hvac/component/Temperature;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "temperature"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindTemperature ,temperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/Temperature;->setOrderRefresh(F)V

    .line 170
    invoke-static {}, Lcom/geely/hvac/GlyAcManager;->getInstance()Lcom/geely/hvac/GlyAcManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/hvac/GlyAcManager;->getAcInterfaceManager()Lcom/geely/hvac/GlyAcInterfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/hvac/GlyAcInterfaceManager;->resetHideRunnable()V

    return-void
.end method

.method private calculateCenterY(Landroid/graphics/Paint$FontMetrics;F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metrics",
            "y"
        }
    .end annotation

    .line 420
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    sub-float/2addr p2, v0

    return p2
.end method

.method private callBackTemperature(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation

    .line 662
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackTemperature, temperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    sget-object v0, Lcom/geely/hvac/utils/Executor;->IO_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/component/-$$Lambda$Temperature$0croHAnbcYSSEzUh4grkJSEf_hg;

    invoke-direct {v1, p0, p1}, Lcom/geely/hvac/component/-$$Lambda$Temperature$0croHAnbcYSSEzUh4grkJSEf_hg;-><init>(Lcom/geely/hvac/component/Temperature;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getTargetScrollY(I)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 215
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMinScrollY:F

    return p1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 217
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    return p1

    :cond_1
    int-to-float p1, p1

    .line 219
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    return p1
.end method

.method private getTextHeight(Landroid/graphics/Paint;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paint"
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 375
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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

    if-nez p2, :cond_0

    return-void

    .line 384
    :cond_0
    new-instance p3, Lcom/geely/hvac/component/CustomScroller;

    invoke-direct {p3, p1}, Lcom/geely/hvac/component/CustomScroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    .line 385
    new-instance p3, Lcom/geely/hvac/component/FlingHelper;

    invoke-direct {p3, p1}, Lcom/geely/hvac/component/FlingHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/geely/hvac/component/Temperature;->mFlingHelper:Lcom/geely/hvac/component/FlingHelper;

    .line 386
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/geely/hvac/R$styleable;->Temperature:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/high16 p3, -0x1000000

    .line 387
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Temperature;->mTextColor:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    .line 388
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Temperature;->mMaxAlpha:F

    const/4 p2, 0x2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 389
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Temperature;->mMinAlpha:F

    const/16 p2, 0x28

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextSize:I

    const/4 p2, 0x3

    const/16 v1, 0x24

    .line 392
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Temperature;->mMinTextSize:I

    const/4 p2, 0x4

    .line 394
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/Temperature;->mPickerAlign:I

    .line 396
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxAlpha:F

    iget p2, p0, Lcom/geely/hvac/component/Temperature;->mMinAlpha:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mDeltaAlpha:F

    .line 398
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextSize:I

    iget p2, p0, Lcom/geely/hvac/component/Temperature;->mMinTextSize:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mDeltaTextSize:I

    .line 400
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    const p2, 0x400ccccd    # 2.2f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 401
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 402
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/geely/hvac/component/Temperature;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    const-string p2, "LynkcoDisplay-Medium"

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 404
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/geely/hvac/component/Temperature;->mPickerAlign:I

    if-ne p2, v0, :cond_1

    .line 405
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 404
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 406
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->getTextHeight(Landroid/graphics/Paint;)F

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    .line 409
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/geely/hvac/component/Temperature;->mMinTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 410
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->getTextHeight(Landroid/graphics/Paint;)F

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mMinTextHeight:F

    .line 411
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mMinScrollY:F

    .line 412
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    .line 413
    sget-object p1, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init, mMaxTextHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mMinTextHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mMinTextHeight:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mMinScrollY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mMinScrollY:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onMoveEnd(Landroid/view/MotionEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 734
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->updatePosition(Landroid/view/MotionEvent;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 737
    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr p1, v0

    .line 744
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->playSound()V

    .line 749
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 750
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 751
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reachBorder, temperature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    .line 753
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->callBackTemperature(F)V

    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 758
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 759
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 760
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 761
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVelocityTracker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 762
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->mIsActionUp:Z

    .line 763
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43fa0000    # 500.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 764
    iget-object v3, p0, Lcom/geely/hvac/component/Temperature;->mFlingHelper:Lcom/geely/hvac/component/FlingHelper;

    .line 765
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/FlingHelper;->getSplineFlingDistance(I)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    .line 769
    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    sub-float/2addr v2, v3

    .line 770
    iget v4, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    div-float v5, v4, v1

    sub-float v5, v2, v5

    iget v6, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    div-float/2addr v4, v1

    add-float/2addr v5, v4

    goto :goto_0

    .line 773
    :cond_1
    iget v4, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    add-float/2addr v4, v3

    .line 774
    iget v5, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    div-float v6, v5, v1

    sub-float v6, v4, v6

    iget v7, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v2

    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v5, v1

    add-float/2addr v5, v2

    move v2, v4

    :goto_0
    sub-float v1, v5, v2

    .line 783
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v3

    .line 784
    iget-object v4, p0, Lcom/geely/hvac/component/Temperature;->mFlingHelper:Lcom/geely/hvac/component/FlingHelper;

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lcom/geely/hvac/component/FlingHelper;->getVelocityByDistance(D)I

    move-result v4

    int-to-float v4, v4

    if-lez p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    neg-float p1, v4

    .line 786
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMoveEnd, newFling:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", targetScrollY:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", newTargetScrollY:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", flingDistance:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flingY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newFlingDistance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 794
    iget-object v2, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    const/4 v3, 0x0

    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    float-to-int v4, v0

    const/4 v5, 0x0

    float-to-int p1, p1

    neg-int v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    neg-float v0, p1

    float-to-int v0, v0

    div-int/lit8 v9, v0, 0x2

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    float-to-double v10, p1

    mul-double/2addr v10, v0

    double-to-int v10, v10

    invoke-virtual/range {v2 .. v10}, Lcom/geely/hvac/component/CustomScroller;->fling(IIIIIIII)V

    .line 798
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x64

    .line 800
    invoke-direct {p0, v0, v1, v2}, Lcom/geely/hvac/component/Temperature;->scrollToNearestIndex(JZ)I

    :goto_2
    return-void
.end method

.method private playSound()V
    .locals 3

    .line 528
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 532
    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mSoundIndex:I

    if-eq v1, v0, :cond_0

    .line 533
    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mSoundIndex:I

    const/16 v0, 0x82

    .line 534
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/Temperature;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private resetDrawTextIndexes()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/geely/hvac/component/Temperature;->mDrawTextIndexes:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetUserSetAnimator()V
    .locals 2

    .line 207
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    const-string v1, "resetUserSetAnimator"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mUserSetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mUserSetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method private scrollToNearestIndex(JZ)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrollDuration",
            "isFromActionUp"
        }
    .end annotation

    .line 596
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr v0, v1

    .line 597
    sget-object v1, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollToNearestIndex, mScrollY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",indexF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    float-to-int v2, v0

    add-int/lit8 v3, v2, 0x1

    int-to-float v4, v3

    sub-float/2addr v4, v0

    int-to-float v5, v2

    sub-float v5, v0, v5

    cmpl-float v6, v4, v5

    if-lez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v3

    .line 607
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scrollToNearestIndex, indexF:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    .line 609
    iget-object p3, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    iget v6, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v0, p3

    const/4 p3, 0x0

    cmpl-float p3, v0, p3

    const-wide v6, 0x3fc999999999999aL    # 0.2

    if-lez p3, :cond_1

    float-to-double v4, v5

    cmpl-double p3, v4, v6

    if-lez p3, :cond_4

    goto :goto_1

    :cond_1
    float-to-double v4, v4

    cmpl-double p3, v4, v6

    if-lez p3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v6

    :cond_4
    :goto_2
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 638
    :cond_5
    iget-object p3, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-le v2, p3, :cond_6

    .line 639
    iget-object p3, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 v2, p3, -0x1

    .line 641
    :cond_6
    invoke-direct {p0, v2}, Lcom/geely/hvac/component/Temperature;->getTargetScrollY(I)F

    move-result p3

    .line 643
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->resetUserSetAnimator()V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drag end, targetScrollY:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", newIndex:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mScrollY:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    iget-object v3, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    const/4 v4, 0x0

    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    float-to-int v5, v0

    const/4 v6, 0x0

    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    sub-float/2addr p3, v0

    float-to-int v7, p3

    long-to-int v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/geely/hvac/component/CustomScroller;->startScroll(IIIII)V

    .line 649
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    return v2
.end method

.method private setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 181
    iput-boolean p1, p0, Lcom/geely/hvac/component/Temperature;->mEnable:Z

    .line 182
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    return-void
.end method

.method private setMyScrollY(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 553
    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    .line 555
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mOnScrollTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;

    if-eqz v0, :cond_0

    .line 556
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    sub-float v1, v0, v1

    .line 557
    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mMinScrollY:F

    sub-float/2addr v2, v3

    .line 558
    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p1, v3

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    .line 559
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 560
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mOnScrollTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;

    iget-boolean v1, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    invoke-interface {p1, v0, v1}, Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;->onChange(FZ)V

    :cond_0
    return-void
.end method

.method private declared-synchronized setTemperature(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation

    monitor-enter p0

    .line 224
    :try_start_0
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperature, temperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMinTemp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMaxTemp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTempStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mViewFroze:Lcom/geely/hvac/utils/ViewFroze;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/utils/ViewFroze;->isFroze(Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/geely/hvac/component/Temperature;->setTemperature(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 230
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setTemperature(FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "temperature",
            "animate"
        }
    .end annotation

    const/16 v0, 0x1f4

    .line 241
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/component/Temperature;->setTemperature(FZI)V

    return-void
.end method

.method private setTemperature(FZI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "temperature",
            "animate",
            "duration"
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperature, temperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",animate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 253
    :cond_0
    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    .line 254
    iget-object v1, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    .line 258
    :cond_1
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->getTargetScrollY(I)F

    move-result p1

    .line 259
    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr v1, v2

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTemperature, deltaYPercent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    const-string p1, "setTemperature, deltaYPercent too small"

    .line 262
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->resetUserSetAnimator()V

    return-void

    .line 267
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperature, targetScrollY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->resetUserSetAnimator()V

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 270
    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/Temperature;->mUserSetAnimator:Landroid/animation/ValueAnimator;

    .line 271
    new-instance v0, Lcom/geely/hvac/component/-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY;

    invoke-direct {v0, p0, p1}, Lcom/geely/hvac/component/-$$Lambda$Temperature$fevJqfSxS3jNWTYmU99ILWrH1MY;-><init>(Lcom/geely/hvac/component/Temperature;F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mUserSetAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mUserSetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 312
    :cond_3
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    .line 313
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updatePosition(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mActionDownPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    neg-float p1, p1

    .line 566
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mActionScrollY:F

    add-float/2addr p1, v0

    .line 568
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMinScrollY:F

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 569
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    goto :goto_0

    .line 571
    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 572
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    goto :goto_0

    .line 575
    :cond_1
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    const/4 v2, 0x0

    .line 577
    :goto_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    .line 586
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->playSound()V

    return v2
.end method

.method private updateTempList()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    .line 344
    :goto_0
    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mTempStep:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollHeight:F

    .line 349
    iget v1, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    .line 350
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTempList, mScrollHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mScrollHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMaxScrollY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    .line 354
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/geely/hvac/component/Temperature;->setTemperature(FZI)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 10

    .line 672
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 673
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    invoke-virtual {v0}, Lcom/geely/hvac/component/CustomScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    invoke-virtual {v0}, Lcom/geely/hvac/component/CustomScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    .line 676
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeScroll, mScrollY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mMinScrollY:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 680
    invoke-direct {p0, v2}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    .line 681
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/CustomScroller;->forceFinished(Z)V

    goto :goto_0

    .line 682
    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 683
    invoke-direct {p0, v2}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    .line 684
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/CustomScroller;->forceFinished(Z)V

    .line 687
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    .line 695
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->playSound()V

    goto/16 :goto_1

    .line 699
    :cond_2
    iget-boolean v0, p0, Lcom/geely/hvac/component/Temperature;->mIsActionUp:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 703
    iput-boolean v0, p0, Lcom/geely/hvac/component/Temperature;->mIsActionUp:Z

    .line 704
    iget v2, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr v2, v3

    .line 710
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->playSound()V

    .line 715
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 716
    iget-object v4, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 717
    iput v4, p0, Lcom/geely/hvac/component/Temperature;->mTemperature:F

    .line 718
    invoke-direct {p0, v4}, Lcom/geely/hvac/component/Temperature;->callBackTemperature(F)V

    int-to-float v4, v3

    sub-float v4, v2, v4

    .line 719
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 720
    sget-object v5, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "computeScroll, over, indexF:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", index:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", abs:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    float-to-double v6, v4

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v6, v8

    if-gtz v2, :cond_4

    if-eqz v3, :cond_4

    .line 725
    iget-object v2, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v3, v2, :cond_5

    .line 726
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too fast, need repair, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v1, 0x64

    .line 727
    invoke-direct {p0, v1, v2, v0}, Lcom/geely/hvac/component/Temperature;->scrollToNearestIndex(JZ)I

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$callBackTemperature$1$Temperature(F)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mOnTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;

    if-eqz v0, :cond_0

    .line 665
    invoke-interface {v0, p1}, Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;->onChange(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setTemperature$0$Temperature(FLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 272
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 273
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 274
    iput-boolean v1, p0, Lcom/geely/hvac/component/Temperature;->mCanRefresh:Z

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lcom/geely/hvac/component/Temperature;->mCanRefresh:Z

    goto :goto_0

    .line 278
    :cond_1
    iput-boolean v1, p0, Lcom/geely/hvac/component/Temperature;->mCanRefresh:Z

    .line 280
    :goto_0
    invoke-direct {p0, p2}, Lcom/geely/hvac/component/Temperature;->setMyScrollY(F)V

    .line 282
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 431
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 433
    iget-object v2, v0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v2, v0, Lcom/geely/hvac/component/Temperature;->mCoo:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    iget-object v2, v0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 439
    iget v4, v0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iget v5, v0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    div-float/2addr v4, v5

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/geely/hvac/component/Temperature;->resetDrawTextIndexes()V

    .line 442
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 444
    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mDrawTextIndexes:[I

    const/4 v7, 0x0

    aput v5, v6, v7

    add-int/lit8 v8, v5, -0x1

    const/4 v9, 0x1

    .line 447
    aput v8, v6, v9

    add-int/lit8 v8, v5, -0x2

    const/4 v10, 0x2

    .line 450
    aput v8, v6, v10

    const/4 v8, 0x3

    add-int/lit8 v11, v5, 0x1

    .line 453
    aput v11, v6, v8

    const/4 v8, 0x4

    add-int/2addr v5, v10

    .line 456
    aput v5, v6, v8

    :goto_0
    const/4 v5, 0x5

    if-ge v7, v5, :cond_a

    .line 461
    iget-object v5, v0, Lcom/geely/hvac/component/Temperature;->mDrawTextIndexes:[I

    aget v5, v5, v7

    if-ge v5, v2, :cond_9

    if-ltz v5, :cond_9

    .line 463
    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 464
    iget v8, v0, Lcom/geely/hvac/component/Temperature;->mMaxTextSize:I

    int-to-float v8, v8

    iget v10, v0, Lcom/geely/hvac/component/Temperature;->mDeltaTextSize:I

    int-to-float v10, v10

    int-to-float v5, v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    .line 466
    iget v10, v0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    mul-float/2addr v10, v5

    sub-float v10, v3, v10

    .line 467
    iget v11, v0, Lcom/geely/hvac/component/Temperature;->mMaxAlpha:F

    iget v12, v0, Lcom/geely/hvac/component/Temperature;->mDeltaAlpha:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v12, v5

    sub-float/2addr v11, v12

    .line 468
    iget v5, v0, Lcom/geely/hvac/component/Temperature;->mMinAlpha:F

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 469
    iget-boolean v11, v0, Lcom/geely/hvac/component/Temperature;->mEnable:Z

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const v5, 0x3e3851ec    # 0.18f

    .line 470
    :goto_1
    iget-object v11, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v5, v12

    float-to-int v5, v5

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    float-to-int v5, v6

    .line 472
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    int-to-float v5, v5

    sub-float v5, v6, v5

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v5, v12

    float-to-int v5, v5

    .line 474
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, "\u00b0"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 475
    iget-object v12, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 476
    iget-object v12, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v12

    invoke-direct {v0, v12, v10}, Lcom/geely/hvac/component/Temperature;->calculateCenterY(Landroid/graphics/Paint$FontMetrics;F)F

    move-result v10

    .line 482
    iget v12, v0, Lcom/geely/hvac/component/Temperature;->mPickerAlign:I

    const v13, 0x3f333333    # 0.7f

    const-string v14, "HI"

    const-string v15, "LO"

    if-ne v12, v9, :cond_5

    .line 483
    iget v12, v0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    cmpl-float v16, v6, v12

    if-eqz v16, :cond_3

    iget v9, v0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    cmpl-float v9, v6, v9

    if-nez v9, :cond_2

    goto :goto_2

    .line 489
    :cond_2
    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 490
    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 491
    iget-object v9, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v3, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 493
    iget-object v9, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    mul-float/2addr v8, v13

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 495
    iget-object v8, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v10, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_3
    :goto_2
    cmpl-float v5, v6, v12

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v14, v15

    .line 485
    :goto_3
    iget-object v5, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 486
    iget-object v5, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v3, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 499
    :cond_5
    iget-object v9, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 500
    iget v9, v0, Lcom/geely/hvac/component/Temperature;->mMaxTemp:F

    cmpl-float v12, v6, v9

    if-eqz v12, :cond_7

    iget v12, v0, Lcom/geely/hvac/component/Temperature;->mMinTemp:F

    cmpl-float v12, v6, v12

    if-nez v12, :cond_6

    goto :goto_4

    .line 507
    :cond_6
    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 508
    iget-object v9, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    mul-float/2addr v13, v8

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 509
    iget-object v9, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 510
    iget-object v12, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 511
    iget-object v12, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/component/Temperature;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v6

    sub-float/2addr v12, v9

    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v12, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 514
    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/geely/hvac/component/Temperature;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v9

    iget-object v9, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 518
    iget-object v5, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_6

    :cond_7
    :goto_4
    cmpl-float v5, v6, v9

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    move-object v14, v15

    .line 502
    :goto_5
    iget-object v5, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 503
    iget-object v5, v0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/geely/hvac/component/Temperature;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v5, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
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

    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 360
    iget-object p3, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 361
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 362
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mCoo:Landroid/graphics/Point;

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 363
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mViewSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mMinTextHeight:F

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    .line 365
    iget-object p1, p0, Lcom/geely/hvac/component/Temperature;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    mul-float/2addr p1, p3

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mScrollHeight:F

    .line 366
    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mMaxTextHeight:F

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    .line 367
    sget-object p1, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSizeChanged, textMargin:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mTextMargin:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mScrollHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mScrollHeight:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", mMaxScrollY:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/geely/hvac/component/Temperature;->mMaxScrollY:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 844
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 895
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 896
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 884
    :cond_0
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_CANCEL"

    invoke-static {v0, v3}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 885
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    .line 886
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    invoke-virtual {v0}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->hasMove()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    .line 887
    invoke-virtual {v0}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->isActionDownFling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 889
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->actionClick(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 891
    :cond_1
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->onMoveEnd(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 869
    :cond_2
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 870
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->updatePosition(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 873
    :cond_3
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_UP"

    invoke-static {v0, v3}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 874
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    .line 875
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    invoke-virtual {v0}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->hasMove()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    .line 876
    invoke-virtual {v0}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->isActionDownFling()Z

    move-result v0

    if-nez v0, :cond_4

    .line 878
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->actionClick(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 880
    :cond_4
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/Temperature;->onMoveEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 846
    :cond_5
    sget-object v0, Lcom/geely/hvac/component/Temperature;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_DOWN"

    invoke-static {v0, v3}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 847
    iput-boolean v1, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    .line 848
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->mIsActionUp:Z

    .line 849
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mUserSetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 850
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    return v2

    .line 853
    :cond_6
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    iget-object v3, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    invoke-virtual {v3}, Lcom/geely/hvac/component/CustomScroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->setActionDownFling(Z)V

    .line 854
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mScroller:Lcom/geely/hvac/component/CustomScroller;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/CustomScroller;->forceFinished(Z)V

    .line 855
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature;->resetUserSetAnimator()V

    .line 856
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/Temperature;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 857
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 858
    invoke-virtual {p0}, Lcom/geely/hvac/component/Temperature;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 859
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mActionDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 860
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mActionDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 861
    iget v0, p0, Lcom/geely/hvac/component/Temperature;->mScrollY:F

    iput v0, p0, Lcom/geely/hvac/component/Temperature;->mActionScrollY:F

    .line 862
    iget-boolean v0, p0, Lcom/geely/hvac/component/Temperature;->mEnable:Z

    if-nez v0, :cond_7

    .line 863
    iput-boolean v2, p0, Lcom/geely/hvac/component/Temperature;->isTouchIng:Z

    return v2

    .line 900
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature;->mClickScrollHelper:Lcom/geely/hvac/component/Temperature$ClickScrollHelper;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public setOnScrollTemperatureChangeListener(Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/geely/hvac/component/Temperature;->mOnScrollTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;

    return-void
.end method

.method public setOnTemperatureChangeListener(Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTemperatureChangeListener"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/geely/hvac/component/Temperature;->mOnTemperatureChangeListener:Lcom/geely/hvac/component/Temperature$OnTemperatureInputChangeListener;

    return-void
.end method

.method public setOrderRefresh(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperature"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/geely/hvac/component/Temperature$1;

    invoke-direct {v1, p0, p1}, Lcom/geely/hvac/component/Temperature$1;-><init>(Lcom/geely/hvac/component/Temperature;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
