.class public Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;
.super Ljava/lang/Object;
.source "GetLoginInfoRespone.java"


# instance fields
.field private code:I

.field private data:Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;

.field private message:Ljava/lang/String;

.field private success:Z


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
    iget v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->code:I

    return v0
.end method

.method public getData()Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->data:Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->success:Z

    return v0
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
    iput p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->code:I

    return-void
.end method

.method public setData(Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->data:Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;

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

    .line 30
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->message:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 38
    iput-boolean p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetLoginInfoRespone;->success:Z

    return-void
.end method
