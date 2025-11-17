.class public Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager;
.super Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;
.source "MediaAdapterManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaAdapterManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    return-void
.end method


# virtual methods
.method public addFavor()I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->getFrequency()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->addCollectionStation(IZ)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->addFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I

    move-result v0

    return v0
.end method

.method public addFavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "orientation",
            "mode",
            "item"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object p2, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bookSong(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songName"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public cancelFavor()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->getFrequency()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->addCollectionStation(IZ)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->cancelFavor(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I

    move-result v0

    return v0
.end method

.method public isCurrentMediaFavored()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->getCollectionStationsList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;

    .line 7
    invoke-virtual {v3}, Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;->getFrequency()I

    move-result v3

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->getFrequency()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2

    .line 13
    :cond_2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_YUNTING:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getMusicManagerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    .line 15
    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->getCurrentMediaData()Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    iget-boolean v0, v0, Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;->isFavored:Z

    return v0

    :cond_3
    return v2

    .line 21
    :cond_4
    invoke-super {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->isCurrentMediaFavored()Z

    move-result v0

    return v0
.end method

.method public isMusicQualitySwitch(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->isMusicQualitySwitch(I)Z

    move-result p1

    return p1
.end method

.method public isSupportChangeMode(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->isSupportChangeMode(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$PlayMode;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWeCarFlowAgreedUserProtocol()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->isAgreedUserProtocol()Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->seekAsync(I)Z

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->next()I

    move-result v0

    return v0
.end method

.method public notifyVrStatusNotifierStatus(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->notifyVrStatusNotifierStatus(I)I

    move-result p1

    return p1
.end method

.method public onMusicEnquire(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public onView(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "mode"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object p2, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public openLoginPage()I
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

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->openLoginPage()V

    const/4 v0, 0x1

    return v0
.end method

.method public openLrcPage()I
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

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->openLrcPage()V

    const/4 v0, 0x1

    return v0
.end method

.method public openWeCarFlowTab(Ljava/lang/String;)I
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

.method public openYunTingCategoryList(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkgFrom",
            "displayId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openYunTingCategoryList pkgFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " displayId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaAdapterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "com.tencent.wecarflow"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "jumpView"

    const-string/jumbo v1, "yunting"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intent"

    const-string v1, "open_category"

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez p2, :cond_0

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 10
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 12
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 13
    iget-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "not found multiMedia"

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public openYunTingFavorList(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkgFrom",
            "displayId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openYunTingFavorList pkgFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " displayId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaAdapterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "com.tencent.wecarflow"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "jumpView"

    const-string/jumbo v1, "yunting"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intent"

    const-string v1, "open_favor"

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez p2, :cond_0

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 10
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 12
    invoke-virtual {v1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 13
    iget-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "not found multiMedia"

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public pause()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->pause()Z

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->pause()I

    move-result v0

    return v0
.end method

.method public play()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->play()Z

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->play()I

    move-result v0

    return v0
.end method

.method public playFavor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->playMusicFavor()I

    move-result v0

    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager;->playRadioFavor()I

    move-result v0

    return v0
.end method

.method public playIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "orientation"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object p2, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public playRadioFavor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->playRadioFavor()I

    move-result v0

    return v0
.end method

.method public playSavedSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "mode",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object p2, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public playYunTingFavorList(Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pkgFrom",
            "foreground",
            "displayId"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playYunTingFavorList pkgFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " foreground:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " displayId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaAdapterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "com.tencent.wecarflow"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    const-string p2, "jumpView"

    const-string/jumbo v0, "yunting"

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "intent"

    const-string v0, "play_favor"

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez p3, :cond_0

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_2

    .line 11
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_2

    .line 13
    invoke-virtual {v0, p3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 14
    iget-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "not found multiMedia"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public prev()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->seekAsync(I)Z

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->prev()I

    move-result v0

    return v0
.end method

.method public scanAsync()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->scanAsync()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public searchFM(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public searchMedia(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->searchMediaForVR(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public searchMusic(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public searchNews(Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object p1

    sget-object v0, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setBandAsync(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBand"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->setBandAsync(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setFrequency(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getRadioManager()Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->setFrequency(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public switchSourceQuality(I)I
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
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_ONLINE:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/MediaAdapterManager;->isMusicQualitySwitch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getOnlineMusicManager()Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/manager/OnlineMusicManager;->switchSourceQuality(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
