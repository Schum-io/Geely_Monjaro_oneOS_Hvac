.class public Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;
.super Ljava/lang/Object;
.source "HmiScrollBindControl.java"


# instance fields
.field private mIsSeeking:Z

.field private final mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mScrollContent:Landroid/view/View;

.field private final mScrollView:Lcom/geely/toolchain/hmi/view/HmiDampScrollView;

.field private final mSeekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;


# direct methods
.method public constructor <init>(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDampScrollView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "scrollView"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;-><init>(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

    .line 63
    new-instance v1, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$2;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$2;-><init>(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)V

    iput-object v1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 23
    iput-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mSeekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    .line 24
    iput-object p2, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDampScrollView;

    const/4 v2, 0x0

    .line 25
    invoke-virtual {p2, v2}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mScrollContent:Landroid/view/View;

    .line 26
    invoke-virtual {p1, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 27
    invoke-virtual {p2, v0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mIsSeeking:Z

    return p0
.end method

.method static synthetic access$002(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)I
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->getContentRange()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mSeekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)Lcom/geely/toolchain/hmi/view/HmiDampScrollView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDampScrollView;

    return-object p0
.end method

.method public static bind(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDampScrollView;)Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "scrollView"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-direct {v0, p0, p1}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;-><init>(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDampScrollView;)V

    return-object v0
.end method

.method private getContentRange()I
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mSeekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    invoke-direct {p0}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->getScrollRange()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setMax(I)V

    .line 32
    iget-object v0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDampScrollView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method private getScrollRange()I
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mScrollContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mScrollView:Lcom/geely/toolchain/hmi/view/HmiDampScrollView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public hideScroll()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mSeekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setVisibility(I)V

    return-void
.end method

.method public showScroll()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->mSeekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setVisibility(I)V

    return-void
.end method
