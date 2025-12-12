.class public Lcom/geely/lib/oneosapi/wechat/WeChatManager;
.super Ljava/lang/Object;
.source "WeChatManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeChatManager"


# instance fields
.field private mService:Lcom/geely/lib/oneosapi/wechat/IWeChatManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/wechat/WeChatManager;->initService(Landroid/os/IBinder;)V

    return-void
.end method

.method private initService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/wechat/IWeChatManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/wechat/IWeChatManager;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/wechat/WeChatManager;->mService:Lcom/geely/lib/oneosapi/wechat/IWeChatManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getWeChatVoidState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/wechat/WeChatManager;->mService:Lcom/geely/lib/oneosapi/wechat/IWeChatManager;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/geely/lib/oneosapi/wechat/IWeChatManager;->getWeChatVoipState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/geely/lib/oneosapi/wechat/WeChatManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    sget-object v0, Lcom/geely/lib/oneosapi/wechat/WeChatManager;->TAG:Ljava/lang/String;

    const-string v1, "mService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/geely/lib/oneosapi/wechat/WeChatManager;->initService(Landroid/os/IBinder;)V

    return-void
.end method
