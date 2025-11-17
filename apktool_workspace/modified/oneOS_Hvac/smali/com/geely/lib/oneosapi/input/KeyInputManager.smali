.class public Lcom/geely/lib/oneosapi/input/KeyInputManager;
.super Ljava/lang/Object;
.source "KeyInputManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/common/ServiceBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/input/KeyInputManager$BaseInputListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyInputManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/oneosapi/input/IInputManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
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

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/geely/lib/oneosapi/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/input/IInputManager;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    return-void
.end method


# virtual methods
.method public getKeyController()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    const-string v1, "KeyInputManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    invoke-interface {v0}, Lcom/geely/lib/oneosapi/input/IInputManager;->getControlIndex()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyController:- controller"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 11
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyController:mService=null- controller"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public interceptKeyCode(ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "packageName"
        }
    .end annotation

    const-string v0, "KeyInputManager"

    const-string v1, "interceptKeyCode:-"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/input/IInputManager;->interceptKeyCode(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

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

.method public registerListener(Lcom/geely/lib/oneosapi/input/KeyInputManager$BaseInputListener;Ljava/lang/String;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "pkg",
            "keyCodes"
        }
    .end annotation

    const-string v0, "KeyInputManager"

    const-string v1, "registerListener:-"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/geely/lib/oneosapi/input/IInputManager;->registerListener(Lcom/geely/lib/oneosapi/input/IInputListener;Ljava/lang/String;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public releaseKeyCode(ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "packageName"
        }
    .end annotation

    const-string v0, "KeyInputManager"

    const-string v1, "releaseKeyCode:-"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/input/IInputManager;->releaseKeyCode(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
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

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/geely/lib/oneosapi/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/input/IInputManager;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/geely/lib/oneosapi/input/KeyInputManager$BaseInputListener;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "pkg"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener:- tag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyInputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/input/KeyInputManager;->mService:Lcom/geely/lib/oneosapi/input/IInputManager;

    invoke-interface {v0, p1, p2}, Lcom/geely/lib/oneosapi/input/IInputManager;->unregisterListener(Lcom/geely/lib/oneosapi/input/IInputListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
