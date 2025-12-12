.class public Lcom/geely/os/wifiap/GlyApHost;
.super Ljava/lang/Object;
.source "GlyApHost.java"


# static fields
.field public static final AP_BAND_2GHZ:I = 0x0

.field public static final AP_BAND_5GHZ:I = 0x1


# instance fields
.field private apName:Ljava/lang/String;

.field private frequency:I

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/geely/os/wifiap/GlyApHost;->frequency:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "psw"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/geely/os/wifiap/GlyApHost;->frequency:I

    .line 27
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApHost;->apName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/geely/os/wifiap/GlyApHost;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "psw",
            "frequency"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/geely/os/wifiap/GlyApHost;->frequency:I

    .line 32
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApHost;->apName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/geely/os/wifiap/GlyApHost;->password:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/geely/os/wifiap/GlyApHost;->frequency:I

    return-void
.end method


# virtual methods
.method public getApName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHost;->apName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/geely/os/wifiap/GlyApHost;->frequency:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/geely/os/wifiap/GlyApHost;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setApName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apName"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApHost;->apName:Ljava/lang/String;

    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .line 58
    iput p1, p0, Lcom/geely/os/wifiap/GlyApHost;->frequency:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/geely/os/wifiap/GlyApHost;->password:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlyApHost{apName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/os/wifiap/GlyApHost;->apName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", password=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/os/wifiap/GlyApHost;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/os/wifiap/GlyApHost;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
