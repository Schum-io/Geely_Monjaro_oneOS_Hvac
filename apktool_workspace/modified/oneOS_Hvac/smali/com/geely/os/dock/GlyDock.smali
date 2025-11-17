.class public Lcom/geely/os/dock/GlyDock;
.super Ljava/lang/Object;
.source "GlyDock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/dock/IGlyDock;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/geely/os/dock/GlyDockImpl;->create(Landroid/content/Context;)Lcom/geely/os/dock/IGlyDock;

    move-result-object p0

    return-object p0
.end method
