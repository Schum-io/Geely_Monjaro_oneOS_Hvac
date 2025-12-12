.class public Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;
.source "OnlineMusicManager.java"


# static fields
.field public static final CHANNEL_BOOK:Ljava/lang/String; = "channel_book"

.field public static final CHANNEL_BROADCAST:Ljava/lang/String; = "channel_broadcast"

.field public static final CHANNEL_MUSIC:Ljava/lang/String; = "channel_music"

.field public static final CHANNEL_NEWS:Ljava/lang/String; = "channel_news"

.field public static final CHANNEL_RADIO:Ljava/lang/String; = "channel_radio"


# instance fields
.field private final mAudioSource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "service",
            "mediaCenterManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    .line 2
    sget-object p1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->mAudioSource:I

    return-void
.end method

.method private getValueList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Text;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Text;

    invoke-direct {v2}, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Text;-><init>()V

    .line 4
    iput-object v1, v2, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Text;->text:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$getRecentlyAppSource$0(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->valueOf(Ljava/lang/String;)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->addFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public addFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaData",
            "appSource"
        }
    .end annotation

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v0

    const-string v1, "is_psd_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "app_source"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "addFavor"

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public addOnlineDeviceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/OnlineDeviceStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->addDeviceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;)V

    return-void
.end method

.method public cancelFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->cancelFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public cancelFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaData",
            "appSource"
        }
    .end annotation

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v0

    const-string v1, "is_psd_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "app_source"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "cancelFavor"

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public closeFavor()V
    .locals 2

    const-string v0, "closeFavor"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->mAudioSource:I

    return v0
.end method

.method public getContent(Ljava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentId",
            "callback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->getCallbackImpl()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback;

    invoke-interface {v0, v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getContent(ILjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/IContentCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getCurrentMediaData(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaData(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    const-string v2, "is_psd_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "app_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "media_data"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaBundle(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object v0

    .line 6
    const-class v1, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    return-object p1
.end method

.method public getCurrentPlayState()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getCurrentPlayState(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayState(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    const-string v2, "is_psd_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "app_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "play_state"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaBundle(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getPlayStateEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getCurrentPosition(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    const-string v2, "is_psd_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "app_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "play_position"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaBundle(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnlineUserInfoAsync(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getOnlineUserInfoAsync(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "app",
            "callback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->getCallbackImpl()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback;

    .line 5
    invoke-interface {v0, v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getOnlineUserInfoAsync(IILcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getRecentlyAppSource()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->getRecentlyAppSource(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$OnlineMusicManager$sDfmt7tM0GtUR_Ec0CcpSEkvO_Y;

    invoke-direct {v2, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$OnlineMusicManager$sDfmt7tM0GtUR_Ec0CcpSEkvO_Y;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public isAgreedUserProtocol()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->isAgreedUserProtocol(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMusicQualitySwitch(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->isMusicQualitySwitch(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSupportChangeMode(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->isSupportChangeMode(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public next()V
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->next(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public next(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    const-string v2, "is_psd_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "app_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "next"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public notifyVrStatusNotifierStatus(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->notifyVrStatusNotifierStatus(II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUIWordingTriggered(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "words"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->onUIWordingTriggered(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public openFavor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openFavor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public openHistory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openHistory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public openHistoryList(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classicType",
            "isAutoPlay"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_auto_play"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "classic_type"

    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "openHistoryList"

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public openLoginPage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openLoginPage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public openLrcPage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openLrcPage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public openPlayList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->openPlayList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->pause(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public pause(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    const-string v2, "is_psd_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "app_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pause"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->play(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public play(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    const-string v2, "is_psd_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "app_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "play"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public playContent(ILjava/lang/String;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "content",
            "contentCode",
            "foreground"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playContent(IILjava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public playFavor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playFavor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public playSearchSongByNameItem(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songName",
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->playSearchSongByNameItem(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public prev()V
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;->UNKNOWN:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->prev(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public prev(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    const-string v2, "is_psd_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "app_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "prev"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public replay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->replay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestAudioSource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)V

    return-void
.end method

.method public requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSource"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public searchMediaForVR(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->searchMediaForVR(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public searchSongByName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songName"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->searchSongByName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public searchSongByNameAsync(Ljava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songName",
            "callback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-virtual {p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->getCallbackImpl()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback;

    invoke-interface {v0, v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->searchSongByNameAsync(ILjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public semanticSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "emotion",
            "theme",
            "style",
            "scene"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->semanticSearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public semanticSearch(Ljava/lang/String;Ljava/util/HashMap;Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "map",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_4

    .line 7
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;-><init>()V

    .line 8
    iget-object v1, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;->semantic:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;

    iput-object p1, v1, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;->domain:Ljava/lang/String;

    const-string v1, "fm"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;->semantic:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;

    const-string/jumbo v1, "\u6211\u60f3\u542c\u7535\u53f0"

    iput-object v1, p1, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;->query:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;->semantic:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;

    const-string/jumbo v1, "\u6211\u60f3\u542c\u97f3\u4e50"

    iput-object v1, p1, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;->query:Ljava/lang/String;

    .line 14
    :goto_0
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 18
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 19
    new-instance v4, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Slot;

    invoke-direct {v4}, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Slot;-><init>()V

    .line 20
    iput-object v2, v4, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Slot;->type:Ljava/lang/String;

    .line 21
    invoke-direct {p0, v3}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getValueList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v4, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Slot;->values:Ljava/util/List;

    .line 22
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_2
    iget-object p2, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;->semantic:Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;

    iput-object p1, p2, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean$Semantic;->slots:Ljava/util/List;

    .line 28
    :cond_3
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    const/4 p2, 0x0

    .line 31
    :try_start_0
    const-class v1, Lcom/geely/lib/oneosapi/mediacenter/bean/SearchBean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_2
    :try_start_1
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v0

    invoke-virtual {p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->getCallbackImpl()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;

    invoke-interface {p1, v0, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->semanticSearchAsync(ILjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 38
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public semanticSearch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "typeValues",
            "song",
            "autoPlay",
            "forceForeground",
            "queryText",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    .line 39
    iget-object v2, v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v2, :cond_0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v3

    invoke-virtual/range {p7 .. p7}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->getCallbackImpl()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v10}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->semanticSearchAndPlay(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startAppTab(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->getAudioSource()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/IMusicManager;->startAppTab(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public switchSourceQuality(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "quality"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "switchSourceQuality"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method
