.class public Lcom/geely/os/ota/GlyOTA;
.super Ljava/lang/Object;
.source "GlyOTA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/ota/IGlyOTA;
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
    invoke-static {p0}, Lcom/geely/os/ota/GlyOTAImpl;->create(Landroid/content/Context;)Lcom/geely/os/ota/IGlyOTA;

    move-result-object p0

    return-object p0
.end method
