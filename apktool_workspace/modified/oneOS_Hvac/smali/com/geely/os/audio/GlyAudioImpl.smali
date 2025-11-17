.class Lcom/geely/os/audio/GlyAudioImpl;
.super Ljava/lang/Object;
.source "GlyAudioImpl.java"

# interfaces
.implements Lcom/geely/os/audio/IGlyAudio;


# instance fields
.field carVolumeCallback:Landroid/car/media/CarAudioManager$CarVolumeCallback;

.field private compensationSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation$ICompensationSettingListener;

.field private externalSpeakersListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersListener;

.field private iExternalSpeakersVolumeListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersVolumeListener;

.field private final mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

.field private final mAudioAttributes:Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

.field private final mAudioChangeCallbackSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/audio/IGlyAudioCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSettingCallback:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio$IAudioSettingListener;

.field private final mCar:Landroid/car/Car;

.field private mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

.field private final mCompensationSettingListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/audio/IGlyCompensationSettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

.field private mEqualizerStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer$IEqualizerStateListener;

.field private final mEqualizerStateListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/audio/IGlyEqualizerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

.field private final mExternalSpeakersListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/audio/IGlyExternalSpeakersListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

.field private mFaderBalanceStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance$IFaderBalanceStateListener;

.field private final mFaderBalanceStateListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/audio/IGlyFaderBalanceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

.field private mHarmanSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer$IHarmanSettingListener;

