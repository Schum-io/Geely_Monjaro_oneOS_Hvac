.class public Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder;
.super Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;
.source "HmiViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder$RetryBtnListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder$RetryBtnListener;


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

    .line 20
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic lambda$setNetworkException$0$HmiViewHolder(Landroid/view/View;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder;->mListener:Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder$RetryBtnListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder$RetryBtnListener;->onListener()V

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setLoadingFail(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_loading_fail:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setNetworkException(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_net_work_exception:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/view/selector/holder/-$$Lambda$HmiViewHolder$qc-6lKCeFgBOqlkvV39bqsENmus;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/view/selector/holder/-$$Lambda$HmiViewHolder$qc-6lKCeFgBOqlkvV39bqsENmus;-><init>(Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method public setOnRetryClickListener(Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder$RetryBtnListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder;->mListener:Lcom/geely/toolchain/hmi/view/selector/holder/HmiViewHolder$RetryBtnListener;

    return-void
.end method

.method public setSearchWithout(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_search_without:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setWithoutPhotoOrVideo(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_without_photo_or_video:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
