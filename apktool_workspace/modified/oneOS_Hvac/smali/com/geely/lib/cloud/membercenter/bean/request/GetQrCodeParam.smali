.class public Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;
.super Ljava/lang/Object;
.source "GetQrCodeParam.java"


# instance fields
.field private terminalId:Ljava/lang/String;

.field private terminalLanguage:Ljava/lang/String;

.field private terminalRomVersion:Ljava/lang/String;

.field private terminalSoftwareVersion:Ljava/lang/String;

.field private vehicleModel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTerminalId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalId:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalLanguage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalRomVersion()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalRomVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleModel()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->vehicleModel:Ljava/lang/String;

    return-object v0
.end method

.method public setTerminalId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalId"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalId:Ljava/lang/String;

    return-void
.end method

.method public setTerminalLanguage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalLanguage"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalLanguage:Ljava/lang/String;

    return-void
.end method

.method public setTerminalRomVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalRomVersion"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalRomVersion:Ljava/lang/String;

    return-void
.end method

.method public setTerminalSoftwareVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalSoftwareVersion"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->terminalSoftwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setVehicleModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleModel"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/request/GetQrCodeParam;->vehicleModel:Ljava/lang/String;

    return-void
.end method
