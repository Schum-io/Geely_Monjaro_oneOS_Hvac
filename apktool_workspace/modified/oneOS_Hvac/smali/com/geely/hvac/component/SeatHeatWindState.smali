.class public abstract Lcom/geely/hvac/component/SeatHeatWindState;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SeatHeatWindState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatHeatWindState"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;

.field private mDisableBgColor:I

.field private mDisableSrcId:I

.field private mEnable:Z

.field private mLevel:I

.field private mLevel0BgColor:I

.field private mLevel0SrcId:I

.field private mLevel1SrcId:I

.field private mLevel2SrcId:I

.field private mLevel3SrcId:I

.field private mOpenBgColor:I


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

    .line 45
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mDisableBgColor:I

    .line 23
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel0BgColor:I

    .line 24
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mOpenBgColor:I

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mEnable:Z

    .line 29
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel:I

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatHeatWindState;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mDisableBgColor:I

    .line 23
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel0BgColor:I

    .line 24
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mOpenBgColor:I

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mEnable:Z

    .line 29
    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel:I

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatHeatWindState;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mDisableBgColor:I

    .line 23
    iput p3, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel0BgColor:I

    .line 24
    iput p3, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mOpenBgColor:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mEnable:Z

    .line 29
    iput p3, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel:I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatHeatWindState;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatHeatWindState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "level"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/SeatHeatWindState;->setLevel(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatHeatWindState;Z)V
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

    .line 34
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/SeatHeatWindState;->setEnable(Z)V

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

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    invoke-static {v0, p0, v1}, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;

    if-nez p2, :cond_0

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/geely/hvac/R$styleable;->SeatHeatWindState:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mDisableSrcId:I

    .line 122
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mDisableBgColor:I

    const/4 v0, 0x3

    .line 123
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel0SrcId:I

    const/4 v0, 0x2

    .line 124
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel0BgColor:I

    const/4 v0, 0x7

    .line 125
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mOpenBgColor:I

    const/4 v0, 0x4

    .line 126
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel1SrcId:I

    const/4 v0, 0x5

    .line 127
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel2SrcId:I

    const/4 v0, 0x6

    .line 128
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel3SrcId:I

    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-direct {p0}, Lcom/geely/hvac/component/SeatHeatWindState;->updateUi()V

    return-void
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

    .line 61
    iput-boolean p1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mEnable:Z

    .line 63
    invoke-direct {p0}, Lcom/geely/hvac/component/SeatHeatWindState;->updateUi()V

    return-void
.end method

.method private setImg(Landroid/widget/ImageView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "img",
            "resId"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatHeatWindState;->parseLevel(I)I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel:I

    .line 68
    invoke-direct {p0}, Lcom/geely/hvac/component/SeatHeatWindState;->updateUi()V

    return-void
.end method

.method private updateUi()V
    .locals 3

    .line 81
    iget-boolean v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mEnable:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;->bg:Lcom/geely/hvac/component/ViewWithBackground;

    iget v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mDisableBgColor:I

    invoke-virtual {v0, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 83
    iget-object v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;->img:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mDisableSrcId:I

    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/SeatHeatWindState;->setImg(Landroid/widget/ImageView;I)V

    return-void

    .line 88
    :cond_0
    iget v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 102
    :cond_1
    iget v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel3SrcId:I

    .line 103
    iget v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mOpenBgColor:I

    goto :goto_0

    .line 98
    :cond_2
    iget v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel2SrcId:I

    .line 99
    iget v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mOpenBgColor:I

    goto :goto_0

    .line 94
    :cond_3
    iget v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel1SrcId:I

    .line 95
    iget v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mOpenBgColor:I

    goto :goto_0

    .line 90
    :cond_4
    iget v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel0SrcId:I

    .line 91
    iget v0, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mLevel0BgColor:I

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;->img:Lcom/geely/toolchain/hmi/view/HmiImageView;

    invoke-direct {p0, v2, v1}, Lcom/geely/hvac/component/SeatHeatWindState;->setImg(Landroid/widget/ImageView;I)V

    .line 109
    iget-object v1, p0, Lcom/geely/hvac/component/SeatHeatWindState;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutSeatHeatWindStateBinding;->bg:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v1, v0}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    return-void
.end method


# virtual methods
.method protected abstract parseLevel(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method
