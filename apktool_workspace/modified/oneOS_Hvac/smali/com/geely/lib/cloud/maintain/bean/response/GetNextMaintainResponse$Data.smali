.class Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse$Data;
.super Ljava/lang/Object;
.source "GetNextMaintainResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private nestDistance:Ljava/lang/String;

.field private nextDate:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNestDistance()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse$Data;->nestDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getNextDate()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse$Data;->nextDate:Ljava/lang/String;

    return-object v0
.end method

.method public setNestDistance(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nestDistance"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse$Data;->nestDistance:Ljava/lang/String;

    return-void
.end method

.method public setNextDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextDate"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetNextMaintainResponse$Data;->nextDate:Ljava/lang/String;

    return-void
.end method
