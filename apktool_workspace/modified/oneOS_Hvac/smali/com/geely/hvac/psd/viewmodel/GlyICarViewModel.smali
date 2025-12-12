.class public Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "GlyICarViewModel.java"


# static fields
.field public static final HEATING_LEVEL:Ljava/lang/String; = "SeatHeatingLevel"

.field private static final HVACSETTINGDATA:Ljava/lang/String; = "hvac_settings_data"

.field public static final MASSAGE_LEVEL:Ljava/lang/String; = "massageLevel"

.field public static final MASSAGE_PROGRAM:Ljava/lang/String; = "massageMode"

.field public static final PHYSICAL_PROGRAM:Ljava/lang/String; = "physicalMode"

.field public static final VENTILATION_LEVEL:Ljava/lang/String; = "VentilationLevel"

.field public static preferences:Landroid/content/SharedPreferences;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final carEventCallBack:Lcom/geely/os/car/IGlyCarEventCallBack;

.field private final mCar:Lcom/geely/os/car/IGlyCar;

.field private final mCarEventCallBackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/geely/os/car/IGlyCarEventCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mFloatValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHev:Lcom/geely/os/car/IGlyHev;

.field private final mIntValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSupportValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    const-string v0, "GlyICarViewModel"

    .line 33
    iput-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->TAG:Ljava/lang/String;

    .line 51
    new-instance v1, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel$1;

    invoke-direct {v1, p0}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel$1;-><init>(Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;)V

    iput-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->carEventCallBack:Lcom/geely/os/car/IGlyCarEventCallBack;

    .line 88
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mIntValueMap:Ljava/util/Map;

    .line 89
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mFloatValueMap:Ljava/util/Map;

    .line 90
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mSupportValueMap:Ljava/util/Map;

    const-string v2, "hvac_settings_data"

    const/4 v3, 0x0

    .line 92
    invoke-virtual {p1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->preferences:Landroid/content/SharedPreferences;

    .line 94
    invoke-static {p1}, Lcom/geely/os/car/GlyCar;->create(Landroid/content/Context;)Lcom/geely/os/car/IGlyCar;

    move-result-object v2

    iput-object v2, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    .line 95
    sget-object v3, Lcom/geely/hvac/data/ConstantData;->REGISTER_PROPERTY:[I

    invoke-interface {v2, v1, v3}, Lcom/geely/os/car/IGlyCar;->registerSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;[I)V

    .line 96
    invoke-static {p1}, Lcom/geely/os/car/GlyCar;->createHev(Landroid/content/Context;)Lcom/geely/os/car/IGlyHev;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mHev:Lcom/geely/os/car/IGlyHev;

    .line 97
    new-instance v1, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$a96qYcQy48lk2K8puDwxhm0nGUQ;

    invoke-direct {v1, p0}, Lcom/geely/hvac/psd/viewmodel/-$$Lambda$GlyICarViewModel$a96qYcQy48lk2K8puDwxhm0nGUQ;-><init>(Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;)V

    invoke-interface {p1, v1}, Lcom/geely/os/car/IGlyHev;->registerTripListener(Lcom/geely/os/car/IGlyHevCallBack;)V

    const-string p1, "hvac_settings"

    .line 99
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCarEventCallBackSet:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mFloatValueMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mIntValueMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;)Ljava/util/Set;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCarEventCallBackSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;)Ljava/util/Map;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mSupportValueMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public getFloatProperty(I)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getFloatProperty(II)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    return-object p1
.end method

.method public getFloatProperty(II)Landroidx/lifecycle/MutableLiveData;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/car/IGlyCar;->getFloatProperty(II)F

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mFloatValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mFloatValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    .line 147
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_1

    .line 148
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-object p1

    .line 152
    :cond_2
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 153
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mFloatValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getIntProperty(I)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getIntProperty(II)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    return-object p1
.end method

