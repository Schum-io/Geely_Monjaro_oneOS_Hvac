.class public Lcom/geely/os/wifiap/GlyApClient;
.super Ljava/lang/Object;
.source "GlyApClient.java"


# instance fields
.field private forbid:Z

.field private ip:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "ip",
            "mac"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApClient;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/os/wifiap/GlyApClient;->ip:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/geely/os/wifiap/GlyApClient;->mac:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApClient;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApClient;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApClient;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isForbid()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/geely/os/wifiap/GlyApClient;->forbid:Z

    return v0
.end method

.method public setForbid(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forbid"
        }
    .end annotation

    .line 52
    iput-boolean p1, p0, Lcom/geely/os/wifiap/GlyApClient;->forbid:Z

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApClient;->ip:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApClient;->mac:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApClient;->name:Ljava/lang/String;

    return-void
.end method
