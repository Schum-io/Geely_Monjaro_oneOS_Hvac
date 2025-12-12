.class public Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeStatusResponse;
.super Ljava/lang/Object;
.source "UserLoginQrcodeStatusResponse.java"


# instance fields
.field private qrCodeState:Ljava/lang/String;

.field private qrCodeUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQrCodeState()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeStatusResponse;->qrCodeState:Ljava/lang/String;

    return-object v0
.end method

.method public getQrCodeUUID()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeStatusResponse;->qrCodeUUID:Ljava/lang/String;

    return-object v0
.end method

.method public setQrCodeState(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrCodeState"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeStatusResponse;->qrCodeState:Ljava/lang/String;

    return-void
.end method

.method public setQrCodeUUID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrCodeUUID"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginQrcodeStatusResponse;->qrCodeUUID:Ljava/lang/String;

    return-void
.end method
