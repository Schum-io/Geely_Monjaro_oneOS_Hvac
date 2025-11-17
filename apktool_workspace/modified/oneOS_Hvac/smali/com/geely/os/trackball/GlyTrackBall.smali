.class public Lcom/geely/os/trackball/GlyTrackBall;
.super Ljava/lang/Object;
.source "GlyTrackBall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/trackball/IGlyTrackBall;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/geely/os/trackball/GlyTrackBallImpl;->create(Landroid/content/Context;)Lcom/geely/os/trackball/IGlyTrackBall;

    move-result-object p0

    return-object p0
.end method
