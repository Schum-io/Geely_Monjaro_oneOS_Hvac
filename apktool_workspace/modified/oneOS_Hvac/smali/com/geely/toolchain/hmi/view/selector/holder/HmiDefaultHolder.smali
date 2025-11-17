.class public abstract Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;
.super Ljava/lang/Object;
.source "HmiDefaultHolder.java"


# instance fields
.field public mLoadingFailView:Landroid/view/View;

.field public mNetworkExceptionView:Landroid/view/View;

.field public mSearchWithoutView:Landroid/view/View;

.field public mWithoutPhotoOrVideoView:Landroid/view/View;


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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->setNetworkException(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mNetworkExceptionView:Landroid/view/View;

    .line 25
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->setSearchWithout(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mSearchWithoutView:Landroid/view/View;

    .line 26
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->setWithoutPhotoOrVideo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mWithoutPhotoOrVideoView:Landroid/view/View;

    .line 27
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->setLoadingFail(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/selector/holder/HmiDefaultHolder;->mLoadingFailView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract setLoadingFail(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract setNetworkException(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract setSearchWithout(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract setWithoutPhotoOrVideo(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method
