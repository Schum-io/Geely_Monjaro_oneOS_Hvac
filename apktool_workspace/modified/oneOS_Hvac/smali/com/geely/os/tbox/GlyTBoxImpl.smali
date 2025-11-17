.class Lcom/geely/os/tbox/GlyTBoxImpl;
.super Ljava/lang/Object;
.source "GlyTBoxImpl.java"

# interfaces
.implements Lcom/geely/os/tbox/IGlyTBox;


# instance fields
.field private final carLocatorCallback:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;

.field private final carLocatorCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/tbox/IGlyCarLocatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private itBoxSettings:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

.field private final keyLockCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/tbox/IGlyKeyLockCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final keylockCallback:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;

.field private final messageCallback:Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;

.field private tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

.field private final tBoxMessageCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/tbox/GlyTBoxMessageCallback;",
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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->carLocatorCallbacks:Landroid/util/ArraySet;

    .line 17
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->keyLockCallbacks:Landroid/util/ArraySet;

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBoxMessageCallbacks:Landroid/util/ArraySet;

    .line 21
    new-instance v0, Lcom/geely/os/tbox/GlyTBoxImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/tbox/GlyTBoxImpl$1;-><init>(Lcom/geely/os/tbox/GlyTBoxImpl;)V

    iput-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->carLocatorCallback:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;

    .line 29
    new-instance v0, Lcom/geely/os/tbox/GlyTBoxImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/tbox/GlyTBoxImpl$2;-><init>(Lcom/geely/os/tbox/GlyTBoxImpl;)V

    iput-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->keylockCallback:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;

    .line 36
    new-instance v0, Lcom/geely/os/tbox/GlyTBoxImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/tbox/GlyTBoxImpl$3;-><init>(Lcom/geely/os/tbox/GlyTBoxImpl;)V

    iput-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->messageCallback:Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;

    .line 52
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxSettings()Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->itBoxSettings:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->carLocatorCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->keyLockCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBoxMessageCallbacks:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->itBoxSettings:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->carLocatorCallback:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->keylockCallback:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    return-object p0
.end method

.method static synthetic access$700(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->messageCallback:Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/tbox/IGlyTBox;
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

    .line 46
    new-instance v0, Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/tbox/GlyTBoxImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCellInfo()Landroid/telephony/CellInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getCellInfo()Landroid/telephony/CellInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getHardwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getICCID()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getICCID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getIMEI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getLineNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMSISDN()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getMSISDN()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSoftwareVersionCode()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getSoftwareVersionCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTBoxID()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTBoxMessage()Lcom/geely/os/tbox/IGlyBoxMessage;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/geely/os/tbox/GlyTBoxImpl$5;

    invoke-direct {v0, p0}, Lcom/geely/os/tbox/GlyTBoxImpl$5;-><init>(Lcom/geely/os/tbox/GlyTBoxImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTBoxSettings()Lcom/geely/os/tbox/IGlyTBoxSettings;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->itBoxSettings:Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/geely/os/tbox/GlyTBoxImpl$4;

    invoke-direct {v0, p0}, Lcom/geely/os/tbox/GlyTBoxImpl$4;-><init>(Lcom/geely/os/tbox/GlyTBoxImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTBoxSupplierCode()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxSupplierCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->isSubscribed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setGIDProfIDLnk(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gidInfo",
            "profId"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setTBoxReset()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl;->tBox:Lcom/ecarx/xui/adaptapi/tbox/TBox;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->setTBoxReset()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
