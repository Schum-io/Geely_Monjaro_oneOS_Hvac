.class public Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;
.super Landroid/view/View;
.source "HmiWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;,
        Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;
    }
.end annotation


# static fields
.field private static final SCALE_CONTENT:F = 0.8f

.field private static final TIME_NUM:[Ljava/lang/String;

.field private static final VELOCITY_FLING:I = 0x5


# instance fields
.field private CENTER_CONTENT_OFFSET:F

.field private adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

.field private context:Landroid/content/Context;

.field private firstLineY:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private initPosition:I

.field private isLoop:Z

.field private itemHeight:F

.field private itemsVisible:I

.field private lineSpacingMultiplier:F

.field private mDrawnRect:Landroid/graphics/Rect;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFirstItemDrawX:I

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mOffset:I

.field private maxTextHeight:I

.field private maxTextWidth:I

.field private measuredHeight:I

.field private measuredWidth:I

.field private onItemSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;

.field private paintCenterText:Landroid/graphics/Paint;

.field private paintOuterText:Landroid/graphics/Paint;

.field private preCurrentIndex:I

.field private previousY:F

.field private radius:I

.field private secondLineY:F

.field private selectedItem:I

.field private startTime:J

.field private textColorCenter:I

.field private textColorOut:I

.field private textSize:I

.field private totalScrollY:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "00"

    const-string v1, "01"

    const-string v2, "02"

    const-string v3, "03"

    const-string v4, "04"

    const-string v5, "05"

    const-string v6, "06"

    const-string v7, "07"

    const-string v8, "08"

    const-string v9, "09"

    .line 38
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->TIME_NUM:[Ljava/lang/String;

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

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const p3, 0x3fb33333    # 1.4f

    .line 65
    iput p3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->lineSpacingMultiplier:F

    const/4 p3, 0x7

    .line 85
    iput p3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemsVisible:I

    const/4 p3, 0x0

    .line 93
    iput p3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mOffset:I

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->previousY:F

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->startTime:J

    .line 115
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const v0, 0x4019999a    # 2.4f

    .line 118
    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->CENTER_CONTENT_OFFSET:F

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    const/high16 v0, 0x40800000    # 4.0f

    .line 120
    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->CENTER_CONTENT_OFFSET:F

    goto :goto_0

    :cond_1
    cmpg-float v1, v2, v0

    const/high16 v2, 0x40400000    # 3.0f

    if-gtz v1, :cond_2

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    const/high16 v0, 0x40c00000    # 6.0f

    .line 122
    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->CENTER_CONTENT_OFFSET:F

    goto :goto_0

    :cond_2
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_3

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    .line 124
    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->CENTER_CONTENT_OFFSET:F

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 128
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiWheelView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 130
    :try_start_0
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiWheelView_hmi_wheelView_textColorOut:I

    .line 131
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_default_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 130
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textColorOut:I

    .line 132
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiWheelView_hmi_wheelView_textColorCenter:I

    .line 133
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_default_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 132
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textColorCenter:I

    .line 134
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiWheelView_hmi_wheelView_textSize:I

    .line 135
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_wheel_item_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 134
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 137
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->judgeLineSpace()V

    .line 141
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initLoopView(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;)Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->onItemSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;

    return-object p0
.end method

.method private getContentText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 502
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 504
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getFixNum(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 506
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFixNum(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeNum"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 510
    sget-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->TIME_NUM:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getLoopMappingIndex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-gez p1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 485
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getLoopMappingIndex(I)I

    move-result p1

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 488
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getLoopMappingIndex(I)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private initLoopView(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->context:Landroid/content/Context;

    .line 158
    new-instance v0, Lcom/geely/toolchain/hmi/view/pickerview/timer/MessageHandler;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/view/pickerview/timer/MessageHandler;-><init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->handler:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/geely/toolchain/hmi/view/pickerview/LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/view/pickerview/LoopViewGestureListener;-><init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 160
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    .line 162
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mDrawnRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    const/4 p1, -0x1

    .line 164
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    .line 165
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPaints()V

    return-void
.end method

.method private initPaints()V
    .locals 3

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    .line 170
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 171
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textColorOut:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    .line 176
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 177
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textColorCenter:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v1, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private judgeLineSpace()V
    .locals 3

    .line 149
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->lineSpacingMultiplier:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 150
    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->lineSpacingMultiplier:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 152
    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->lineSpacingMultiplier:F

    :cond_1
    :goto_0
    return-void
.end method

.method private measureSize(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "specMode",
            "specSize",
            "size"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    return p2

    .line 197
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private measureTextWidthHeight()V
    .locals 6

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 234
    :goto_0
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v3}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v3, v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 242
    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextWidth:I

    if-le v3, v4, :cond_1

    .line 243
    iput v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextWidth:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    const-string/jumbo v3, "\u661f\u671f"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextHeight:I

    .line 248
    iget v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->lineSpacingMultiplier:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    return-void
.end method

.method private reMeasure()V
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measureTextWidthHeight()V

    .line 209
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    iget v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemsVisible:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v2, v1, 0x2

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 211
    iput v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measuredHeight:I

    int-to-double v6, v1

    div-double/2addr v6, v4

    double-to-int v1, v6

    .line 213
    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->radius:I

    int-to-float v1, v2

    sub-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 216
    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->firstLineY:F

    int-to-float v1, v2

    add-float/2addr v1, v0

    div-float/2addr v1, v3

    .line 217
    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->secondLineY:F

    .line 219
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 220
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    .line 226
    :cond_2
    :goto_0
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    return-void
.end method

.method private reMeasureTextSize(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentText"
        }
    .end annotation

    .line 465
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 466
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 467
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 468
    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I

    .line 469
    :goto_0
    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measuredWidth:I

    if-le v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 472
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 473
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 474
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    .line 477
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private setOutPaintStyle(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 453
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float p1, v0, p1

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 455
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x5

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    return-object v0
.end method

.method public final getCurrentItem()I
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 332
    :cond_0
    iget-boolean v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->selectedItem:I

    if-ltz v2, :cond_1

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 333
    :cond_1
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->selectedItem:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 335
    :cond_2
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->selectedItem:I

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInitPosition()I
    .locals 1

    .line 653
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    return v0
.end method

.method public getItemHeight()F
    .locals 1

    .line 649
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    return v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSelectedItemTextColor()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textColorCenter:I

    return v0
.end method

.method public getTotalScrollY()F
    .locals 1

    .line 641
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 637
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    return v0
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

    .line 351
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    .line 359
    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 364
    :try_start_0
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v3}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v3

    rem-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WheelView"

    const-string/jumbo v2, "\u51fa\u9519\u4e86\uff01adapter.getItemsCount() == 0\uff0c\u8054\u52a8\u6570\u636e\u4e0d\u5339\u914d"

    .line 367
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    if-nez v0, :cond_2

    .line 370
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    if-gez v0, :cond_1

    .line 371
    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    .line 373
    :cond_1
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_4

    .line 374
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    goto :goto_1

    .line 377
    :cond_2
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    if-gez v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v0

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    .line 380
    :cond_3
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_4

    .line 381
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    .line 385
    :cond_4
    :goto_1
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    rem-float/2addr v0, v2

    move v2, v1

    .line 389
    :goto_2
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemsVisible:I

    if-ge v2, v3, :cond_b

    .line 391
    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    sub-int/2addr v4, v3

    .line 394
    iget-boolean v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    const-string v5, ""

    if-eqz v3, :cond_5

    .line 395
    invoke-direct {p0, v4}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getLoopMappingIndex(I)I

    move-result v3

    .line 396
    iget-object v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v4, v3}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_5
    if-gez v4, :cond_6

    goto :goto_3

    .line 399
    :cond_6
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v3}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_7

    goto :goto_3

    .line 402
    :cond_7
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v3, v4}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 405
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 408
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->radius:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double v8, v3, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v6, v6

    const/high16 v7, 0x42b40000    # 90.0f

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_a

    const/high16 v7, -0x3d4c0000    # -90.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_8

    goto/16 :goto_5

    .line 418
    :cond_8
    invoke-direct {p0, v5}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getContentText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-direct {p0, v5}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->reMeasureTextSize(Ljava/lang/String;)V

    .line 422
    iget v7, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->radius:I

    int-to-double v7, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    iget v11, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->radius:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget v11, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextHeight:I

    int-to-double v11, v11

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    sub-double/2addr v7, v9

    double-to-float v7, v7

    const/4 v8, 0x0

    .line 424
    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 425
    iget v8, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->firstLineY:F

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_9

    iget v8, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextHeight:I

    int-to-float v9, v8

    add-float/2addr v9, v7

    iget v7, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->secondLineY:F

    cmpg-float v7, v9, v7

    if-gtz v7, :cond_9

    .line 427
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measuredWidth:I

    invoke-virtual {p1, v1, v1, v3, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 429
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->CENTER_CONTENT_OFFSET:F

    sub-float/2addr v3, v4

    .line 430
    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFirstItemDrawX:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 432
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->preCurrentIndex:I

    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemsVisible:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->selectedItem:I

    goto :goto_4

    .line 435
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 436
    iget v7, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measuredWidth:I

    iget v8, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    float-to-int v8, v8

    invoke-virtual {p1, v1, v1, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/high16 v7, 0x3f800000    # 1.0f

    .line 437
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 438
    invoke-direct {p0, v6}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->setOutPaintStyle(F)V

    .line 440
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFirstItemDrawX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextHeight:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 443
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 444
    iget-object v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_6

    .line 415
    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_b
    return-void
.end method

.method public final onItemSelected()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->onItemSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$1;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$1;-><init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 515
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 516
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 517
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 518
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 519
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->reMeasure()V

    .line 520
    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->maxTextWidth:I

    .line 521
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measuredHeight:I

    .line 523
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 524
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 525
    invoke-direct {p0, p1, v0, v2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measureSize(III)I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measuredWidth:I

    .line 527
    invoke-direct {p0, p2, v1, v3}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->measureSize(III)I

    move-result p2

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
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

    .line 606
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 607
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mDrawnRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingTop()I

    move-result p3

    .line 608
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 607
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 609
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mDrawnRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFirstItemDrawX:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 535
    iget v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    mul-float/2addr v1, v2

    .line 536
    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    invoke-interface {v2}, Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;->getItemsCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    mul-float/2addr v2, v4

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    if-nez v0, :cond_5

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 581
    iget v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->radius:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->radius:I

    int-to-double v7, v2

    mul-double/2addr v0, v7

    .line 583
    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    float-to-double v7, v4

    add-double/2addr v0, v7

    float-to-double v7, v2

    div-double/2addr v0, v7

    double-to-int v0, v0

    .line 584
    iget v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    rem-float/2addr v1, v2

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    .line 586
    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemsVisible:I

    div-int/2addr v4, v6

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mOffset:I

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->startTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x78

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 590
    sget-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->DAGGLE:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->smoothScroll(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;)V

    goto :goto_0

    .line 593
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->CLICK:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->smoothScroll(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;)V

    goto :goto_0

    .line 547
    :cond_1
    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->previousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v0, v4

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->previousY:F

    .line 549
    iget v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    .line 552
    iget-boolean v6, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    if-nez v6, :cond_5

    .line 553
    iget v6, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v8, v6, v7

    sub-float v8, v4, v8

    cmpg-float v1, v8, v1

    const/4 v8, 0x0

    if-gez v1, :cond_2

    cmpg-float v1, v0, v8

    if-ltz v1, :cond_3

    :cond_2
    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    cmpl-float v1, v6, v2

    if-lez v1, :cond_5

    cmpl-float v1, v0, v8

    if-lez v1, :cond_5

    :cond_3
    sub-float/2addr v4, v0

    .line 556
    iput v4, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    move v5, v3

    goto :goto_0

    .line 541
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->startTime:J

    .line 542
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->cancelFuture()V

    .line 543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->previousY:F

    :cond_5
    :goto_0
    if-nez v5, :cond_6

    .line 598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    .line 599
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->invalidate()V

    :cond_6
    return v3
.end method

.method public final scrollBy(F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocityY"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->cancelFuture()V

    .line 267
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/geely/toolchain/hmi/view/pickerview/timer/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/timer/InertiaTimerTask;-><init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;F)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final setAdapter(Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->adapter:Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;

    .line 308
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->reMeasure()V

    .line 309
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->invalidate()V

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentItem"
        }
    .end annotation

    .line 296
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->selectedItem:I

    .line 297
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->initPosition:I

    const/4 p1, 0x0

    .line 298
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    .line 299
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->invalidate()V

    return-void
.end method

.method public final setCyclic(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cyclic"
        }
    .end annotation

    .line 283
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->isLoop:Z

    return-void
.end method

.method public setItemsVisibleCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibleCount"
        }
    .end annotation

    .line 313
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 316
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemsVisible:I

    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineSpacingMultiplier"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 631
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->lineSpacingMultiplier:F

    .line 632
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->judgeLineSpace()V

    :cond_0
    return-void
.end method

.method public final setOnItemSelectedListener(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "OnItemSelectedListener"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->onItemSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;

    return-void
.end method

.method public setTextColorCenter(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColorCenter"
        }
    .end annotation

    .line 624
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textColorCenter:I

    .line 625
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextColorOut(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColorOut"
        }
    .end annotation

    .line 619
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textColorOut:I

    .line 620
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I

    .line 289
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintOuterText:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 290
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->paintCenterText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setTotalScrollY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalScrollY"
        }
    .end annotation

    .line 645
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    return-void
.end method

.method public smoothScroll(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->cancelFuture()V

    .line 253
    sget-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->FLING:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->DAGGLE:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    if-ne p1, v0, :cond_2

    .line 254
    :cond_0
    iget p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->totalScrollY:F

    iget v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->itemHeight:F

    rem-float/2addr p1, v0

    add-float/2addr p1, v0

    rem-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mOffset:I

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 256
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mOffset:I

    goto :goto_0

    :cond_1
    neg-int p1, p1

    .line 258
    iput p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mOffset:I

    .line 262
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/geely/toolchain/hmi/view/pickerview/timer/SmoothScrollTimerTask;

    iget p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mOffset:I

    invoke-direct {v1, p0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/timer/SmoothScrollTimerTask;-><init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
