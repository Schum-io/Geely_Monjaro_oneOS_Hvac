.class public Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;
.super Ljava/lang/Object;
.source "PostMachineAskScheduleResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;

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

    .line 23
    iget v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;->code:I

    return v0
.end method

.method public getData()Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;->data:Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;->message:Ljava/lang/String;

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

    .line 27
    iput p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;->code:I

    return-void
.end method

.method public setData(Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;->data:Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;

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

    .line 35
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;->message:Ljava/lang/String;

    return-void
.end method
