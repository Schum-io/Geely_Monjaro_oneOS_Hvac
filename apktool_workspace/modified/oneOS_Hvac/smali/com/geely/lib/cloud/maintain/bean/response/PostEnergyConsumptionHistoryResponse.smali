.class public Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;
.super Ljava/lang/Object;
.source "PostEnergyConsumptionHistoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;->code:I

    return v0
.end method

.method public getData()Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 81
    iput p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;->code:I

    return-void
.end method

.method public setData(Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse$Data;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostEnergyConsumptionHistoryResponse;->message:Ljava/lang/String;

    return-void
.end method
