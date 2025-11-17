.class public Lcom/geely/lib/cloud/usercenter/bean/request/QrCodePollingParam;
.super Ljava/lang/Object;
.source "QrCodePollingParam.java"


# instance fields
.field private terminalId:Ljava/lang/String;


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

    .line 8
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/request/QrCodePollingParam;->terminalId:Ljava/lang/String;

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

    .line 12
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/request/QrCodePollingParam;->terminalId:Ljava/lang/String;

    return-void
.end method
