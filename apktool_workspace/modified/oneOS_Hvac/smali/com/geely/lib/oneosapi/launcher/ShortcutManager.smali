.class public Lcom/geely/lib/oneosapi/launcher/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutManager"


# instance fields
.field private mService:Lcom/geely/lib/oneosapi/launcher/IShotCutsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "binder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/geely/lib/oneosapi/launcher/IShotCutsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/IShotCutsService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/launcher/ShortcutManager;->mService:Lcom/geely/lib/oneosapi/launcher/IShotCutsService;

    return-void
.end method

.method private isServiceAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/ShortcutManager;->mService:Lcom/geely/lib/oneosapi/launcher/IShotCutsService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getShortCuts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/launcher/bean/ShortcutCompat;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/launcher/ShortcutManager;->isServiceAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/launcher/ShortcutManager;->mService:Lcom/geely/lib/oneosapi/launcher/IShotCutsService;

    invoke-interface {v0, p1}, Lcom/geely/lib/oneosapi/launcher/IShotCutsService;->getShortCuts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ShortcutManager"

    const-string v0, "getShortCuts: service is not alive"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
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
    invoke-static {p1}, Lcom/geely/lib/oneosapi/launcher/IShotCutsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/launcher/IShotCutsService;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/launcher/ShortcutManager;->mService:Lcom/geely/lib/oneosapi/launcher/IShotCutsService;

    return-void
.end method
