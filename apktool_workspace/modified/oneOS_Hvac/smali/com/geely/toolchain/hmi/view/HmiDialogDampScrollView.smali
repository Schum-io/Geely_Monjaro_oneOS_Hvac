.class public Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;
.super Lcom/geely/toolchain/hmi/view/HmiDampScrollView;
.source "HmiDialogDampScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;,
        Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiDialogDampScrollView"


# instance fields
.field private isScrolledToBottom:Z

.field private isScrolledToTop:Z

.field private mMaxHeight:I

.field private mSmartScrollChangedListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;

.field public scrollViewListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;


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

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->scrollViewListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;

    .line 30
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiDialogDampScrollView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiDialogDampScrollView_hmiMaxHeight:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mMaxHeight:I

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private notifyScrollChangedListeners()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mSmartScrollChangedListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;

    if-eqz v0, :cond_2

    .line 89
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;->onTop()V

    goto :goto_0

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mSmartScrollChangedListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;->onBottom()V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mSmartScrollChangedListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;->onMiddle()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getHmiMaxHeight()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mMaxHeight:I

    return v0
.end method

.method public isScrolledToBottom()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    return v0
.end method

.method public isScrolledToTop()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
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

    .line 112
    iget p2, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mMaxHeight:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 113
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollX",
            "scrollY",
            "clampedX",
            "clampedY"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->onOverScrolled(IIZZ)V

    const-string p1, "HmiDialogDampScrollView"

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 51
    iput-boolean p4, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    .line 52
    iput-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onOverScrolled isScrolledToTop:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_0
    iput-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    .line 56
    iput-boolean p4, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onOverScrolled isScrolledToBottom:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->notifyScrollChangedListeners()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->onScrollChanged(IIII)V

    .line 65
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->scrollViewListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 66
    invoke-interface/range {v0 .. v5}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;->onScrollChanged(Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;IIII)V

    .line 69
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x9

    if-ge p1, p2, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getScrollY()I

    move-result p1

    const-string p2, "HmiDialogDampScrollView"

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p1, :cond_1

    .line 71
    iput-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    .line 72
    iput-boolean p4, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScrollChanged isScrolledToTop:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p4}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 75
    iput-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    .line 76
    iput-boolean p4, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScrollChanged isScrolledToBottom:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p3, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_2
    iput-boolean p4, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToTop:Z

    .line 80
    iput-boolean p4, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->isScrolledToBottom:Z

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->notifyScrollChangedListeners()V

    :cond_3
    return-void
.end method

.method public setHmiMaxHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxHeight"
        }
    .end annotation

    .line 117
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mMaxHeight:I

    return-void
.end method

.method public setScanScrollChangedListener(Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smartScrollChangedListener"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->mSmartScrollChangedListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ISmartScrollChangedListener;

    return-void
.end method

.method public setScrollViewListener(Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollViewListener"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView;->scrollViewListener:Lcom/geely/toolchain/hmi/view/HmiDialogDampScrollView$ScrollViewListener;

    return-void
.end method
