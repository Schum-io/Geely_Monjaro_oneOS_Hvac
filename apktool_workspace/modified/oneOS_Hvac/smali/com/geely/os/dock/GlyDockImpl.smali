.class Lcom/geely/os/dock/GlyDockImpl;
.super Ljava/lang/Object;
.source "GlyDockImpl.java"

# interfaces
.implements Lcom/geely/os/dock/IGlyDock;


# instance fields
.field private final mDock:Lcom/ecarx/xui/adaptapi/dock/IDock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/dock/Dock;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/dock/IDock;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/dock/GlyDockImpl;->mDock:Lcom/ecarx/xui/adaptapi/dock/IDock;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/dock/IGlyDock;
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

    .line 20
    new-instance v0, Lcom/geely/os/dock/GlyDockImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/dock/GlyDockImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public handOverDock(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHide"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/geely/os/dock/GlyDockImpl;->mDock:Lcom/ecarx/xui/adaptapi/dock/IDock;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/dock/IDock;->handOverDock(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDockCustomAppIcon(I[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "image"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/geely/os/dock/GlyDockImpl;->mDock:Lcom/ecarx/xui/adaptapi/dock/IDock;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/dock/IDock;->setDockCustomAppIcon(I[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDockCustomHvacIcon(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/geely/os/dock/GlyDockImpl;->mDock:Lcom/ecarx/xui/adaptapi/dock/IDock;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/dock/IDock;->setDockCustomHvacIcon(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
