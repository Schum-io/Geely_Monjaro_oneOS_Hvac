.class Lcom/geely/os/system/GlySystemModeImpl;
.super Ljava/lang/Object;
.source "GlySystemModeImpl.java"

# interfaces
.implements Lcom/geely/os/system/IGlySystemMode;


# instance fields
.field private dimAnimationStateCallback:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;

.field private dimAnimationStateCallbacks:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/geely/os/system/IGlyDIMAnimationStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private glySystemModeListeners:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/geely/os/system/IGlySystemModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

.field private systemModeListener:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;


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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->glySystemModeListeners:Landroidx/collection/ArraySet;

    .line 14
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->dimAnimationStateCallbacks:Landroidx/collection/ArraySet;

    .line 17
    new-instance v0, Lcom/geely/os/system/GlySystemModeImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/system/GlySystemModeImpl$1;-><init>(Lcom/geely/os/system/GlySystemModeImpl;)V

    iput-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemModeListener:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;

    .line 25
    new-instance v0, Lcom/geely/os/system/GlySystemModeImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/system/GlySystemModeImpl$2;-><init>(Lcom/geely/os/system/GlySystemModeImpl;)V

    iput-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->dimAnimationStateCallback:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;

    .line 34
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/device/Device;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/device/Device;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/device/Device;->getSystemMode()Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/system/GlySystemModeImpl;)Landroidx/collection/ArraySet;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/geely/os/system/GlySystemModeImpl;->glySystemModeListeners:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/system/GlySystemModeImpl;)Landroidx/collection/ArraySet;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/geely/os/system/GlySystemModeImpl;->dimAnimationStateCallbacks:Landroidx/collection/ArraySet;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/system/IGlySystemMode;
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

    .line 43
    new-instance v0, Lcom/geely/os/system/GlySystemModeImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/system/GlySystemModeImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public closeBootUpAnimation()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    const-string v0, "OneVehicleSDK_GlySystemModeImpl"

    const-string v1, "closeBootUpAnimation()"

    .line 51
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->closeBootUpAnimation()V

    :cond_0
    return-void
.end method

.method public getSystemModeState(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->getSystemModeState(I)I

    move-result v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemModeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")  result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerDIMAnimationStateCallback(Lcom/geely/os/system/IGlyDIMAnimationStateCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->dimAnimationStateCallbacks:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    iget-object v1, p0, Lcom/geely/os/system/GlySystemModeImpl;->dimAnimationStateCallback:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->registerDIMAnimationStateCallback(Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;)Z

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDIMAnimationStateCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") result ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerListener(ILcom/geely/os/system/IGlySystemModeListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "listener"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->glySystemModeListeners:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p2, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemModeListener:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;

    invoke-interface {p2, p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->registerListener(ILcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;)Z

    move-result p2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "systemMode.registerListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemModeListener:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")  result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayWakeState(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zone",
            "state"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayWakeState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->setDisplayWakeState(IZ)V

    :cond_0
    return-void
.end method

.method public setProvisionStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentStatus"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProvisionStatus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->setProvisionStatus(ILcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;)V

    :cond_0
    return-void
.end method

.method public setProvisionStatus(ILcom/geely/os/system/IGlyDIMAnimationStateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentStatus",
            "callback"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProvisionStatus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    new-instance v1, Lcom/geely/os/system/GlySystemModeImpl$3;

    invoke-direct {v1, p0, p2}, Lcom/geely/os/system/GlySystemModeImpl$3;-><init>(Lcom/geely/os/system/GlySystemModeImpl;Lcom/geely/os/system/IGlyDIMAnimationStateCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->setProvisionStatus(ILcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterDIMAnimationStateCallback(Lcom/geely/os/system/IGlyDIMAnimationStateCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->dimAnimationStateCallbacks:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    iget-object v1, p0, Lcom/geely/os/system/GlySystemModeImpl;->dimAnimationStateCallback:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->unregisterDIMAnimationStateCallback(Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$DIMAnimationStateCallback;)Z

    move-result v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterDIMAnimationStateCallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") result ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterListener(Lcom/geely/os/system/IGlySystemModeListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->glySystemModeListeners:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemMode:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;

    iget-object v1, p0, Lcom/geely/os/system/GlySystemModeImpl;->systemModeListener:Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode;->unregisterListener(Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;)Z

    move-result v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") result ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
