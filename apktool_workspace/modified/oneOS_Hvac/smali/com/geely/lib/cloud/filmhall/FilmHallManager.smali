.class public Lcom/geely/lib/cloud/filmhall/FilmHallManager;
.super Ljava/lang/Object;
.source "FilmHallManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilmHallManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/filmhall/IFilmHall;


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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/FilmHallManager;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p2}, Lcom/geely/lib/cloud/filmhall/IFilmHall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/filmhall/IFilmHall;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/FilmHallManager;->mService:Lcom/geely/lib/cloud/filmhall/IFilmHall;

    return-void
.end method


# virtual methods
.method public getDailyRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "vipType",
            "passportId",
            "channelList",
            "currentPage",
            "callback"
        }
    .end annotation

    const-string v0, "FilmHallManager"

    const-string v1, "getDailyRecommend"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/geely/lib/cloud/filmhall/FilmHallManager;->mService:Lcom/geely/lib/cloud/filmhall/IFilmHall;

    if-eqz v2, :cond_0

    .line 35
    new-instance v7, Lcom/geely/lib/cloud/filmhall/FilmHallManager$1;

    invoke-direct {v7, p0, p5}, Lcom/geely/lib/cloud/filmhall/FilmHallManager$1;-><init>(Lcom/geely/lib/cloud/filmhall/FilmHallManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/geely/lib/cloud/filmhall/IFilmHall;->getDailyRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getRankCharts(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "FilmHallManager"

    const-string v1, "getRankCharts"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/filmhall/FilmHallManager;->mService:Lcom/geely/lib/cloud/filmhall/IFilmHall;

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Lcom/geely/lib/cloud/filmhall/FilmHallManager$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/filmhall/FilmHallManager$2;-><init>(Lcom/geely/lib/cloud/filmhall/FilmHallManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/filmhall/IFilmHall;->getRankCharts(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
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

    .line 27
    invoke-static {p1}, Lcom/geely/lib/cloud/filmhall/IFilmHall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/filmhall/IFilmHall;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/filmhall/FilmHallManager;->mService:Lcom/geely/lib/cloud/filmhall/IFilmHall;

    :cond_0
    return-void
.end method
