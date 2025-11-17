.class public Lcom/geely/hvac/utils/AdaptUtil;
.super Ljava/lang/Object;
.source "AdaptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFunctionAvailable(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportState"
        }
    .end annotation

    .line 7
    sget v0, Lcom/geely/os/car/GlySupportStatus;->active:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/geely/os/car/GlySupportStatus;->notactive:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
