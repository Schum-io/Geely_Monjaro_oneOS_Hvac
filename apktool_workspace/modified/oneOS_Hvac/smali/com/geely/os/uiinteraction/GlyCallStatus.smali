.class public Lcom/geely/os/uiinteraction/GlyCallStatus;
.super Ljava/lang/Object;
.source "GlyCallStatus.java"


# static fields
.field public static ERROR:I

.field public static FAILURE:I

.field public static NOT_IMPLEMENT:I

.field public static NOT_SUPPORTED:I

.field public static PARAM_ERROR:I

.field public static SUCCEED:I

.field public static TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-object v0, Lcom/ecarx/xui/adaptapi/CallStatus;->ERROR:Lcom/ecarx/xui/adaptapi/CallStatus;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/geely/os/uiinteraction/GlyCallStatus;->ERROR:I

    .line 15
    sget-object v0, Lcom/ecarx/xui/adaptapi/CallStatus;->FAILURE:Lcom/ecarx/xui/adaptapi/CallStatus;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/geely/os/uiinteraction/GlyCallStatus;->FAILURE:I

    .line 20
    sget-object v0, Lcom/ecarx/xui/adaptapi/CallStatus;->NOT_IMPLEMENT:Lcom/ecarx/xui/adaptapi/CallStatus;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/geely/os/uiinteraction/GlyCallStatus;->NOT_IMPLEMENT:I

    .line 25
    sget-object v0, Lcom/ecarx/xui/adaptapi/CallStatus;->NOT_SUPPORTED:Lcom/ecarx/xui/adaptapi/CallStatus;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/geely/os/uiinteraction/GlyCallStatus;->NOT_SUPPORTED:I

    .line 30
    sget-object v0, Lcom/ecarx/xui/adaptapi/CallStatus;->PARAM_ERROR:Lcom/ecarx/xui/adaptapi/CallStatus;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/geely/os/uiinteraction/GlyCallStatus;->PARAM_ERROR:I

    .line 35
    sget-object v0, Lcom/ecarx/xui/adaptapi/CallStatus;->SUCCEED:Lcom/ecarx/xui/adaptapi/CallStatus;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/geely/os/uiinteraction/GlyCallStatus;->SUCCEED:I

    .line 40
    sget-object v0, Lcom/ecarx/xui/adaptapi/CallStatus;->TIMEOUT:Lcom/ecarx/xui/adaptapi/CallStatus;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/geely/os/uiinteraction/GlyCallStatus;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueOf(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/CallStatus;->valueOf(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/CallStatus;->valueOf(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result p1

    return p1

    .line 51
    :cond_0
    sget p1, Lcom/geely/os/uiinteraction/GlyCallStatus;->ERROR:I

    return p1
.end method

.method public values()[I
    .locals 3

    .line 59
    invoke-static {}, Lcom/ecarx/xui/adaptapi/CallStatus;->values()[Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ecarx/xui/adaptapi/CallStatus;->values()[Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/ecarx/xui/adaptapi/CallStatus;->values()[Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 61
    :goto_0
    invoke-static {}, Lcom/ecarx/xui/adaptapi/CallStatus;->values()[Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 62
    invoke-static {}, Lcom/ecarx/xui/adaptapi/CallStatus;->values()[Lcom/ecarx/xui/adaptapi/CallStatus;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/CallStatus;->ordinal()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
