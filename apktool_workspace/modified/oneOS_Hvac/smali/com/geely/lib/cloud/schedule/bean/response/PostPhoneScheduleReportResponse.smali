.class public Lcom/geely/lib/cloud/schedule/bean/response/PostPhoneScheduleReportResponse;
.super Ljava/lang/Object;
.source "PostPhoneScheduleReportResponse.java"


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

    .line 8
    iget v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostPhoneScheduleReportResponse;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostPhoneScheduleReportResponse;->message:Ljava/lang/String;

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

    .line 12
    iput p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostPhoneScheduleReportResponse;->code:I

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

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostPhoneScheduleReportResponse;->message:Ljava/lang/String;

    return-void
.end method
