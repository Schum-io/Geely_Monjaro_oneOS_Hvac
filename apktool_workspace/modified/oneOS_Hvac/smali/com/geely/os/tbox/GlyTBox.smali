.class public Lcom/geely/os/tbox/GlyTBox;
.super Ljava/lang/Object;
.source "GlyTBox.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/tbox/IGlyTBox;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/geely/os/tbox/GlyTBoxImpl;->create(Landroid/content/Context;)Lcom/geely/os/tbox/IGlyTBox;

    move-result-object p0

    return-object p0
.end method
