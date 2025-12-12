.class public Lcom/geely/hvac/trackballview/TrackballLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TrackballLinearLayout.java"


# instance fields
.field trackballHelper:Lcom/geely/hvac/util/TrackballHelper;


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

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/trackballview/TrackballLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/trackballview/TrackballLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance v0, Lcom/geely/hvac/util/TrackballHelper;

    invoke-direct {v0}, Lcom/geely/hvac/util/TrackballHelper;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/trackballview/TrackballLinearLayout;->trackballHelper:Lcom/geely/hvac/util/TrackballHelper;

    .line 25
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/geely/hvac/util/TrackballHelper;->resolveAttrs(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
