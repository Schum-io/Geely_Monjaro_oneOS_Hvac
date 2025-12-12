.class public Lcom/geely/lib/oneosapi/navi/impl/NaviInfoWrapper;
.super Lcom/geely/lib/oneosapi/navi/INaviInfo$Stub;
.source "NaviInfoWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NaviInfoWrapper"


# instance fields
.field private m_naviInfo:Lcom/geely/lib/oneosapi/navi/INaviInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/INaviInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/INaviInfo$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviInfoWrapper;->m_naviInfo:Lcom/geely/lib/oneosapi/navi/INaviInfo;

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviInfoWrapper;->m_naviInfo:Lcom/geely/lib/oneosapi/navi/INaviInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/navi/INaviInfo;->getLatitude()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviInfoWrapper;->m_naviInfo:Lcom/geely/lib/oneosapi/navi/INaviInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/navi/INaviInfo;->getLongitude()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviInfoWrapper;->m_naviInfo:Lcom/geely/lib/oneosapi/navi/INaviInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/navi/INaviInfo;->getMessageID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviInfoWrapper;->m_naviInfo:Lcom/geely/lib/oneosapi/navi/INaviInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/navi/INaviInfo;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/impl/NaviInfoWrapper;->m_naviInfo:Lcom/geely/lib/oneosapi/navi/INaviInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/navi/INaviInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
