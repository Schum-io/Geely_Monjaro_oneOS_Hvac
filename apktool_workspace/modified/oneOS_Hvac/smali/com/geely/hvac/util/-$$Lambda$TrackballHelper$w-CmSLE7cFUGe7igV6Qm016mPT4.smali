.class public final synthetic Lcom/geely/hvac/util/-$$Lambda$TrackballHelper$w-CmSLE7cFUGe7igV6Qm016mPT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/util/TrackballHelper;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/util/TrackballHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/util/-$$Lambda$TrackballHelper$w-CmSLE7cFUGe7igV6Qm016mPT4;->f$0:Lcom/geely/hvac/util/TrackballHelper;

    iput-object p2, p0, Lcom/geely/hvac/util/-$$Lambda$TrackballHelper$w-CmSLE7cFUGe7igV6Qm016mPT4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/util/-$$Lambda$TrackballHelper$w-CmSLE7cFUGe7igV6Qm016mPT4;->f$0:Lcom/geely/hvac/util/TrackballHelper;

    iget-object v1, p0, Lcom/geely/hvac/util/-$$Lambda$TrackballHelper$w-CmSLE7cFUGe7igV6Qm016mPT4;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/geely/hvac/util/TrackballHelper;->lambda$resolveAttrs$0$TrackballHelper(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
