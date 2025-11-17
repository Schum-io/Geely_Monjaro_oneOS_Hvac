.class public Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;
.super Ljava/lang/Object;
.source "UserLoginQrcodeResponse.java"


# instance fields
.field private expireAt:I

.field private qrCodeUrl:Ljava/lang/String;

.field private qrUuid:Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireAt()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->expireAt:I

    return v0
.end method

.method public getQrCodeUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->qrCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQrUuid()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->qrUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireAt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expireAt"
        }
    .end annotation

    .line 31
    iput p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->expireAt:I

    return-void
.end method

.method public setQrCodeUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrCodeUrl"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->qrCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setQrUuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrUuid"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->qrUuid:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeResponse;->requestId:Ljava/lang/String;

    return-void
.end method
