.class public Lcom/geely/lib/oneosapi/navi/NaviManager;
.super Lcom/geely/lib/oneosapi/navi/NaviAPI;
.source "NaviManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;
    }
.end annotation


# static fields
.field private static final MSG_FUN_LISTENER:I = 0x64

.field private static final MSG_FUN_NOTIFY:I = 0x65

.field private static final MSG_NAVI_ERROR_CALLBACK:I = 0x69

.field private static final MSG_NAVI_INIT_RETRY:I = 0x68

.field private static final MSG_NAVI_SUCCESS_CALLBACK:I = 0x6a

.field private static final TAG:Ljava/lang/String; = "NaviManager"


# instance fields
.field private errorCode:I

.field private initService:Lcom/geely/lib/oneosapi/navi/IServiceBinder;

.field private final inviEventNotify:Lcom/geely/lib/oneosapi/navi/INaviEventNotify;

.field private final mAPICallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/geely/lib/oneosapi/navi/INaviAPICallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

.field private mNaviEventListener:Lcom/geely/lib/oneosapi/navi/INaviEventListener;

.field private final mNaviLock:Ljava/lang/Object;

.field private final mNaviObserver:Lcom/geely/lib/oneosapi/navi/INaviObserver;

.field private mSearchNum:I

.field private mapVendor:I

.field private naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

