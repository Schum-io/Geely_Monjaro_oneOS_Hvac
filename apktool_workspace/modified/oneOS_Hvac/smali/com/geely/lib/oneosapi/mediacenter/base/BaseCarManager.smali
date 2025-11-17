.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;
.super Ljava/lang/Object;
.source "BaseCarManager.java"


# instance fields
.field public final mCarSpeedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/geely/lib/oneosapi/mediacenter/listener/CarSpeedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public final mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

.field private mService:Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 1
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
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->mCarSpeedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->mContext:Landroid/content/Context;

    .line 6
    invoke-direct {p0, p2}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->initService(Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;)V

    .line 7
    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    return-void
.end method

.method private initService(Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;

    return-void
.end method


# virtual methods
.method public addCarSpeedChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/CarSpeedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->mCarSpeedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isTrad()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->mService:Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;->isTrad()Z

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

.method public removeCarSpeedChangeListener(Lcom/geely/lib/oneosapi/mediacenter/listener/CarSpeedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->mCarSpeedListenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setService(Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;)V
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
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCarManager;->initService(Lcom/geely/lib/oneosapi/mediacenter/ICarSpeedManager;)V

    return-void
.end method
