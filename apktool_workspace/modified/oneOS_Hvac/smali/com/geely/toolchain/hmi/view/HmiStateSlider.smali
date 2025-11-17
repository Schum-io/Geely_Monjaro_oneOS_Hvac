.class public Lcom/geely/toolchain/hmi/view/HmiStateSlider;
.super Landroid/widget/FrameLayout;
.source "HmiStateSlider.java"


# static fields
.field public static final DEFAULT_MAX:I = 0x64

.field public static final TAG:Ljava/lang/String; = "HmiStateSlider"


# instance fields
.field private iconOffDrawable:Landroid/graphics/drawable/Drawable;

.field private iconOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mIcon:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->init(Landroid/util/AttributeSet;II)V

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

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    invoke-direct {p0, p2, p1, p1}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->init(Landroid/util/AttributeSet;II)V

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

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p2, p3, p1}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    invoke-direct {p0, p2, p3, p4}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/view/HmiStateSlider;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->setIconState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_state_slider:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget p2, Lcom/geely/toolchain/hmi/R$id;->seekBar:I

    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mSeekBar:Landroid/widget/SeekBar;

    .line 74
    sget p2, Lcom/geely/toolchain/hmi/R$id;->iv_icon:I

    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateSlider:[I

    .line 79
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateSlider_hmi_slider_progress:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 82
    sget p3, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateSlider_hmi_slider_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 83
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateSlider_hmi_slider_icon_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->iconOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiStateSlider_hmi_slider_icon_off:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->iconOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->initSeekBar(II)V

    .line 87
    invoke-direct {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->setIconState(I)V

    return-void
.end method

.method private initSeekBar(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "max"
        }
    .end annotation

    const-string v0, "HmiStateSlider"

    const-string v1, "initSeekBar: "

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 94
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 95
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mSeekBar:Landroid/widget/SeekBar;

    new-instance p2, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;

    invoke-direct {p2, p0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;-><init>(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setIconState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->iconOnDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->iconOnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->iconOffDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->iconOffDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSeekBarChangeListener"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->onSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method
