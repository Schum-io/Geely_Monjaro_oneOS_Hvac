.class public Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;
.super Ljava/lang/Object;
.source "PsdLauncherManager.java"


# static fields
.field private static volatile singleton:Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;->singleton:Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;->singleton:Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;

    invoke-direct {v1}, Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;-><init>()V

    sput-object v1, Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;->singleton:Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;->singleton:Lcom/geely/lib/oneosapi/psd/PsdLauncherManager;

    return-object v0
.end method


# virtual methods
.method public setWallpaper(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    return-void
.end method

.method public setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    return-void
.end method

.method public setWallpaper(Landroid/content/Context;Ljava/io/InputStream;Landroid/graphics/Rect;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "bitmapData",
            "visibleCropHint",
            "allowBackup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    return-void
.end method