.field private viaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/navi/model/base/PoiInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/NaviAPI;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mAPICallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->errorCode:I

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mapVendor:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    .line 82
    new-instance v1, Lcom/geely/lib/oneosapi/navi/NaviManager$1;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/navi/NaviManager$1;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviObserver:Lcom/geely/lib/oneosapi/navi/INaviObserver;

    .line 103
    new-instance v1, Lcom/geely/lib/oneosapi/navi/NaviManager$2;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/navi/NaviManager$2;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->inviEventNotify:Lcom/geely/lib/oneosapi/navi/INaviEventNotify;

    .line 122
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string v2, "NaviManager"

    const-string v3, "NaviManager()"

    invoke-virtual {v1, v2, v3}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    .line 124
    new-instance v1, Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Landroid/os/Looper;Lcom/geely/lib/oneosapi/navi/NaviManager$1;)V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mHandler:Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    if-eqz p2, :cond_0

    .line 126
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string v1, "NaviManager()-->binder != null"

    invoke-virtual {p1, v2, v1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Lcom/geely/lib/oneosapi/navi/IServiceBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/IServiceBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->initService:Lcom/geely/lib/oneosapi/navi/IServiceBinder;

    .line 128
    iget p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mapVendor:I

    invoke-direct {p0, p1, v0, v3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mAPICallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/geely/lib/oneosapi/navi/NaviManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1302(Lcom/geely/lib/oneosapi/navi/NaviManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->errorCode:I

    return p1
.end method

.method public static synthetic access$1402(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/INaviServer;)Lcom/geely/lib/oneosapi/navi/INaviServer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/geely/lib/oneosapi/navi/NaviManager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->registerNaviNotifyObserver()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/geely/lib/oneosapi/navi/NaviManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->removeHandlerCallbacks()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/geely/lib/oneosapi/navi/NaviManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    return p0
.end method

.method public static synthetic access$2002(Lcom/geely/lib/oneosapi/navi/NaviManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    return p1
.end method

.method public static synthetic access$2008(Lcom/geely/lib/oneosapi/navi/NaviManager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    return v0
.end method

.method public static synthetic access$2100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->viaList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->viaList:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$2200(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/navi/NaviManager;->cycleSearchKeyword(Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->switchMapServerForBindNewMap(ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->switchMapServerForLogoutNewMap(ILcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$2901(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->bindUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$3001(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->bindUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$3100(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$3301(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->logoutUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$3401(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->logoutUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$3500(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/INaviEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviEventListener:Lcom/geely/lib/oneosapi/navi/INaviEventListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/geely/lib/oneosapi/navi/NaviManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mapVendor:I

    return p0
.end method

.method public static synthetic access$600(Lcom/geely/lib/oneosapi/navi/NaviManager;IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->errorCallback(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/geely/lib/oneosapi/navi/NaviManager;)Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mHandler:Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    return-object p0
.end method

.method private connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapVendor",
            "isLaunchMap",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mapVendor:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->errorCode:I

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->initService:Lcom/geely/lib/oneosapi/navi/IServiceBinder;

    if-nez v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string p2, "NaviManager"

    const-string p3, "connectNaviServer()---->initService == null"

    invoke-virtual {p1, p2, p3}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "NaviManager"

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " be going to get NaviServer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "NaviManager"

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNaviServer----> thread name :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->initService:Lcom/geely/lib/oneosapi/navi/IServiceBinder;

    new-instance v2, Lcom/geely/lib/oneosapi/navi/NaviManager$3;

    invoke-direct {v2, p0, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager$3;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-interface {v0, p1, p2, v2}, Lcom/geely/lib/oneosapi/navi/IServiceBinder;->getNaviServer(IZLcom/geely/lib/oneosapi/navi/IServerCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 71
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter p1

    .line 72
    :try_start_4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v0, "NaviManager"

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectNaviServer---->printStackTrace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0x68

    .line 75
    iput v0, p2, Landroid/os/Message;->what:I

    .line 76
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object p3, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mHandler:Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 79
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method private cycleSearchKeyword(Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "destList",
            "strategy",
            "action",
            "naviAPICallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/geely/lib/oneosapi/navi/INaviAPICallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "HOME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "COMPANY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->setAction(I)V

    .line 5
    invoke-virtual {v0, v2}, Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;->setSortRule(I)V

    .line 6
    new-instance v1, Lcom/geely/lib/oneosapi/navi/NaviManager$6;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/geely/lib/oneosapi/navi/NaviManager$6;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-virtual {p0, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->searchByKeyword(Lcom/geely/lib/oneosapi/navi/model/client/SearchByKeyword;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    goto :goto_1

    .line 44
    :cond_0
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mSearchNum:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/UserGetFavoritePois;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/client/UserGetFavoritePois;-><init>(I)V

    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/client/UserGetFavoritePois;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/client/UserGetFavoritePois;-><init>(I)V

    .line 51
    :goto_0
    new-instance v7, Lcom/geely/lib/oneosapi/navi/NaviManager$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/geely/lib/oneosapi/navi/NaviManager$7;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-virtual {p0, v0, v7}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->getFavoritePois(Lcom/geely/lib/oneosapi/navi/model/client/UserGetFavoritePois;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    :goto_1
    return-void
.end method

.method private errorCallback(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "naviAPICallback"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;-><init>(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;->setErrorCode(I)V

    .line 3
    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviResultCode;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;->setErrorString(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCallback---\u51fa\u53c2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NaviManager"

    invoke-virtual {p1, v2, v1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2, v0}, Lcom/geely/lib/oneosapi/navi/INaviAPICallback;->onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V

    return-void
.end method

.method private registerNaviNotifyObserver()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->inviEventNotify:Lcom/geely/lib/oneosapi/navi/INaviEventNotify;

    invoke-interface {v0, v2}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addNaviEventNotify(Lcom/geely/lib/oneosapi/navi/INaviEventNotify;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private removeHandlerCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mHandler:Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private switchMapServerForBindNewMap(ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapVendor",
            "userIdBindModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/NaviManager$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager$12;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method private switchMapServerForLogoutNewMap(ILcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapVendor",
            "userLogoutModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/NaviManager$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager$13;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;ILcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    return-void
.end method

.method private unregisterNaviNotifyObserver()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->inviEventNotify:Lcom/geely/lib/oneosapi/navi/INaviEventNotify;

    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/navi/INaviServer;->removeNaviEventNotify(Lcom/geely/lib/oneosapi/navi/INaviEventNotify;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public addSurface(Landroid/view/Surface;III)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "type",
            "height",
            "width"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addSurface(Landroid/view/Surface;III)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addSurface(Landroid/view/Surface;IIIII)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "type",
            "height",
            "width",
            "roadViewHeight",
            "roadViewWidth"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 13
    :try_start_1
    invoke-interface/range {v1 .. v7}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addSurfaceWithRoadView(Landroid/view/Surface;IIIII)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 18
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addSurface(Landroid/view/Surface;IIIIIII)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "type",
            "height",
            "width",
            "roadViewHeight",
            "roadViewWidth",
            "offsetX",
            "offsetY"
        }
    .end annotation

    move-object v1, p0

    .line 19
    iget-object v2, v1, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, v1, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 22
    :try_start_1
    invoke-interface/range {v3 .. v11}, Lcom/geely/lib/oneosapi/navi/INaviServer;->addSurfaceWithRoadViewAndOffset(Landroid/view/Surface;IIIIIII)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 24
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 27
    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bindUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIdBindModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->getCurrectConnectMap()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v1, "com.autonavi.amapauto"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->bindUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1

    .line 9
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/NaviManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager$8;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->cancelNavi(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    const/4 p1, 0x0

    return p1
.end method

.method public bindUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userIdBindModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->getCurrectConnectMap()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v1, "com.geely.map"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->bindUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1

    .line 9
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/NaviManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager$9;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserIdBindModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->cancelNavi(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1, p1}, Lcom/geely/lib/oneosapi/navi/INaviServer;->dispatchTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getCurrectConnectMap()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1}, Lcom/geely/lib/oneosapi/navi/INaviServer;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, ""

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getDefaultMap()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->initService:Lcom/geely/lib/oneosapi/navi/IServiceBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v1}, Lcom/geely/lib/oneosapi/navi/IServiceBinder;->getDefaultMap()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    const/16 v1, 0x3e9

    .line 7
    :try_start_2
    monitor-exit v0

    return v1

    .line 9
    :cond_0
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, -0x2

    .line 13
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, -0x1

    .line 16
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    if-nez v1, :cond_0

    .line 4
    iget p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->errorCode:I

    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->errorCallback(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    .line 6
    iget p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mapVendor:I

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    const/4 p1, -0x1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    invoke-direct {v1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;-><init>()V

    .line 12
    invoke-virtual {v1, p1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->setNaviBaseModel(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    if-eqz p2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mAPICallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->getCallbackId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "NaviManager"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---\u5165\u53c2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "mNaviObserver:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviObserver:Lcom/geely/lib/oneosapi/navi/INaviObserver;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviObserver:Lcom/geely/lib/oneosapi/navi/INaviObserver;

    invoke-interface {p1, v1, v2}, Lcom/geely/lib/oneosapi/navi/INaviServer;->invokeNaviAPIAsync(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;Lcom/geely/lib/oneosapi/navi/INaviObserver;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x2

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->errorCallback(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    .line 21
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public invokeAPISync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestModel"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 6
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    invoke-direct {v1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->setNaviBaseModel(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V

    .line 9
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "NaviManager"

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---\u5165\u53c2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    invoke-interface {p1, v1}, Lcom/geely/lib/oneosapi/navi/INaviServer;->invokeNaviAPI(Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;)Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/geely/lib/oneosapi/navi/ipc/TransferModel;->getNaviBaseModel()Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p1

    .line 13
    :catch_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public launchMap()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    new-instance v0, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;-><init>()V

    const/16 v1, 0x2329

    .line 56
    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;->setProtocolID(I)V

    .line 57
    new-instance v1, Lcom/geely/lib/oneosapi/navi/NaviManager$5;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/navi/NaviManager$5;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->invokeAPIAsync(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result v0

    return v0
.end method

.method public launchMap(ILandroid/os/Bundle;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mapVendor",
            "bundle",
            "naviAPICallback"
        }
    .end annotation

    const/4 v0, 0x1

    const/high16 v1, 0x10020000

    const-string v2, "android.intent.action.MAIN"

    const-string v3, "NaviManager"

    if-ne p1, v0, :cond_0

    .line 28
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string/jumbo v5, "\u6253\u5f00\u767e\u5ea6\uff0c\u901a\u8fc7Intent\u65b9\u5f0f"

    invoke-virtual {v4, v3, v5}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.baidu.naviauto"

    const-string v5, "com.baidu.naviauto.SlashActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 36
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string/jumbo v5, "\u6253\u5f00\u9ad8\u5fb7\uff0c\u901a\u8fc7Intent\u65b9\u5f0f"

    invoke-virtual {v4, v3, v5}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.autonavi.amapauto"

    const-string v5, "com.autonavi.auto.remote.fill.UsbFillActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    if-ne p1, v4, :cond_2

    .line 43
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string/jumbo v5, "\u6253\u5f00\u5409\u5229\uff0c\u901a\u8fc7Intent\u65b9\u5f0f"

    invoke-virtual {v4, v3, v5}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.geely.map"

    const-string v5, "com.geely.map.activity.MainActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0xa

    if-ne p1, p2, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->getDefaultMap()I

    move-result p1

    .line 51
    invoke-virtual {p0, p1, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->launchMap(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1

    .line 53
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->setDefaultMap(I)I

    const/4 p1, 0x0

    return p1
.end method

.method public launchMap(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapVendor",
            "naviAPICallback"
        }
    .end annotation

    const/4 v0, 0x1

    const/high16 v1, 0x10020000

    const-string v2, "android.intent.action.MAIN"

    const-string v3, "NaviManager"

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string/jumbo v5, "\u6253\u5f00\u767e\u5ea6\uff0c\u901a\u8fc7Intent\u65b9\u5f0f"

    invoke-virtual {v4, v3, v5}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.baidu.naviauto"

    const-string v5, "com.baidu.naviauto.SlashActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 9
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string/jumbo v5, "\u6253\u5f00\u9ad8\u5fb7\uff0c\u901a\u8fc7Intent\u65b9\u5f0f"

    invoke-virtual {v4, v3, v5}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.autonavi.amapauto"

    const-string v5, "com.autonavi.auto.remote.fill.UsbFillActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    if-ne p1, v4, :cond_2

    .line 16
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string/jumbo v5, "\u6253\u5f00\u5409\u5229\uff0c\u901a\u8fc7Intent\u65b9\u5f0f"

    invoke-virtual {v4, v3, v5}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.geely.map"

    const-string v5, "com.geely.map.activity.MainActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 23
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->getDefaultMap()I

    move-result p1

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->launchMap(ILcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1

    .line 26
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->setDefaultMap(I)I

    const/4 p1, 0x0

    return p1
.end method

.method public logoutUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userLogoutModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->getCurrectConnectMap()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v1, "com.autonavi.amapauto"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->logoutUserIdToAMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1

    .line 9
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/NaviManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager$10;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->cancelNavi(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    const/4 p1, 0x0

    return p1
.end method

.method public logoutUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userLogoutModel",
            "naviAPICallback"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->getCurrectConnectMap()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v1, "com.geely.map"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->logoutUserIdToGeelyMap(Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    move-result p1

    return p1

    .line 9
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/NaviManager$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/geely/lib/oneosapi/navi/NaviManager$11;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;Lcom/geely/lib/oneosapi/navi/model/client/UserLogoutModel;Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/navi/NaviAPI;->cancelNavi(Lcom/geely/lib/oneosapi/navi/INaviAPICallback;)I

    const/4 p1, 0x0

    return p1
.end method

.method public multiDestNavi(Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "destList",
            "strategy",
            "action",
            "naviAPICallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/geely/lib/oneosapi/navi/INaviAPICallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->viaList:Ljava/util/List;

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/navi/NaviManager;->cycleSearchKeyword(Ljava/util/List;IILcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string p2, "NaviManager"

    const-string/jumbo p3, "\u76ee\u7684\u5730\u4e3anull\uff1a"

    invoke-virtual {p1, p2, p3}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;

    .line 3
    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mAPICallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviEventListener:Lcom/geely/lib/oneosapi/navi/INaviEventListener;

    .line 7
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mHandler:Lcom/geely/lib/oneosapi/navi/NaviManager$SyncHandler;

    new-instance v2, Lcom/geely/lib/oneosapi/navi/NaviManager$4;

    invoke-direct {v2, p0}, Lcom/geely/lib/oneosapi/navi/NaviManager$4;-><init>(Lcom/geely/lib/oneosapi/navi/NaviManager;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removedSurface(Landroid/view/Surface;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surface",
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->naviService:Lcom/geely/lib/oneosapi/navi/INaviServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/oneosapi/navi/INaviServer;->removedSurface(Landroid/view/Surface;I)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setDefaultMap(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapVendor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->initService:Lcom/geely/lib/oneosapi/navi/IServiceBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1, p1}, Lcom/geely/lib/oneosapi/navi/IServiceBinder;->setDefaultMap(I)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x2

    .line 7
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, -0x1

    .line 10
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setNaviEventListener(Lcom/geely/lib/oneosapi/navi/INaviEventListener;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mNaviEventListener:Lcom/geely/lib/oneosapi/navi/INaviEventListener;

    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string v1, "NaviManager"

    const-string v2, "setService()"

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/base/NaviAPIBase;->log:Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;

    const-string v2, "setService()-->binder != null"

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/navi/base/log/LogProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/geely/lib/oneosapi/navi/IServiceBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/navi/IServiceBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->initService:Lcom/geely/lib/oneosapi/navi/IServiceBinder;

    .line 5
    iget p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager;->mapVendor:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/geely/lib/oneosapi/navi/NaviManager;->connectNaviServer(IZLcom/geely/lib/oneosapi/navi/INaviAPICallback;)V

    :cond_0
    return-void
.end method
