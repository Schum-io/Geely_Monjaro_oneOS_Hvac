.class public Lcom/geely/lib/cloud/membercenter/bean/response/QrCodeRequestVO;
.super Ljava/lang/Object;
.source "QrCodeRequestVO.java"


# instance fields
.field expireAt:J

.field private qrcodeUrl:Ljava/lang/String;

.field private qruuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireAt()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QrCodeRequestVO;->expireAt:J

    return-wide v0
.end method

.method public getQrcodeUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QrCodeRequestVO;->qrcodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQruuid()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QrCodeRequestVO;->qruuid:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireAt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expireAt"
        }
    .end annotation

    .line 19
    iput-wide p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QrCodeRequestVO;->expireAt:J

    return-void
.end method

.method public setQrcodeUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrcodeUrl"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QrCodeRequestVO;->qrcodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setQruuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qruuid"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/QrCodeRequestVO;->qruuid:Ljava/lang/String;

    return-void
.end method
