.class public Lcom/geely/os/bt/GlyBtExtension;
.super Ljava/lang/Object;
.source "GlyBtExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtension(Landroid/content/Context;)Lcom/geely/os/bt/IGlyBtExtension;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->create(Landroid/content/Context;)Lcom/geely/os/bt/IGlyBtExtension;

    move-result-object p0

    return-object p0
.end method
