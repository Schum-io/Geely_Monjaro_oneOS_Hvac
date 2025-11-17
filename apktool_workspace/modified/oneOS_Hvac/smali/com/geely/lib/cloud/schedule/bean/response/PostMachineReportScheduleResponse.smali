.class public Lcom/geely/lib/cloud/schedule/bean/response/PostMachineReportScheduleResponse;
.super Ljava/lang/Object;
.source "PostMachineReportScheduleResponse.java"


# instance fields
.field private code:I

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

    .line 9
    iget v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineReportScheduleResponse;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineReportScheduleResponse;->message:Ljava/lang/String;

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

    .line 13
    iput p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineReportScheduleResponse;->code:I

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

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineReportScheduleResponse;->message:Ljava/lang/String;

    return-void
.end method
