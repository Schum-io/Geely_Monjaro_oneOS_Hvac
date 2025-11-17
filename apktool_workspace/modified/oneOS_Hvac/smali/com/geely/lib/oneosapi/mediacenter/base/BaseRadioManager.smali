.class public abstract Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;
.super Ljava/lang/Object;
.source "BaseRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public final mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

.field public final mPsdRadioStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

.field public final mRadioStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

.field public final mRadioStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 2
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

    .line 7
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;Z)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mPsdRadioStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mHandler:Landroid/os/Handler;

    .line 17
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->initService(Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;)V

    .line 19
    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    return-void
.end method


# virtual methods
.method public addCollectionStation(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frequency",
            "ifDelete"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->addCollectionStation(IZ)Z

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

.method public closeRadio(Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBand()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->getBand()I

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

.method public getCollectionStationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->getCollectionStationsList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->getCurrentAudioSource()Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v0

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->getFrequency()I

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

.method public getRadioStationsNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->getRadioStationsNameList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRadioStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->getRadioStatus()I

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

.method public getScanStationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/Frequency;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->getScanStationsList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initService(Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

    invoke-interface {p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->openRadioAsync(Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;)Z

    .line 5
    iget-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mPsdRadioStateListenerImpl:Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager$RadioStateListenerImpl;

    invoke-interface {p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->openPsdRadioAsync(Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirstUseRadio()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->isFirstUseRadio()Z

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

.method public openRadioAsync(Lcom/geely/lib/oneosapi/mediacenter/listener/IRadioStateListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mRadioStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public pause()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->pause()Z

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

.method public play()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->play()Z

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

.method public playRadioFavor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->playRadioFavor()I

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

.method public scanAsync()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->scanAsync()Z

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

.method public seekAsync(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->seekAsync(I)Z

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

.method public setBandAsync(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBand"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->setBandAsync(I)Z

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

.method public setFrequency(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frequency"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->setFrequency(I)Z

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

.method public setService(Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->initService(Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;)V

    return-void
.end method

.method public startCarouselPlay(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->startCarouselPlay(I)Z

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

.method public stopCarouselPlay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->stopCarouselPlay()Z

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

.method public stopSeekOrScanAsync()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->stopSeekOrScanAsync()Z

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

.method public toNextStation(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->toNextStation(I)Z

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

.method public tuneAsync(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;->tuneAsync(I)Z

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
