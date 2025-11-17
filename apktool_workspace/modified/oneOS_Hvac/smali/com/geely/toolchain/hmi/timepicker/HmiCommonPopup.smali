.class public Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;
.super Ljava/lang/Object;
.source "HmiCommonPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    }
.end annotation


# instance fields
.field private mAnimationStyle:I

.field private mClipEnable:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIgnoreCheekPress:Z

.field private mInputMode:I

.field private mIsFocusable:Z

.field private mIsOutside:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mResLayoutId:I

.field private mSoftInputMode:I

.field private mTouchable:Z

.field private mWidth:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIsFocusable:Z

    .line 29
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIsOutside:Z

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mResLayoutId:I

    .line 33
    iput v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mAnimationStyle:I

    .line 35
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mClipEnable:Z

    const/4 v2, 0x0

    .line 36
    iput-boolean v2, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIgnoreCheekPress:Z

    .line 37
    iput v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mInputMode:I

    .line 39
    iput v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mSoftInputMode:I

    .line 40
    iput-boolean v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mTouchable:Z

    .line 44
    iput-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mWidth:I

    return p1
.end method

.method static synthetic access$1002(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mHeight:I

    return p1
.end method

.method static synthetic access$1102(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mSoftInputMode:I

    return p1
.end method

.method static synthetic access$1202(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mTouchable:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->build()Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIsFocusable:Z

    return p1
.end method

.method static synthetic access$302(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mResLayoutId:I

    return p1
.end method

.method static synthetic access$402(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$502(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIsOutside:Z

    return p1
.end method

.method static synthetic access$602(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mAnimationStyle:I

    return p1
.end method

.method static synthetic access$702(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mClipEnable:Z

    return p1
.end method

.method static synthetic access$802(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIgnoreCheekPress:Z

    return p1
.end method

.method static synthetic access$902(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mInputMode:I

    return p1
.end method

.method private apply(Landroid/widget/PopupWindow;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupWindow"
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mClipEnable:Z

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 116
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->setIgnoreCheekPress()V

    .line 119
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mInputMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 122
    :cond_1
    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mSoftInputMode:I

    if-eq v0, v1, :cond_2

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 131
    :cond_4
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mTouchable:Z

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    return-void
.end method

.method private build()Landroid/widget/PopupWindow;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mResLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mContentView:Landroid/view/View;

    .line 142
    :cond_0
    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mHeight:I

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mContentView:Landroid/view/View;

    iget v2, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mWidth:I

    iget v3, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mHeight:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mContentView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 147
    :goto_0
    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mAnimationStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, v0}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->apply(Landroid/widget/PopupWindow;)V

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIsFocusable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 154
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mIsOutside:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 157
    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mHeight:I

    if-nez v0, :cond_4

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 160
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mWidth:I

    .line 161
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mHeight:I

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 166
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mWidth:I

    return v0
.end method

.method public synthetic lambda$showAsDropDown$0$HmiCommonPopup(Landroid/view/View;IILandroid/view/View;)V
    .locals 0

    .line 64
    iget-object p4, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p4, :cond_0

    .line 65
    invoke-virtual {p4, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showAsDropDown$1$HmiCommonPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p2, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showAsDropDown$2$HmiCommonPopup(Landroid/view/View;IIILandroid/view/View;)V
    .locals 0

    .line 83
    iget-object p5, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p5, :cond_0

    .line 84
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showAtLocation$3$HmiCommonPopup(Landroid/view/View;IIILandroid/view/View;)V
    .locals 0

    .line 102
    iget-object p5, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p5, :cond_0

    .line 103
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs;

    invoke-direct {v1, p0, p1}, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs;-><init>(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public showAsDropDown(Landroid/view/View;II)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "xOff",
            "yOff"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo;-><init>(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public showAsDropDown(Landroid/view/View;III)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "xOff",
            "yOff",
            "gravity"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v7, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$Yblykh7NnqA02t98gaQbEF4PnB0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$Yblykh7NnqA02t98gaQbEF4PnB0;-><init>(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;III)V

    invoke-virtual {v0, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public showAtLocation(Landroid/view/View;III)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "gravity",
            "x",
            "y"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v7, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/geely/toolchain/hmi/timepicker/-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE;-><init>(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;III)V

    invoke-virtual {v0, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p0
.end method
