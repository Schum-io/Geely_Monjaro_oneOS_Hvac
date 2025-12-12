.class Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse$Data;
.super Ljava/lang/Object;
.source "GetMaintainHistoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private maintenances:Lcom/geely/lib/cloud/maintain/bean/Maintenances;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse;

.field private totalCount:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaintenances()Lcom/geely/lib/cloud/maintain/bean/Maintenances;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse$Data;->maintenances:Lcom/geely/lib/cloud/maintain/bean/Maintenances;

    return-object v0
.end method

.method public getTotalCount()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse$Data;->totalCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public setMaintenances(Lcom/geely/lib/cloud/maintain/bean/Maintenances;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenances"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse$Data;->maintenances:Lcom/geely/lib/cloud/maintain/bean/Maintenances;

    return-void
.end method

.method public setTotalCount(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalCount"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetMaintainHistoryResponse$Data;->totalCount:Ljava/lang/Integer;

    return-void
.end method
