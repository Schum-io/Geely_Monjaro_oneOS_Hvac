.class public Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;
.super Ljava/lang/Object;
.source "MusicAdapterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x0

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicAdapterManager"

.field public static final UNSUPPORTED:I = -0x1


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

.field private final mMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;

.field private final mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;

.field private final mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaCenterManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mSourceStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;

    .line 17
    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$1;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;

    .line 27
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    .line 29
    invoke-virtual {p2, v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->addSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;)V

    .line 30
    invoke-virtual {p2}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$cDnPT02UcqNt6MW7TunMIiGT1Aw;

    invoke-direct {p2, p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$cDnPT02UcqNt6MW7TunMIiGT1Aw;-><init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic lambda$addMediaStateListener$1(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->addMediaStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V

    return-void
.end method

.method static synthetic lambda$removeMediaStateListener$2(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->removeMediaStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V

    return-void
.end method


# virtual methods
.method public addFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 6
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 7
    iget-boolean v3, v3, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->isFavorSupported:Z

    if-eqz v3, :cond_2

    .line 8
    sget-object v2, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_YUNTING:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getFavorList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_1
    invoke-virtual {v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->addFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public addMediaStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$e4Z2IKYtZUuhrdksfbOUpexy0Xw;

    invoke-direct {v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$e4Z2IKYtZUuhrdksfbOUpexy0Xw;-><init>(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public addMusicStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 6
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->isFavorSupported:Z

    if-nez v1, :cond_1

    return v2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->isFavored:Z

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->cancelFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public closeFavor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->closeFavor()V

    const/4 v0, 0x1

    return v0
.end method

.method public fastForward(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->fastForward(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public fastRewind(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->fastRewind(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getBtMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getBtMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/BtMusicManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAppSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getCurrentAppSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentAppSource() returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicAdapterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentAudioSource() returned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicAdapterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 8
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayState()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 8
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentPlayState()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 8
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getMusicManager(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSource"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    return-object p1
.end method

.method public getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    return-object v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 7
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getPlayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlayListAsync(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 8
    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getPlayListAsync(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback;)V

    :goto_0
    return-void
.end method

.method public getPlayMode()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 8
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getPlayMode()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    move-result-object v0

    return-object v0
.end method

.method public getUsbMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getUsbMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/UsbMusicManager;

    move-result-object v0

    return-object v0
.end method

.method public getYunTingManager()Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getYunTingManager()Lcom/geely/lib/oneosapi/mediacenter/manager/YunTingManager;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentMediaFavored()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 4
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->isFavored:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$new$0$MusicAdapterManager(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMusicStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$MusicStateListenerImpl;

    invoke-virtual {p2, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->addMusicStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;)V

    return-void
.end method

.method public next()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v0, -0x1

    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 10
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->next()V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public openFavor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->openFavor()V

    const/4 v0, 0x1

    return v0
.end method

.method public openHistory()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->openHistory()V

    const/4 v0, 0x1

    return v0
.end method

.method public openHistoryList(IZ)I
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
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->openHistoryList(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public openPlayList()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->openPlayList()V

    const/4 v0, 0x1

    return v0
.end method

.method public pause()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v0, -0x1

    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 10
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->pause()V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public play()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v0, -0x1

    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 10
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->play()V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public playItem(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaData"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 9
    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->playItem(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public playMusicFavor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->playFavor()V

    const/4 v0, 0x1

    return v0
.end method

.method public prev()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v0, -0x1

    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 10
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->prev()V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeMediaStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$1RpBtbg7bNQGXfQUVLGfL7ejEmo;

    invoke-direct {v1, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$1RpBtbg7bNQGXfQUVLGfL7ejEmo;-><init>(Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public removeMusicStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSourceStateListener(Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mSourceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public replay()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->replay()V

    const/4 v0, 0x1

    return v0
.end method

.method public requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)V

    return-void
.end method

.method public requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "app"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    return-void
.end method

.method public seekTo(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->seekTo(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setPlayMode(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    .line 10
    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getPlayModeEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->isSupportChangeMode(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 11
    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getPlayModeEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setPlayMode(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)V

    return v2

    :cond_1
    return v4

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 19
    invoke-static {p1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getPlayModeEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->setPlayMode(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)V

    :goto_0
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public startAppTab(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->startAppTab(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
