.class Lcom/geely/os/trackball/GlyTrackBallImpl;
.super Ljava/lang/Object;
.source "GlyTrackBallImpl.java"

# interfaces
.implements Lcom/geely/os/trackball/IGlyTrackBall;


# instance fields
.field private final glyTrackBallListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/trackball/IGlyTrackBallListener;",
            ">;"
        }
    .end annotation
.end field

.field private iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

.field private trackBallListener:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall$ITrackBallListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->glyTrackBallListeners:Landroid/util/ArraySet;

    .line 15
    new-instance v0, Lcom/geely/os/trackball/GlyTrackBallImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/trackball/GlyTrackBallImpl$1;-><init>(Lcom/geely/os/trackball/GlyTrackBallImpl;)V

    iput-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->trackBallListener:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall$ITrackBallListener;

    .line 63
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/trackball/TrackBall;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/trackball/GlyTrackBallImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->glyTrackBallListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/trackball/IGlyTrackBall;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 57
    new-instance v0, Lcom/geely/os/trackball/GlyTrackBallImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/trackball/GlyTrackBallImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getConnectState()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->getConnectState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackBallCursorAlpha()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->getTrackBallCursorAlpha()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackBallCursorStyle()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->getTrackBallCursorStyle()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackBallMediaType()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->getTrackBallMediaType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackBallSensitivity()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->getTrackBallSensitivity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackBallVideoType()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->getTrackBallVideoType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerTrackBallCallback(Lcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->glyTrackBallListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->trackBallListener:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall$ITrackBallListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->registerTrackBallCallback(Lcom/ecarx/xui/adaptapi/trackball/ITrackBall$ITrackBallListener;)V

    :cond_0
    return-void
.end method

.method public setTrackBallCursorAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->setTrackBallCursorAlpha(I)V

    :cond_0
    return-void
.end method

.method public setTrackBallCursorStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->setTrackBallCursorStyle(I)V

    :cond_0
    return-void
.end method

.method public setTrackBallMediaType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->setTrackBallMediaType(I)V

    :cond_0
    return-void
.end method

.method public setTrackBallSensitivity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->setTrackBallSensitivity(I)V

    :cond_0
    return-void
.end method

.method public setTrackBallVideoType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->setTrackBallVideoType(I)V

    :cond_0
    return-void
.end method

.method public unregisterTrackBallCallBack(Lcom/geely/os/trackball/IGlyTrackBallListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->glyTrackBallListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object p1, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->iTrackBall:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;

    iget-object v0, p0, Lcom/geely/os/trackball/GlyTrackBallImpl;->trackBallListener:Lcom/ecarx/xui/adaptapi/trackball/ITrackBall$ITrackBallListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/trackball/ITrackBall;->unregisterTrackBallCallBack(Lcom/ecarx/xui/adaptapi/trackball/ITrackBall$ITrackBallListener;)V

    :cond_0
    return-void
.end method
