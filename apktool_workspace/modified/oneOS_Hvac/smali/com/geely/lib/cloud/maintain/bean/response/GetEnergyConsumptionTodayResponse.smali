.class public Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;
.super Ljava/lang/Object;
.source "GetEnergyConsumptionTodayResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;->code:I

    return v0
.end method

.method public getData()Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;->message:Ljava/lang/String;

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

    .line 61
    iput p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;->code:I

    return-void
.end method

.method public setData(Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse$Data;

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

    .line 69
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetEnergyConsumptionTodayResponse;->message:Ljava/lang/String;

    return-void
.end method
