.class Lcom/geely/os/ota/GlyOTAImpl;
.super Ljava/lang/Object;
.source "GlyOTAImpl.java"

# interfaces
.implements Lcom/geely/os/ota/IGlyOTA;


# instance fields
.field private final mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

.field private final otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

.field private sessionCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/ota/IGlyOtaSessionCallback;",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->sessionCallbacks:Landroid/util/ArraySet;

    .line 36
    new-instance v0, Lcom/geely/os/ota/GlyOTAImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/ota/GlyOTAImpl$1;-><init>(Lcom/geely/os/ota/GlyOTAImpl;)V

    iput-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    .line 33
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/ota/OTA;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/ota/OTA;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/ota/GlyOTAImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/ota/GlyOTAImpl;->sessionCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/ota/GlyOTAImpl;)Lcom/ecarx/xui/adaptapi/ota/OTA;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/ota/IGlyOTA;
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

    .line 27
    new-instance v0, Lcom/geely/os/ota/GlyOTAImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/ota/GlyOTAImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getOtaSession(Lcom/ecarx/xui/adaptapi/ota/IOtaSession;)Lcom/geely/os/ota/IGlyOtaSession;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 205
    new-instance v0, Lcom/geely/os/ota/GlyOTAImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/ota/GlyOTAImpl$2;-><init>(Lcom/geely/os/ota/GlyOTAImpl;Lcom/ecarx/xui/adaptapi/ota/IOtaSession;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getOtaBaseSysVersionCode()I
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/ota/OTA;->getOtaBaseSysVersionCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOtaBaseSysVersionName()Ljava/lang/String;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/ota/OTA;->getOtaBaseSysVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getOtaPkgRootPath()Ljava/lang/String;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/ota/OTA;->getOtaPkgRootPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSysVersionCode()I
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/ota/OTA;->getSysVersionCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSysVersionName()Ljava/lang/String;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/ota/OTA;->getSysVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public installPackage(Lcom/geely/os/ota/IGlyOtaSession;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "otaSession",
            "otaPackagePath"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 628
    new-instance v0, Lcom/geely/os/ota/GlyOTAImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/ota/GlyOTAImpl$3;-><init>(Lcom/geely/os/ota/GlyOTAImpl;Lcom/geely/os/ota/IGlyOtaSession;)V

    .line 916
    iget-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    invoke-virtual {p1, v0, p2}, Lcom/ecarx/xui/adaptapi/ota/OTA;->installPackage(Lcom/ecarx/xui/adaptapi/ota/IOtaSession;Ljava/lang/String;)Z

    move-result p1

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ota  installPackage(session= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",otaPackagePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") result = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOtaTypeSupported(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/OTA;->isOtaTypeSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOtaTypeSupported("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")  SupportStatus = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 190
    :cond_0
    sget p1, Lcom/geely/os/car/GlySupportStatus;->error:I

    return p1
.end method

.method public releaseOtaCallback(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->sessionCallbacks:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 620
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 621
    iget-object p1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/ota/OTA;->releaseOtaCallback(Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;)V

    :cond_0
    return-void
.end method

.method public requestOta(ILcom/geely/os/ota/IGlyOtaSessionCallback;)Lcom/geely/os/ota/IGlyOtaSession;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "callback"
        }
    .end annotation

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    if-eqz p2, :cond_0

    .line 587
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->sessionCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    iget-object v2, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {v1, p1, v2}, Lcom/ecarx/xui/adaptapi/ota/OTA;->requestOta(ILcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;)Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    move-result-object v1

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 592
    invoke-direct {p0, v1}, Lcom/geely/os/ota/GlyOTAImpl;->getOtaSession(Lcom/ecarx/xui/adaptapi/ota/IOtaSession;)Lcom/geely/os/ota/IGlyOtaSession;

    move-result-object p2

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOta requestOta(type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",callbacak="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 597
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback  = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " otaSessionCallback = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mOta = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public requestOta(IZLcom/geely/os/ota/IGlyOtaSessionCallback;)Lcom/geely/os/ota/IGlyOtaSession;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "priority",
            "preferRecoveryOta",
            "callback"
        }
    .end annotation

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    if-eqz p3, :cond_0

    .line 603
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->sessionCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    iget-object v2, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {v1, p1, p2, v2}, Lcom/ecarx/xui/adaptapi/ota/OTA;->requestOta(IZLcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;)Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    move-result-object v1

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 608
    invoke-direct {p0, v1}, Lcom/geely/os/ota/GlyOTAImpl;->getOtaSession(Lcom/ecarx/xui/adaptapi/ota/IOtaSession;)Lcom/geely/os/ota/IGlyOtaSession;

    move-result-object p3

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOta requestOta( priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",preferRecoveryOta="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",callbacak="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") result = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 613
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "callback  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " otaSessionCallback = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mOta = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public requestOta(ZLcom/geely/os/ota/IGlyOtaSessionCallback;)Lcom/geely/os/ota/IGlyOtaSession;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preferRecoveryOta",
            "callback"
        }
    .end annotation

    const-string v0, "OneVehicleSDK_GlyOTAImpl"

    if-eqz p2, :cond_0

    .line 571
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->sessionCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    iget-object v2, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {v1, p1, v2}, Lcom/ecarx/xui/adaptapi/ota/OTA;->requestOta(ZLcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;)Lcom/ecarx/xui/adaptapi/ota/IOtaSession;

    move-result-object v1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "session  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 576
    invoke-direct {p0, v1}, Lcom/geely/os/ota/GlyOTAImpl;->getOtaSession(Lcom/ecarx/xui/adaptapi/ota/IOtaSession;)Lcom/geely/os/ota/IGlyOtaSession;

    move-result-object p2

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOta requestOta(preferRecoveryOta ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",callbacak="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 581
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback  = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " otaSessionCallback = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl;->otaSessionCallback:Lcom/ecarx/xui/adaptapi/ota/IOtaSessionCallback;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mOta = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public setOtaUpdateTime(Ljava/util/Calendar;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calendar"
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/ota/OTA;->setOtaUpdateTime(Ljava/util/Calendar;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public supportNoRecoveryOta()Z
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/geely/os/ota/GlyOTAImpl;->mOta:Lcom/ecarx/xui/adaptapi/ota/OTA;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/ota/OTA;->supportNoRecoveryOta()Z

    move-result v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportNoRecoveryOta()  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyOTAImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
