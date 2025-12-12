.class public Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;
.super Ljava/lang/Object;
.source "QRCodeStatusVO.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private qrCodeStatus:Ljava/lang/String;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getQrCodeStatus()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->qrCodeStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatarUrl"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayName"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setQrCodeStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrCodeStatus"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->qrCodeStatus:Ljava/lang/String;

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

    .line 46
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QRCodeStatusVO;->requestId:Ljava/lang/String;

    return-void
.end method
