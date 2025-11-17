.class public Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;
.super Ljava/lang/Object;
.source "GetLastDateResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;

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

    .line 10
    iget v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;->code:I

    return v0
.end method

.method public getData()Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;->message:Ljava/lang/String;

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

    .line 14
    iput p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;->code:I

    return-void
.end method

.method public setData(Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;

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

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;->message:Ljava/lang/String;

    return-void
.end method
