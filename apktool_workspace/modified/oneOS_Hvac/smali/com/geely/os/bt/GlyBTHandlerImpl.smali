.class public Lcom/geely/os/bt/GlyBTHandlerImpl;
.super Ljava/lang/Object;
.source "GlyBTHandlerImpl.java"

# interfaces
.implements Lcom/geely/os/bt/IGlyBTHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private devicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothGattService:Landroid/bluetooth/BluetoothGattServer;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mProfileEnumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private stateListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/bt/IBtFirstDeviceHfpStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GlyBTHandlerImpl"

    .line 35
    iput-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mCallbackSet:Ljava/util/Set;

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->stateListeners:Landroid/util/ArraySet;

    .line 58
    new-instance v0, Lcom/geely/os/bt/GlyBTHandlerImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBTHandlerImpl$1;-><init>(Lcom/geely/os/bt/GlyBTHandlerImpl;)V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/geely/os/bt/GlyBTHandlerImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBTHandlerImpl$2;-><init>(Lcom/geely/os/bt/GlyBTHandlerImpl;)V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 194
    iput-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mContext:Landroid/content/Context;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    const/4 v1, 0x2

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bluetooth"

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_0

    .line 205
    new-instance v1, Lcom/geely/os/bt/GlyBTHandlerImpl$3;

    invoke-direct {v1, p0}, Lcom/geely/os/bt/GlyBTHandlerImpl$3;-><init>(Lcom/geely/os/bt/GlyBTHandlerImpl;)V

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattServer;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Set;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mCallbackSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothGattServer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattServer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->createBlueDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/Map;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p0
.end method

.method static synthetic access$602(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$700(Lcom/geely/os/bt/GlyBTHandlerImpl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->devicesList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/geely/os/bt/GlyBTHandlerImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->devicesList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/geely/os/bt/GlyBTHandlerImpl;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$802(Lcom/geely/os/bt/GlyBTHandlerImpl;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->device:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/geely/os/bt/GlyBTHandlerImpl;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->handleOnHfpStateChange(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/bt/IGlyBTHandler;
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

    .line 255
    new-instance v0, Lcom/geely/os/bt/GlyBTHandlerImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/bt/GlyBTHandlerImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private createBlueDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 416
    new-instance v0, Lcom/geely/os/bt/GlyBluetoothDevice;

    invoke-direct {v0, p1}, Lcom/geely/os/bt/GlyBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 417
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0, p1}, Lcom/geely/os/bt/GlyBluetoothDevice;->setBluetoothGattService(Landroid/bluetooth/BluetoothGattServer;)V

    .line 418
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 419
    invoke-virtual {v0}, Lcom/geely/os/bt/GlyBluetoothDevice;->isPhoneDevice()Z

    move-result v1

    const/16 v2, 0xb

    .line 428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 428
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfile;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :goto_0
    invoke-virtual {v0, p1}, Lcom/geely/os/bt/GlyBluetoothDevice;->setProfileEnumMap(Ljava/util/Map;)V

    return-object v0
.end method

.method private handleOnHfpStateChange(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hfpState",
            "device"
        }
    .end annotation

    const-string v0, "GlyBTHandlerImpl"

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnHfpStateChange hfpState  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->stateListeners:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->stateListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/os/bt/IBtFirstDeviceHfpStateListener;

    .line 142
    invoke-interface {v1, p1, p2}, Lcom/geely/os/bt/IBtFirstDeviceHfpStateListener;->onBtDeviceHfpStateChange(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 137
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method private setDiscoverableTimeout(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 317
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "setDiscoverableTimeout"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 319
    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDiscoverableTimeout error :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlyBTHandlerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setScanMode(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 307
    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "setScanMode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 309
    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScanMode error :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlyBTHandlerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBTDiscoverable()Z
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBTName()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBondedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/os/bt/GlyBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 335
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 336
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 337
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 338
    invoke-direct {p0, v2}, Lcom/geely/os/bt/GlyBTHandlerImpl;->createBlueDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/geely/os/bt/GlyBluetoothDevice;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Lcom/geely/os/bt/GlyBluetoothDevice;->isValidDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getConnectedDevice()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "devicesList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->devicesList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->devicesList:Ljava/util/List;

    return-object v0
.end method

.method public getFirstConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getFirstDeviceHfpState()I
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hfpState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlyBTHandlerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxA2DPDeviceNum()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMaxHFPDeviceNum()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public init()V
    .locals 5

    const-string v0, "GlyBTHandlerImpl"

    const-string v1, "init"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    const-string v1, "getDefaultAdapter is null"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 232
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 247
    iget-object v2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isBTFuncSupported()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlueToothOpen()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerBTCallback(Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerBtFirstDeviceHfpStateListener(Lcom/geely/os/bt/IBtFirstDeviceHfpStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btFirstDeviceHfpStateListener"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->stateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 4

    const-string v0, "GlyBTHandlerImpl"

    const-string v1, "release"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mProfileEnumMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setBTDiscoverable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "discoverable"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBTDiscoverable : discoverable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x12c

    .line 296
    invoke-direct {p0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->setDiscoverableTimeout(I)V

    const/16 p1, 0x17

    .line 297
    invoke-direct {p0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->setScanMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 299
    invoke-direct {p0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->setDiscoverableTimeout(I)V

    const/16 p1, 0x15

    .line 300
    invoke-direct {p0, p1}, Lcom/geely/os/bt/GlyBTHandlerImpl;->setScanMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBTName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btName"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBTName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setBTOnOff(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBTOnOff : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlyBTHandlerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 368
    iget-object p1, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public startScan()V
    .locals 2

    const-string v0, "GlyBTHandlerImpl"

    const-string v1, "startScan"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 2

    const-string v0, "GlyBTHandlerImpl"

    const-string v1, "stopScan"

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method public unregisterBTCallback(Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterBtFirstDeviceHfpStateListener(Lcom/geely/os/bt/IBtFirstDeviceHfpStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btFirstDeviceHfpStateListener"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/geely/os/bt/GlyBTHandlerImpl;->stateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
