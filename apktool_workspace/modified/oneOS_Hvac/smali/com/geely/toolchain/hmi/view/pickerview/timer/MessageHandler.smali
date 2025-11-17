.class public final Lcom/geely/toolchain/hmi/view/pickerview/timer/MessageHandler;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field public static final WHAT_INVALIDATE_LOOP_VIEW:I = 0x3e8

.field public static final WHAT_ITEM_SELECTED:I = 0xbb8

.field public static final WHAT_SMOOTH_SCROLL:I = 0x7d0


# instance fields
.field private final wheelView:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;


# direct methods
.method public constructor <init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wheelView"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/timer/MessageHandler;->wheelView:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/timer/MessageHandler;->wheelView:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->onItemSelected()V

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/timer/MessageHandler;->wheelView:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    sget-object v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;->FLING:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->smoothScroll(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$ACTION;)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/timer/MessageHandler;->wheelView:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->invalidate()V

    :goto_0
    return-void
.end method
