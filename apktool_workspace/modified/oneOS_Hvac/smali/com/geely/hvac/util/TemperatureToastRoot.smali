.class public Lcom/geely/hvac/util/TemperatureToastRoot;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TemperatureToastRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;
    }
.end annotation


# instance fields
.field private mOnTouchListener:Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;


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
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

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

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToastRoot;->mOnTouchListener:Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;->onTouch()V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setTouchListener(Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchListener"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/hvac/util/TemperatureToastRoot;->mOnTouchListener:Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;

    return-void
.end method
