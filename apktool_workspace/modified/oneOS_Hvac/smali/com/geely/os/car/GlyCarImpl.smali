.class Lcom/geely/os/car/GlyCarImpl;
.super Ljava/lang/Object;
.source "GlyCarImpl.java"

# interfaces
.implements Lcom/geely/os/car/IGlyCar;


# instance fields
.field private callBackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private car:Lcom/ecarx/xui/adaptapi/car/ICar;

.field private carConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

.field private carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

.field private carInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

.field connectCarWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

.field private fields:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListener:Lcom/geely/os/car/ConnectionListener;

.field private mSingleCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/car/IGlyCarEventCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private oldVal:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

.field private singleFunctionValueWatcher:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;

.field private singleSensorListener:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->oldVal:Landroid/util/ArrayMap;

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Lcom/geely/os/car/GlyCarImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarImpl$1;-><init>(Lcom/geely/os/car/GlyCarImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->connectCarWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    .line 68
    new-instance v0, Lcom/geely/os/car/GlyCarImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarImpl$2;-><init>(Lcom/geely/os/car/GlyCarImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->singleFunctionValueWatcher:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;

    .line 102
    new-instance v0, Lcom/geely/os/car/GlyCarImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarImpl$3;-><init>(Lcom/geely/os/car/GlyCarImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->singleSensorListener:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;

    .line 127
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/car/Car;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->car:Lcom/ecarx/xui/adaptapi/car/ICar;

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getICarFunction()Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    .line 130
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->car:Lcom/ecarx/xui/adaptapi/car/ICar;

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getSensorManager()Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    .line 131
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->car:Lcom/ecarx/xui/adaptapi/car/ICar;

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/car/ICar;->getCarInfoManager()Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->carInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    .line 132
    const-class p1, Lcom/geely/os/car/GlyCarPropertyIds;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 135
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 136
    iget-object v5, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 138
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/geely/os/car/ConnectionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "connectionListener"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->oldVal:Landroid/util/ArrayMap;

    .line 34
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Lcom/geely/os/car/GlyCarImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarImpl$1;-><init>(Lcom/geely/os/car/GlyCarImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->connectCarWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    .line 68
    new-instance v0, Lcom/geely/os/car/GlyCarImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarImpl$2;-><init>(Lcom/geely/os/car/GlyCarImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->singleFunctionValueWatcher:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;

    .line 102
    new-instance v0, Lcom/geely/os/car/GlyCarImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarImpl$3;-><init>(Lcom/geely/os/car/GlyCarImpl;)V

    iput-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->singleSensorListener:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;

    .line 145
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/car/Car;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/car/ICar;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->car:Lcom/ecarx/xui/adaptapi/car/ICar;

    .line 146
    iput-object p2, p0, Lcom/geely/os/car/GlyCarImpl;->mConnectionListener:Lcom/geely/os/car/ConnectionListener;

    if-eqz p1, :cond_0

    .line 148
    iget-object p2, p0, Lcom/geely/os/car/GlyCarImpl;->carConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-nez p2, :cond_0

    .line 149
    instance-of p2, p1, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz p2, :cond_0

    .line 150
    check-cast p1, Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->carConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    .line 151
    iget-object p2, p0, Lcom/geely/os/car/GlyCarImpl;->connectCarWatcher:Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;

    invoke-interface {p1, p2}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->registerConnectWatcher(Lcom/ecarx/xui/adaptapi/binder/IConnectable$IConnectWatcher;)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/geely/os/car/GlyCarImpl;Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;)Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/geely/os/car/GlyCarImpl;)Lcom/ecarx/xui/adaptapi/car/ICar;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/os/car/GlyCarImpl;->car:Lcom/ecarx/xui/adaptapi/car/ICar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/geely/os/car/GlyCarImpl;[II)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/geely/os/car/GlyCarImpl;->intArrayContainsInt([II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/geely/os/car/GlyCarImpl;Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;)Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    return-object p1
.end method

.method static synthetic access$302(Lcom/geely/os/car/GlyCarImpl;Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;)Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->carInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/geely/os/car/GlyCarImpl;)Landroid/util/ArrayMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/os/car/GlyCarImpl;)Lcom/geely/os/car/ConnectionListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/os/car/GlyCarImpl;->mConnectionListener:Lcom/geely/os/car/ConnectionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/geely/os/car/GlyCarImpl;IILjava/lang/Object;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl;->handleSingleOnChangeEvent(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/geely/os/car/GlyCarImpl;III)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl;->handleSingleOnSupportChanged(III)V

    return-void
.end method

.method static synthetic access$800(Lcom/geely/os/car/GlyCarImpl;)Ljava/util/HashMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/geely/os/car/GlyCarImpl;[Ljava/lang/Integer;)[I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/geely/os/car/GlyCarImpl;->covertIntegersToInts([Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method

.method private covertIntegersToInts([Ljava/lang/Integer;)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .line 471
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 472
    sget-object v0, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;->INSTANCE:Lcom/geely/os/car/-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 473
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    return-object p1
.end method

.method private covertIntsToIntegers([I)[Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyIds"
        }
    .end annotation

    .line 464
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 465
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    .line 466
    sget-object v0, Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;->INSTANCE:Lcom/geely/os/car/-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    return-object p1
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/car/IGlyCar;
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

    .line 160
    new-instance v0, Lcom/geely/os/car/GlyCarImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/car/GlyCarImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/geely/os/car/ConnectionListener;)Lcom/geely/os/car/IGlyCar;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "connectionListener"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 168
    new-instance v0, Lcom/geely/os/car/GlyCarImpl;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/car/GlyCarImpl;-><init>(Landroid/content/Context;Lcom/geely/os/car/ConnectionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getIdAlias(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    .line 187
    const-class v0, Lcom/geely/os/car/GlyIdConfig;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/geely/os/car/GlyIdConfig;

    if-eqz p1, :cond_0

    .line 189
    invoke-interface {p1}, Lcom/geely/os/car/GlyIdConfig;->alias()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getIdName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    .line 198
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getIdType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->fields:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    .line 176
    const-class v0, Lcom/geely/os/car/GlyIdConfig;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/geely/os/car/GlyIdConfig;

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Lcom/geely/os/car/GlyIdConfig;->type()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private declared-synchronized handleSingleOnChangeEvent(IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "zone",
            "value"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    .line 445
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl;->operateLog(Ljava/lang/String;IILjava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 447
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    new-instance v1, Lcom/geely/os/car/GlyCarImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl$4;-><init>(Lcom/geely/os/car/GlyCarImpl;IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleSingleOnSupportChanged(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "zone",
            "status"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "onSupportChanged"

    .line 483
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/geely/os/car/GlyCarImpl;->operateLog(Ljava/lang/String;IILjava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    new-instance v1, Lcom/geely/os/car/GlyCarImpl$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/os/car/GlyCarImpl$5;-><init>(Lcom/geely/os/car/GlyCarImpl;III)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private intArrayContainsInt([II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intArr",
            "input"
        }
    .end annotation

    .line 478
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 479
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$covertIntegersToInts$1(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method static synthetic lambda$covertIntsToIntegers$0(I)[Ljava/lang/Integer;
    .locals 0

    .line 466
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method private declared-synchronized operateLog(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "operate",
            "propertyId",
            "areaId",
            "value"
        }
    .end annotation

    monitor-enter p0

    if-nez p4, :cond_0

    :try_start_0
    const-string p4, "null"

    goto :goto_0

    .line 501
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 502
    :goto_0
    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-string v0, "callback"

    .line 504
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->oldVal:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->oldVal:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "OneVehicleSDK"

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdAlias(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") propertyId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " areaId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " val="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->oldVal:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    const-string v0, "OneVehicleSDK"

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdAlias(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") propertyId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " areaId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " val="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->oldVal:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    const-string v0, "OneVehicleSDK"

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdAlias(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") propertyId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " areaId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " val="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->oldVal:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v0, "OneVehicleSDK"

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->getIdAlias(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") propertyId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " areaId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " val="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public varargs declared-synchronized addRateSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "rate",
            "propertyIds"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_5

    .line 358
    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_5

    const-string v0, "OneVehicleSDK"

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRateSingleCarEventCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " propertyIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p3, v1

    .line 361
    invoke-direct {p0, v2}, Lcom/geely/os/car/GlyCarImpl;->getIdType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 363
    iget-object v3, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz v3, :cond_3

    .line 364
    iget-object v4, p0, Lcom/geely/os/car/GlyCarImpl;->singleFunctionValueWatcher:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;

    invoke-interface {v3, v2, v4}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->registerFunctionValueWatcher(ILcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;)Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 367
    iget-object v3, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    if-eqz v3, :cond_3

    .line 368
    iget-object v4, p0, Lcom/geely/os/car/GlyCarImpl;->singleSensorListener:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;

    invoke-interface {v3, v4, v2, p2}, Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;->registerListener(Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;II)Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v2, "OneVehicleSDK"

    const-string v3, "ID_TYPE_INFO  not support register"

    .line 371
    invoke-static {v2, v3}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "OneVehicleSDK"

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register fail no exist propertyId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    .line 377
    iget-object p2, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_6

    .line 378
    iget-object p2, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-direct {p0, p3}, Lcom/geely/os/car/GlyCarImpl;->covertIntsToIntegers([I)[Ljava/lang/Integer;

    move-result-object p2

    .line 380
    iget-object p3, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string p1, "OneVehicleSDK"

    const-string p2, "register fail propertyIds=null || propertyIds.length==0"

    .line 384
    invoke-static {p1, p2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disconnect()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carConnectable:Lcom/ecarx/xui/adaptapi/binder/IConnectable;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/binder/IConnectable;->disconnect()V

    :cond_0
    return-void
.end method

.method public getFloatProperty(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 247
    invoke-virtual {p0, p1, v0}, Lcom/geely/os/car/GlyCarImpl;->getFloatProperty(II)F

    move-result p1

    return p1
.end method

.method public getFloatProperty(II)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1}, Lcom/geely/os/car/GlyCarImpl;->getIdType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz v0, :cond_3

    .line 274
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->getCustomizeFunctionValue(II)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    if-eqz v0, :cond_3

    .line 278
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;->getSensorLatestValue(I)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    if-eqz v0, :cond_3

    .line 282
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;->getCarInfoFloat(I)F

    move-result v0

    goto :goto_0

    .line 285
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error idType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 287
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "getFloatProperty"

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/geely/os/car/GlyCarImpl;->operateLog(Ljava/lang/String;IILjava/lang/Object;)V

    return v0
.end method

.method public getIntProperty(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/geely/os/car/GlyCarImpl;->getIntProperty(II)I

    move-result p1

    return p1
.end method

.method public getIntProperty(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1}, Lcom/geely/os/car/GlyCarImpl;->getIdType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz v0, :cond_3

    .line 300
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->getFunctionValue(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    if-eqz v0, :cond_3

    .line 304
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;->getSensorEvent(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 307
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    if-eqz v0, :cond_3

    .line 308
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;->getCarInfoInt(I)I

    move-result v0

    goto :goto_0

    .line 312
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error idType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getIntProperty"

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/geely/os/car/GlyCarImpl;->operateLog(Ljava/lang/String;IILjava/lang/Object;)V

    return v0
.end method

.method public getSupportStatus(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/geely/os/car/GlyCarImpl;->getSupportStatus(II)I

    move-result p1

    return p1
.end method

.method public getSupportStatus(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId"
        }
    .end annotation

    .line 223
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    .line 224
    invoke-direct {p0, p1}, Lcom/geely/os/car/GlyCarImpl;->getIdType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz v1, :cond_3

    .line 227
    invoke-interface {v1, p1, p2}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->isFunctionSupported(II)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 230
    iget-object v1, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    if-eqz v1, :cond_3

    .line 231
    invoke-interface {v1, p1}, Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;->isSensorSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 234
    iget-object v1, p0, Lcom/geely/os/car/GlyCarImpl;->carInfo:Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;

    if-eqz v1, :cond_3

    .line 235
    invoke-interface {v1, p1}, Lcom/ecarx/xui/adaptapi/car/base/ICarInfo;->isCarInfoSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    goto :goto_0

    .line 239
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error idType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isSupport"

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/geely/os/car/GlyCarImpl;->operateLog(Ljava/lang/String;IILjava/lang/Object;)V

    return v0
.end method

.method public getSupportedValueStatus(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->getSupportedFunctionValue(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getSupportedValueStatus(II)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "zone"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->getSupportedFunctionValue(II)[I

    move-result-object p1

    return-object p1
.end method

.method public varargs declared-synchronized registerSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "propertyIds"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_5

    .line 395
    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_5

    const-string v0, "OneVehicleSDK"

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSingleCarEventCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " propertyIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p2, v1

    .line 398
    invoke-direct {p0, v2}, Lcom/geely/os/car/GlyCarImpl;->getIdType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 400
    iget-object v3, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz v3, :cond_3

    .line 401
    iget-object v4, p0, Lcom/geely/os/car/GlyCarImpl;->singleFunctionValueWatcher:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;

    invoke-interface {v3, v2, v4}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->registerFunctionValueWatcher(ILcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;)Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 404
    iget-object v3, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    if-eqz v3, :cond_3

    .line 405
    iget-object v4, p0, Lcom/geely/os/car/GlyCarImpl;->singleSensorListener:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;

    const/4 v5, 0x5

    invoke-interface {v3, v4, v2, v5}, Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;->registerListener(Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;II)Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v2, "OneVehicleSDK"

    const-string v3, "ID_TYPE_INFO  not support register"

    .line 408
    invoke-static {v2, v3}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "OneVehicleSDK"

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register fail no exist propertyId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    .line 414
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 415
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-direct {p0, p2}, Lcom/geely/os/car/GlyCarImpl;->covertIntsToIntegers([I)[Ljava/lang/Integer;

    move-result-object p2

    .line 417
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string p1, "OneVehicleSDK"

    const-string p2, "register fail propertyIds=null || propertyIds.length==0"

    .line 421
    invoke-static {p1, p2}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFloatProperty(IF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "val"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 257
    invoke-virtual {p0, p1, v0, p2}, Lcom/geely/os/car/GlyCarImpl;->setFloatProperty(IIF)Z

    move-result p1

    return p1
.end method

.method public setFloatProperty(IIF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "val"
        }
    .end annotation

    .line 320
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "setFloatProperty"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/geely/os/car/GlyCarImpl;->operateLog(Ljava/lang/String;IILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0, p1, p2, p3}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->setCustomizeFunctionValue(IIF)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setIntProperty(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "val"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 262
    invoke-virtual {p0, p1, v0, p2}, Lcom/geely/os/car/GlyCarImpl;->setIntProperty(III)Z

    move-result p1

    return p1
.end method

.method public setIntProperty(III)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "val"
        }
    .end annotation

    .line 333
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "setIntProperty"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/geely/os/car/GlyCarImpl;->operateLog(Ljava/lang/String;IILjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p1, p2, p3}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->setFunctionValue(III)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized unregisterSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "OneVehicleSDK"

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSingleCarEventCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->mSingleCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->callBackHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 433
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->sensor:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;

    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->singleSensorListener:Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/sensor/ISensor;->unregisterListener(Lcom/ecarx/xui/adaptapi/car/sensor/ISensor$ISensorListener;)V

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/geely/os/car/GlyCarImpl;->carFunction:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;

    if-eqz p1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/geely/os/car/GlyCarImpl;->singleFunctionValueWatcher:Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/car/base/ICarFunction;->unregisterFunctionValueWatcher(Lcom/ecarx/xui/adaptapi/car/base/ICarFunction$IFunctionValueWatcher;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