.field private final mHarmanSettingListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/geely/os/audio/IGlyHarmanSettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioChangeCallbackSet:Landroid/util/ArraySet;

    .line 46
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensationSettingListeners:Landroid/util/ArraySet;

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListeners:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListeners:Landroid/util/ArraySet;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListeners:Landroid/util/ArraySet;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersListeners:Landroid/util/ArraySet;

    .line 54
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$1;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer$IEqualizerStateListener;

    .line 69
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$2;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$2;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->compensationSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation$ICompensationSettingListener;

    .line 90
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$3;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$3;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->carVolumeCallback:Landroid/car/media/CarAudioManager$CarVolumeCallback;

    .line 107
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$4;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$4;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance$IFaderBalanceStateListener;

    .line 128
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$5;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$5;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer$IHarmanSettingListener;

    .line 143
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$6;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$6;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioSettingCallback:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio$IAudioSettingListener;

    .line 163
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$7;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$7;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->iExternalSpeakersVolumeListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersVolumeListener;

    .line 171
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$8;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$8;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->externalSpeakersListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersListener;

    .line 192
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    const-string v1, "audio"

    .line 193
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->getCompensation()Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    .line 196
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->getFaderBalance()Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    .line 197
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->getHarmanEqualizer()Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    .line 198
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->getEqualizer()Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    .line 199
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ExternalSpeakers;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/policy/Policy;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioAttributes:Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/policy/Policy;->getAudioAttributes()Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioAttributes:Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

    .line 208
    :goto_0
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl$9;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl$9;-><init>(Lcom/geely/os/audio/GlyAudioImpl;)V

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCar:Landroid/car/Car;

    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p1}, Landroid/car/Car;->connect()V

    .line 236
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mUsageMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensationSettingListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/os/audio/GlyAudioImpl;I)[Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/geely/os/audio/GlyAudioImpl;->getUsageByGroupId(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioChangeCallbackSet:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$700(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersListeners:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/car/media/CarAudioManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object p0
.end method

.method static synthetic access$802(Lcom/geely/os/audio/GlyAudioImpl;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/car/Car;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCar:Landroid/car/Car;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/audio/IGlyAudio;
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

    .line 243
    new-instance v0, Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/audio/GlyAudioImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getGroupIdByUsage(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mUsageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_2

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioAttributes:Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

    const-string v3, "OneVehicleSDK_GlyAudioImpl"

    if-eqz v2, :cond_1

    .line 359
    invoke-interface {v2, p1}, Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;->getAudioAtrributesUsage(Ljava/lang/String;)I

    move-result v2

    .line 360
    iget-object v4, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v4, :cond_1

    .line 362
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/car/media/CarAudioManager;->getVolumeGroupIdForUsage(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 363
    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mUsageMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeGroupIdForUsage error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 372
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGroupIdByUsage: usage = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", groupId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 375
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1
.end method

.method private getUsageByGroupId(I)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 383
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 386
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 390
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "direction",
            "flags"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustStreamVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_0
    return-void
.end method

.method public getAudioAtrributesContentType(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioAttributes:Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

    if-eqz v0, :cond_0

    .line 830
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;->getAudioAtrributesContentType(Ljava/lang/String;)I

    move-result v0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioAtrributesContentType( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAudioAtrributesUsage(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioAttributes:Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;->getAudioAtrributesUsage(Ljava/lang/String;)I

    move-result v0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioAtrributesUsage( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAudioAtrributesUsage(Ljava/lang/String;Landroid/view/Display;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "display"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioAttributes:Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;

    if-eqz v0, :cond_0

    .line 820
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/policy/IAudioAttributes;->getAudioAtrributesUsage(Ljava/lang/String;Landroid/view/Display;)I

    move-result v0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioAtrributesUsage( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAudioProvider()I
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->getAudioProvider()I

    move-result v0

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioProvider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getBalanceLevel()S
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->getBalanceLevel()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 427
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBalanceLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getBalanceLevelRange()[S
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [S

    .line 413
    fill-array-data v0, :array_0

    .line 414
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v1, :cond_0

    .line 415
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->getBalanceLevelRange()[S

    move-result-object v0

    .line 417
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBalanceLevelRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 2
        -0xas
        0xas
    .end array-data
.end method

.method public getBandLevel(S)S
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "band"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->getBandLevel(S)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 503
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBandLevel : band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getBandLevelRange()[S
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [S

    .line 481
    fill-array-data v0, :array_0

    .line 482
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v1, :cond_0

    .line 483
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->getBandLevelRange()[S

    move-result-object v0

    .line 485
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBandLevelRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 2
        -0xas
        0xas
    .end array-data
.end method

.method public getCompensationLevelOfSpeedCompensatedVolume()I
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 700
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->getCompensationLevelOfSpeedCompensatedVolume()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 702
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompensationLevelOfSpeedCompensatedVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCurrentPreset()S
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v0, :cond_0

    .line 511
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->getCurrentPreset()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 513
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentPreset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getDtsSoundMode()I
    .locals 3

    .line 1089
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 1090
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->getDtsSoundMode()I

    move-result v0

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtsSoundMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEffectEnhanceMode()I
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 728
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->getEffectEnhanceMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 730
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEffectEnhanceMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getExternalSpeakersMediaPlayMode()I
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    .line 960
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->getExternalSpeakersMediaPlayMode()I

    move-result v0

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalSpeakersMediaPlayMode() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExternalSpeakersVolume()I
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    .line 970
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->getExternalSpeakersVolume()I

    move-result v0

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalSpeakersVolume() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFaderLevel()S
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->getFaderLevel()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 437
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFaderLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getFaderLevelRange()[S
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [S

    .line 395
    fill-array-data v0, :array_0

    .line 396
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v1, :cond_0

    .line 397
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->getFaderLevelRange()[S

    move-result-object v0

    .line 399
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFaderLevelRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 2
        -0xas
        0xas
    .end array-data
.end method

.method public getLMHBandLevel(I)S
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "band"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v0, :cond_0

    .line 653
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->getBandLevel(I)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 655
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLMHBandLevel : band = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getLMHBandLevelRange()[S
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [S

    .line 628
    fill-array-data v0, :array_0

    .line 629
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v1, :cond_0

    .line 630
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->getBandLevelRange()[S

    move-result-object v0

    return-object v0

    .line 632
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLMHBandLevelRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :array_0
    .array-data 2
        0x0s
        0x0s
    .end array-data
.end method

.method public getMaxVolumeByUsage(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0, p1}, Lcom/geely/os/audio/GlyAudioImpl;->getGroupIdByUsage(Ljava/lang/String;)I

    move-result v0

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v2, v0}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(I)I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxVolumeByUsage error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxVolumeByUsage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", ret = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMinVolumeByUsage(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0, p1}, Lcom/geely/os/audio/GlyAudioImpl;->getGroupIdByUsage(Ljava/lang/String;)I

    move-result v0

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v2, v0}, Landroid/car/media/CarAudioManager;->getGroupMinVolume(I)I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinVolumeByUsage error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinVolumeByUsage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", ret = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNaviVoiceMixMode()I
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->getAudioState()Lcom/ecarx/xui/adaptapi/audio/audiofx/IAudioState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IAudioState;->getNaviVoiceMixMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 771
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNaviVoiceMixMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNumberOfBands()S
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->getNumberOfBands()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfBands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getNumberOfPresets()S
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->getNumberOfPresets()S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 531
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberOfPresets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 541
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPresetName : preset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStreamVolume(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStreamVolume("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSupportedEffectEnhanceMode()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 717
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v1, :cond_0

    .line 718
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->getSupportedEffectEnhanceMode()[I

    move-result-object v0

    .line 720
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportEffectEnhanceMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVolumeByUsage(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/geely/os/audio/GlyAudioImpl;->getGroupIdByUsage(Ljava/lang/String;)I

    move-result v0

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v2, v0}, Landroid/car/media/CarAudioManager;->getGroupVolume(I)I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumeByUsage error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumeByUsage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", ret = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isAudioSettingSupported(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSetting"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->isAudioSettingSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    sget-object v2, Lcom/ecarx/xui/adaptapi/FunctionStatus;->active:Lcom/ecarx/xui/adaptapi/FunctionStatus;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAudioSettingSupported: audioSetting = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isBalanceSupported()I
    .locals 3

    .line 461
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    .line 462
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v1, :cond_0

    .line 463
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->isBalanceSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    .line 465
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBalanceSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isCompensationSettingSupported(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compensationSetting"
        }
    .end annotation

    .line 746
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    .line 747
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v1, :cond_0

    .line 748
    invoke-interface {v1, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->isCompensationSettingSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    .line 750
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCompensationSettingSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isDtsSoundEnabled()Z
    .locals 3

    .line 1079
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 1080
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->isDtsSoundEnabled()Z

    move-result v0

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDtsSoundEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualizerSupported()I
    .locals 3

    .line 547
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    .line 548
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v1, :cond_0

    .line 549
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->isEqualizerSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    .line 551
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEqualizerSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isFaderSupported()I
    .locals 3

    .line 451
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    .line 452
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v1, :cond_0

    .line 453
    invoke-interface {v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->isFaderSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    .line 455
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFaderSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isHarmanClariFiOnOff()Z
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->isHarmanClariFiOnOff()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 562
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHarmanClariFiOnOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isHarmanSettingSupported(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "harmanSetting"
        }
    .end annotation

    .line 618
    sget v0, Lcom/geely/os/car/GlySupportStatus;->error:I

    .line 619
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v1, :cond_0

    .line 620
    invoke-interface {v1, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->isHarmanSettingSupported(I)Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    .line 622
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHarmanSettingSupported: harmanSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isHarmanSurroundSoundOnOff()Z
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->isSurroundSoundOnOff()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 602
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHarmanSurroundSoundOnOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isLoudnessEnabled()Z
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 666
    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->isLoudnessEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 668
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLoudnessEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSpeedCompensatedVolumeEnabled()Z
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->isSpeedCompensatedVolumeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 683
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSpeedCompensatedVolumeEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSurroundSoundLevelSupported()Z
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->isSurroundSoundLevelSupported()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1066
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurroundSoundLevelSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSurroundSoundOnOff()Z
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->isSurroundSoundOn()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 572
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurroundSoundOnOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public registerAudioSettingChangedCallback(Lcom/geely/os/audio/IGlyAudioCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAudioSettingChangedCallback callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioChangeCallbacks.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioChangeCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioChangeCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioSettingCallback:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio$IAudioSettingListener;

    invoke-virtual {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->registerAudioSettingListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio$IAudioSettingListener;)Z

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioChangeCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerCompensationSettingListener(Lcom/geely/os/audio/IGlyCompensationSettingListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompensationSettingListeners.size() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensationSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensationSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->compensationSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation$ICompensationSettingListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->registerCompensationSettingListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation$ICompensationSettingListener;)Z

    move-result v0

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensationSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCompensationSettingListener isRegister="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public registerEqualizerStateListener(Lcom/geely/os/audio/IGlyEqualizerStateListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EqualizerStateListeners.size() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer$IEqualizerStateListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->registerEqualizerStateListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer$IEqualizerStateListener;)Z

    move-result v0

    .line 935
    :cond_0
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerEqualizerStateListener isRegister="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public registerExternalAudioCallback(Lcom/geely/os/audio/IGlyExternalSpeakersListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerExternalAudioCallback( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExternalSpeakersListeners.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->externalSpeakersListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->registerExternalAudioCallback(Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersListener;)V

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerExternalAudioVolumeCallback(Lcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerExternalAudioVolumeCallback( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExternalSpeakersVolumeListeners.size() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->iExternalSpeakersVolumeListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersVolumeListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->registerExternalAudioVolumeCallback(Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersVolumeListener;)V

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerFaderBalanceStateListener(Lcom/geely/os/audio/IGlyFaderBalanceStateListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaderBalanceStateListeners.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance$IFaderBalanceStateListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->registerFaderBalanceStateListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance$IFaderBalanceStateListener;)Z

    move-result v0

    .line 875
    :cond_0
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerFaderBalanceStateListener isRegister="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public registerHarmanSettingListener(Lcom/geely/os/audio/IGlyHarmanSettingListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HarmanSettingListeners.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v2, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer$IHarmanSettingListener;

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->registerHarmanSettingListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer$IHarmanSettingListener;)Z

    move-result v0

    .line 905
    :cond_0
    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerHarmanSettingListener isRegister="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 2

    const-string v0, "OneVehicleSDK_GlyAudioImpl"

    const-string v1, "release"

    .line 250
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    .line 252
    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    .line 253
    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    .line 254
    iput-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    .line 255
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCar:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    :cond_0
    return-void
.end method

.method public setBalanceLevel(S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBalanceLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->setBalanceLevel(S)V

    :cond_0
    return-void
.end method

.method public setBandLevel(SS)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "band",
            "level"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBandLevel : band = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v0, :cond_0

    .line 493
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->setBandLevel(SS)V

    :cond_0
    return-void
.end method

.method public setCompensationLevelOfSpeedCompensatedVolume(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCompensationLevelOfSpeedCompensatedVolume: level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->setCompensationLevelOfSpeedCompensatedVolume(I)V

    :cond_0
    return-void
.end method

.method public setDtsSoundMode(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dtsMode"
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 1100
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->setDtsSoundMode(I)Z

    move-result v0

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDtsSoundMode(dtsMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") result = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEffectEnhanceMode(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectMode"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 738
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->setEffectEnhanceMode(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffectEnhanceMode: effectMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setExternalSpeakersMediaPlayMode(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalSpeakersMediaPlayMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->setExternalSpeakersMediaPlayMode(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExternalSpeakersSwitch(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 988
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalSpeakersSwitch("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->setExternalSpeakersSwitch(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExternalSpeakersVolume(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalSpeakersVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->setExternalSpeakersVolume(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFaderLevel(S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaderLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->setFaderLevel(S)V

    :cond_0
    return-void
.end method

.method public setHarmanClariFiOnOff(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->setHarmanClariFiOnOff(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 582
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHarmanClariFiOnOff: onOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setHarmanSurroundSoundOnOff(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v0, :cond_0

    .line 590
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->setSurroundSoundOnOff(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 592
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHarmanSurroundSoundOnOff: onOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setLMHBandLevel(IS)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "band",
            "level"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLMHBandLevel : band = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->setBandLevel(IS)V

    :cond_0
    return-void
.end method

.method public setLMHBandLevel(SS)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "band",
            "level"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLMHBandLevel : band = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", level = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLoudnessEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoudnessEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 676
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->setLoudnessEnable(Z)V

    :cond_0
    return-void
.end method

.method public setMicVolumeCallbackSwitch(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz v0, :cond_0

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicVolumeCallbackSwitch("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->setMicVolumeCallbackSwitch(I)V

    :cond_0
    return-void
.end method

.method public setNaviVoiceMixMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviVoiceMixMode: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->setNaviVoiceMixMode(I)V

    :cond_0
    return-void
.end method

.method public setSpeedCompensatedVolumeEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeedCompensatedVolumeEnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz v0, :cond_0

    .line 691
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->setSpeedCompensatedVolumeEnable(Z)V

    :cond_0
    return-void
.end method

.method public setSurroundSoundOnOff(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOff"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->setSurroundSoundOnOff(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 613
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurroundSoundOnOff: onOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ret = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setVolumeByUsage(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "volume"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolumeByUsage : usage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0, p1}, Lcom/geely/os/audio/GlyAudioImpl;->getGroupIdByUsage(Ljava/lang/String;)I

    move-result p1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, p2, v2}, Landroid/car/media/CarAudioManager;->setGroupVolume(III)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVolumeByUsage error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVolumeByUsage(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "usage",
            "volume",
            "flags"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolumeByUsage : usage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, p1}, Lcom/geely/os/audio/GlyAudioImpl;->getGroupIdByUsage(Ljava/lang/String;)I

    move-result p1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setGroupVolume(III)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getVolumeByUsage error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/geely/os/car/GlyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterAudioSettingChangedCallback(Lcom/geely/os/audio/IGlyAudioCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAudioSettingChangedCallback callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioChangeCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 801
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioChangeCallbackSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "AudioChangeCallbacks  clear"

    .line 802
    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudio:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mAudioSettingCallback:Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio$IAudioSettingListener;

    invoke-virtual {p1, v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio;->unregisterAudioSettingListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/Audio$IAudioSettingListener;)Z

    :cond_0
    return-void
.end method

.method public unregisterCompensationSettingListener(Lcom/geely/os/audio/IGlyCompensationSettingListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterCompensationSettingListener listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 856
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensationSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 857
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensationSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 858
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mCompensation:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->compensationSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation$ICompensationSettingListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation;->unregisterCompensationSettingListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/ICompensation$ICompensationSettingListener;)Z

    move-result p1

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompensationSettingListeners clear isUnRegister="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterEqualizerStateListener(Lcom/geely/os/audio/IGlyEqualizerStateListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterEqualizerStateListener listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 946
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 947
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 948
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizerStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer$IEqualizerStateListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->unregisterEqualizerStateListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer$IEqualizerStateListener;)Z

    move-result p1

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EqualizerStateListeners clear isUnRegister="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterExternalAudioCallback(Lcom/geely/os/audio/IGlyExternalSpeakersListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterExternalAudioCallback( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1053
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ExternalSpeakersListeners clear"

    .line 1054
    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->externalSpeakersListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->unregisterExternalAudioCallback(Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersListener;)V

    :cond_0
    return-void
.end method

.method public unregisterExternalAudioVolumeCallback(Lcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterExternalAudioVolumeCallback( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1021
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakersVolumeListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ExternalSpeakersVolumeListeners clear"

    .line 1022
    invoke-static {v1, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mExternalSpeakers:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->iExternalSpeakersVolumeListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersVolumeListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers;->unregisterExternalAudioVolumeCallback(Lcom/ecarx/xui/adaptapi/audio/audiofx/IExternalSpeakers$IExternalSpeakersVolumeListener;)V

    :cond_0
    return-void
.end method

.method public unregisterFaderBalanceStateListener(Lcom/geely/os/audio/IGlyFaderBalanceStateListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 885
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterFaderBalanceStateListener listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v0, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 888
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalance:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;

    iget-object v1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mFaderBalanceStateListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance$IFaderBalanceStateListener;

    invoke-interface {p1, v1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance;->unregisterFaderBalanceStateListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance$IFaderBalanceStateListener;)Z

    move-result p1

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaderBalanceStateListeners clear isUnRegister="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterHarmanSettingListener(Lcom/geely/os/audio/IGlyHarmanSettingListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterHarmanSettingListener listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 916
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 917
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 918
    iget-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;

    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mHarmanSettingListener:Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer$IHarmanSettingListener;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer;->unregisterHarmanSettingListener(Lcom/ecarx/xui/adaptapi/audio/audiofx/IHarmanEqualizer$IHarmanSettingListener;)Z

    move-result p1

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHarmanSettingListeners clear isUnRegister="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public usePreset(S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usePreset : preset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl;->mEqualizer:Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;

    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/audio/audiofx/IEqualizer;->usePreset(S)V

    :cond_0
    return-void
.end method
