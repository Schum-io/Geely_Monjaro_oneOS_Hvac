.class public Lcom/geely/toolchain/hmi/view/HmiDefaultView;
.super Landroid/widget/LinearLayout;
.source "HmiDefaultView.java"


# instance fields
.field private final KEY_DEFAULT_NO_VIEW:I

.field private final KEY_LOADING_FAIL:I

.field private final KEY_NET_WORK_EXCEPTION:I

.field private final KEY_SEARCH_WITHOUT:I

.field private final KEY_WITHOUT_PHOTO_OR_VIDEO:I

.field private mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_NET_WORK_EXCEPTION:I

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_SEARCH_WITHOUT:I

    const/4 p1, 0x2

    .line 20
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_WITHOUT_PHOTO_OR_VIDEO:I

    const/4 p1, 0x3

    .line 21
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_LOADING_FAIL:I

    const/4 p1, 0x4

    .line 22
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_DEFAULT_NO_VIEW:I

    .line 23
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

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

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_NET_WORK_EXCEPTION:I

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_SEARCH_WITHOUT:I

    const/4 p1, 0x2

    .line 20
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_WITHOUT_PHOTO_OR_VIDEO:I

    const/4 p1, 0x3

    .line 21
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_LOADING_FAIL:I

    const/4 p1, 0x4

    .line 22
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->KEY_DEFAULT_NO_VIEW:I

    .line 23
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    return-void
.end method

.method private initView()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mNetworkExceptionView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->addView(Landroid/view/View;I)V

    .line 41
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mSearchWithoutView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->addView(Landroid/view/View;I)V

    .line 42
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mWithoutPhotoOrVideoView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->addView(Landroid/view/View;I)V

    .line 43
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mLoadingFailView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->addView(Landroid/view/View;I)V

    .line 44
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->setShowOrHide()V

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v1, v1, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mNetworkExceptionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v1, v1, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mSearchWithoutView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v1, v1, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mLoadingFailView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v1, v1, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mWithoutPhotoOrVideoView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setShowOrHide()V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mNetworkExceptionView:Landroid/view/View;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mSearchWithoutView:Landroid/view/View;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mWithoutPhotoOrVideoView:Landroid/view/View;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mLoadingFailView:Landroid/view/View;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 79
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "OtherView::\u8bf7\u5148\u8bbe\u7f6eOtherHolder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setHimDefaultView(Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mHolder:Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;

    .line 36
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->initView()V

    return-void
.end method

.method public showLoadingFailView()V
    .locals 2

    .line 53
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 54
    :cond_0
    iput v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    .line 55
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->setShowOrHide()V

    return-void
.end method

.method public showNetworkExceptionView()V
    .locals 1

    .line 65
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    .line 67
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->setShowOrHide()V

    return-void
.end method

.method public showSearchWithOutView()V
    .locals 2

    .line 59
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 60
    :cond_0
    iput v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    .line 61
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->setShowOrHide()V

    return-void
.end method

.method public showWithoutPhotoOrVideoView()V
    .locals 2

    .line 72
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    iput v1, p0, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->mViewType:I

    .line 74
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/HmiDefaultView;->setShowOrHide()V

    return-void
.end method
