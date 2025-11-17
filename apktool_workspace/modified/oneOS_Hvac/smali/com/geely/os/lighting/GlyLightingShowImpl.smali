.class Lcom/geely/os/lighting/GlyLightingShowImpl;
.super Ljava/lang/Object;
.source "GlyLightingShowImpl.java"

# interfaces
.implements Lcom/geely/os/lighting/IGlyLightingShow;


# instance fields
.field private iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

.field private iLightingShowWatcher:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowWatcher;

.field private final lightingShowWatchers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/lighting/IGlyLightingShowWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->lightingShowWatchers:Landroid/util/ArraySet;

    .line 16
    new-instance v0, Lcom/geely/os/lighting/GlyLightingShowImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/lighting/GlyLightingShowImpl$1;-><init>(Lcom/geely/os/lighting/GlyLightingShowImpl;)V

    iput-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShowWatcher:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowWatcher;

    .line 50
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/lighting/LightingShow;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/lighting/GlyLightingShowImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->lightingShowWatchers:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/lighting/IGlyLightingShow;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 56
    new-instance v0, Lcom/geely/os/lighting/GlyLightingShowImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/lighting/GlyLightingShowImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getLightShowFileDownloadReq()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->getLightShowFileDownloadReq()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLightingShowError()[I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->getLightingShowError()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getLightingShowInfo(I)[Lcom/geely/os/lighting/IGlyLightingShowInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_2

    .line 122
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->getLightingShowInfo(I)[Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 123
    array-length v0, p1

    if-lez v0, :cond_2

    .line 124
    array-length v0, p1

    new-array v0, v0, [Lcom/geely/os/lighting/IGlyLightingShowInfo;

    const/4 v1, 0x0

    .line 125
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 126
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 128
    new-instance v3, Lcom/geely/os/lighting/GlyLightingShowImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/geely/os/lighting/GlyLightingShowImpl$2;-><init>(Lcom/geely/os/lighting/GlyLightingShowImpl;Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;)V

    .line 164
    aput-object v3, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLightingShowMode()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->getLightingShowMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getLightingShowState()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->getLightingShowState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLightingShowType()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->getLightingShowType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getVehicleIpTable(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vehicleIpType"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->getVehicleIpTable(I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    return-object p1
.end method

.method public isLightingShowEnabled()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->isLightingShowEnabled()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0

    .line 68
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public isLightingShowFileDownload()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->isLightingShowFileDownload()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0

    .line 272
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public isWelcomeLightFileDownload()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->isWelcomeLightFileDownload()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0

    .line 280
    :cond_0
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    return v0
.end method

.method public registerLightingShowWatcher(Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->lightingShowWatchers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object p1, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShowWatcher:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowWatcher;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->registerLightingShowWatcher(Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowWatcher;)V

    :cond_0
    return-void
.end method

.method public sendIpMessage(ILjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ip",
            "cmdMsg"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->sendIpMessage(ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendLightingShowSource([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->sendLightingShowSource([B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendLightingShowSourceEnd()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->sendLightingShowSourceEnd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendLightingShowSourceStart()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->sendLightingShowSourceStart()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setLightShowFileDownloadResult(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->setLightShowFileDownloadResult(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLightShowFileRequestResult(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->setLightShowFileRequestResult(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLightingShowMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->setLightingShowMode(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLightingShowType(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->setLightingShowType(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startLightingShow()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->startLightingShow()V

    :cond_0
    return-void
.end method

.method public stopLightingShow()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->stopLightingShow()V

    :cond_0
    return-void
.end method

.method public unregisterLightingShowWatcher(Lcom/geely/os/lighting/IGlyLightingShowWatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watcher"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->lightingShowWatchers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object p1, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShow:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;

    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl;->iLightingShowWatcher:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowWatcher;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow;->unregisterLightingShowWatcher(Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowWatcher;)V

    :cond_0
    return-void
.end method
