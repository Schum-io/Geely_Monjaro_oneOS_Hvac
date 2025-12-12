.class public Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;
.super Ljava/lang/Object;
.source "HmiScrollBindHelper.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;
.implements Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIME_OUT:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "HmiScrollBindHelper"

.field private static helper:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;


# instance fields
.field private handler:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;

.field private isUserSeeking:Z

.field process:I

.field private final scrollContent:Landroid/view/View;

.field private final scrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

.field private final seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;)V
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;-><init>(Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->handler:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;

    .line 39
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    .line 40
    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->scrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p2, p1}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->scrollContent:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->hideScroll()V

    return-void
.end method

.method public static bind(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;)Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;
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

    .line 51
    new-instance v0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    invoke-direct {v0, p0, p1}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;-><init>(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;)V

    sput-object v0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->helper:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    .line 52
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setOnSeekBarChangeListener(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar$OnSeekBarChangeListener;)V

    .line 53
    sget-object p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->helper:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    invoke-virtual {p1, p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->setScrollViewListener(Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;)V

    .line 54
    sget-object p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->helper:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;

    return-object p0
.end method

.method private getContentRange()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->scrollContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private getScrollRange()I
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->scrollContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->scrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hideScroll()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setVisibility(I)V

    return-void
.end method

.method private showScroll()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seekbar",
            "progress"
        }
    .end annotation

    .line 70
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged  progress-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->isUserSeeking:Z

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->handler:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;->reset()V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->scrollView:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->getScrollRange()I

    move-result v1

    mul-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x64

    invoke-virtual {p1, v0, p2}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->scrollTo(II)V

    return-void
.end method

.method public onScrollChanged(Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;IIII)V
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
            "scrollView",
            "x",
            "y",
            "oldx",
            "oldy"
        }
    .end annotation

    .line 94
    iget-boolean p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->isUserSeeking:Z

    if-eqz p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->showScroll()V

    .line 96
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->getScrollRange()I

    move-result p1

    if-eqz p1, :cond_1

    mul-int/lit8 p3, p3, 0x64

    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->getScrollRange()I

    move-result p1

    div-int/2addr p3, p1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 97
    :goto_0
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "seekBar onProgressChanged: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->seekBar:Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    invoke-virtual {p1, p3}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekbar"
        }
    .end annotation

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->isUserSeeking:Z

    .line 81
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->handler:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;->clearAll()V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekbar"
        }
    .end annotation

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->isUserSeeking:Z

    .line 88
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper;->handler:Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/HmiScrollBindHelper$VisibleHandler;->reset()V

    return-void
.end method