.method public getIntProperty(II)Landroidx/lifecycle/MutableLiveData;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/car/IGlyCar;->getIntProperty(II)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mIntValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mIntValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    .line 170
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq v0, p2, :cond_1

    .line 171
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-object p1

    .line 175
    :cond_2
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mIntValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getSeatNum()I
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x2d410f00

    invoke-interface {v0, v1}, Lcom/geely/os/car/IGlyCar;->getIntProperty(I)I

    move-result v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSeatNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlyICarViewModel"

    invoke-static {v2, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public getSupportStatus(I)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getSupportStatus(II)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    return-object p1
.end method

.method public getSupportStatus(II)Landroidx/lifecycle/MutableLiveData;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/car/IGlyCar;->getSupportStatus(II)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mSupportValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mSupportValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    .line 112
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq v0, p2, :cond_1

    .line 113
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-object p1

    .line 117
    :cond_2
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mSupportValueMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
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

    const/high16 v0, -0x80000000

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getSupportedValueStatus(II)[I

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
            "areaId"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/car/IGlyCar;->getSupportedValueStatus(II)[I

    move-result-object p1

    return-object p1
.end method

.method public isDayMode()Z
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const v1, 0x20150100

    invoke-interface {v0, v1}, Lcom/geely/os/car/IGlyCar;->getIntProperty(I)I

    move-result v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlyICarViewModel"

    invoke-static {v2, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x20150101

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTripDataSupported()I
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mHev:Lcom/geely/os/car/IGlyHev;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/geely/os/car/IGlyHev;->isTripDataSupported(I)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$GlyICarViewModel()V
    .locals 2

    const-string v0, "GlyICarViewModel"

    const-string v1, "tripInfoChange"

    .line 97
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 259
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 260
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    iget-object v1, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->carEventCallBack:Lcom/geely/os/car/IGlyCarEventCallBack;

    invoke-interface {v0, v1}, Lcom/geely/os/car/IGlyCar;->unregisterSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;)V

    .line 261
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mHev:Lcom/geely/os/car/IGlyHev;

    invoke-interface {v0}, Lcom/geely/os/car/IGlyHev;->unRegisterTripListener()V

    .line 262
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mIntValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mFloatValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 264
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mSupportValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public queryLevel(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "massageLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "VentilationLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "massageMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "SeatHeatingLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "physicalMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    const-string v0, "GlyICarViewModel"

    packed-switch v2, :pswitch_data_0

    const-string p1, "name is Invalid. return level off"

    .line 323
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 314
    :pswitch_0
    sget-object v1, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->preferences:Landroid/content/SharedPreferences;

    const v2, 0x10050701

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 311
    :pswitch_1
    sget-object v1, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->preferences:Landroid/content/SharedPreferences;

    const v2, 0x10050101

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 317
    :pswitch_2
    sget-object v1, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->preferences:Landroid/content/SharedPreferences;

    const v2, 0x10050b01

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 308
    :pswitch_3
    sget-object v1, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->preferences:Landroid/content/SharedPreferences;

    const v2, 0x10050201

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 320
    :pswitch_4
    sget-object v1, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->preferences:Landroid/content/SharedPreferences;

    const v2, 0x2d500206

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 326
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x57e9b4e6 -> :sswitch_4
        -0x1049ea89 -> :sswitch_3
        -0x5337232 -> :sswitch_2
        0x5dae4847 -> :sswitch_1
        0x5eb2ccb9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carEventCallBack"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCarEventCallBackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carEventCallBack"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCarEventCallBackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveLevel(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "massageLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "VentilationLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "massageMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "SeatHeatingLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "physicalMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    const-string v0, "GlyICarViewModel"

    packed-switch v1, :pswitch_data_0

    const-string p1, "name is Invalid."

    .line 287
    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const v1, 0x10050700

    .line 278
    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getIntProperty(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :pswitch_1
    const v1, 0x10050100

    .line 275
    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getIntProperty(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :pswitch_2
    const v1, 0x10050b00

    .line 281
    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getIntProperty(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :pswitch_3
    const v1, 0x10050200

    .line 272
    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getIntProperty(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :pswitch_4
    const v1, 0x2d500200

    .line 284
    invoke-virtual {p0, v1}, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->getIntProperty(I)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " level is"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", don\'t save"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 295
    :cond_5
    sget-object v2, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 296
    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57e9b4e6 -> :sswitch_4
        -0x1049ea89 -> :sswitch_3
        -0x5337232 -> :sswitch_2
        0x5dae4847 -> :sswitch_1
        0x5eb2ccb9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 129
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/car/IGlyCar;->setFloatProperty(IF)Z

    move-result p1

    return p1
.end method

.method public setFloatProperty(IIF)Z
    .locals 3
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

    .line 160
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/os/car/IGlyCar;->setFloatProperty(IIF)Z

    move-result v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " propertyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " areaId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " propertyVal: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " floatProperty: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlyICarViewModel"

    invoke-static {p2, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public setIntProperty(II)Z
    .locals 3
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

    .line 137
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2}, Lcom/geely/os/car/IGlyCar;->setIntProperty(II)Z

    move-result v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " propertyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " propertyVal: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " intProperty: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlyICarViewModel"

    invoke-static {p2, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public setIntProperty(III)Z
    .locals 3
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

    .line 183
    iget-object v0, p0, Lcom/geely/hvac/psd/viewmodel/GlyICarViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    move-result v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " propertyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " areaId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " propertyVal: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " intProperty: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlyICarViewModel"

    invoke-static {p2, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method
