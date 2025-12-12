.class public Lcom/geely/os/car/GlySupportStatus;
.super Ljava/lang/Object;
.source "GlySupportStatus.java"


# static fields
.field public static active:I = 0x0

.field public static error:I = 0x3

.field public static notactive:I = 0x1

.field public static notavailable:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 24
    sget v0, Lcom/geely/os/car/GlySupportStatus;->active:I

    if-ne p0, v0, :cond_0

    const-string p0, "active"

    return-object p0

    .line 26
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->notactive:I

    if-ne p0, v0, :cond_1

    const-string p0, "notactive"

    return-object p0

    .line 28
    :cond_1
    sget v0, Lcom/geely/os/car/GlySupportStatus;->notavailable:I

    if-ne p0, v0, :cond_2

    const-string p0, "notavailable"

    return-object p0

    :cond_2
    const-string p0, "error"

    return-object p0
.end method
