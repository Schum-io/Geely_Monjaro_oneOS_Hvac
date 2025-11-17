.class public Lcom/geely/lib/oneosapi/gesture/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;
    }
.end annotation


# static fields
.field private static final MSG_GESTURE_FUN_NOTIFY:I = 0x65

.field private static final TAG:Ljava/lang/String; = "GestureManager"


# instance fields
.field private gestureEventNotifyCallback:Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;

.field private gestureNotifyListener:Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;

.field private mService:Lcom/geely/lib/oneosapi/gesture/IGestureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 1
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/geely/lib/oneosapi/gesture/GestureManager$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/gesture/GestureManager$1;-><init>(Lcom/geely/lib/oneosapi/gesture/GestureManager;)V

    iput-object v0, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->gestureEventNotifyCallback:Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;

    .line 15
    iput-object p1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p2}, Lcom/geely/lib/oneosapi/gesture/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mService:Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    .line 17
    new-instance p2, Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;-><init>(Lcom/geely/lib/oneosapi/gesture/GestureManager;Landroid/os/Looper;Lcom/geely/lib/oneosapi/gesture/GestureManager$1;)V

    iput-object p2, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mHandler:Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GestureManager: mService="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mService:Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GestureManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic access$000(Lcom/geely/lib/oneosapi/gesture/GestureManager;)Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->gestureNotifyListener:Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/geely/lib/oneosapi/gesture/GestureManager;)Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mHandler:Lcom/geely/lib/oneosapi/gesture/GestureManager$SyncHandler;

    return-object p0
.end method


# virtual methods
.method public addGestureDetectEventNotify(Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifyListener"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mService:Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->gestureNotifyListener:Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;

    .line 3
    iget-object p1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->gestureEventNotifyCallback:Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/gesture/IGestureManager;->addGestureDetectEventNotify(Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeGestureDetectEventNotify()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mService:Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->gestureNotifyListener:Lcom/geely/lib/oneosapi/gesture/IGestureNotifyListener;

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->gestureEventNotifyCallback:Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;

    invoke-interface {v0, v1}, Lcom/geely/lib/oneosapi/gesture/IGestureManager;->removeGestureDetectEventNotify(Lcom/geely/lib/oneosapi/gesture/IGestureEventNotifyCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/gesture/IGestureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mService:Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setService: mService="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/lib/oneosapi/gesture/GestureManager;->mService:Lcom/geely/lib/oneosapi/gesture/IGestureManager;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GestureManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
