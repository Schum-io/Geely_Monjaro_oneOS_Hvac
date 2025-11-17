.class public final Lcom/geely/toolchain/hmi/view/pickerview/LoopViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


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

    .line 16
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/LoopViewGestureListener;->wheelView:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 22
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/LoopViewGestureListener;->wheelView:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    invoke-virtual {p1, p4}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->scrollBy(F)V

    const/4 p1, 0x1

    return p1
.end method
