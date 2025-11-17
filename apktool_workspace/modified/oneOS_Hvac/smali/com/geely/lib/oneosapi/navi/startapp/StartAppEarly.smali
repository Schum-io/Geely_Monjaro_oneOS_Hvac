.class public Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;
.super Ljava/lang/Object;
.source "StartAppEarly.java"


# static fields
.field private static final ACTIVITY_NAME:Ljava/lang/String; = "com.baidu.naviauto.SlashActivity"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.baidu.naviauto"

.field private static volatile mInstance:Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly; = null

.field public static strStartAppEarly:Ljava/lang/String; = ""


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayRealMetrics:Landroid/util/DisplayMetrics;

.field public mImageReader:Landroid/media/ImageReader;

.field public mVirtualDispalyWidth:I

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public mVirtualDisplayHeight:I

.field private process:Ljava/lang/Process;

.field private strResult:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TestForStartAppEarly"

    .line 2
    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->TAG:Ljava/lang/String;

    const/16 v0, 0x77f

    .line 7
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDispalyWidth:I

    const/16 v0, 0x438

    .line 8
    iput v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDisplayHeight:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mContext:Landroid/content/Context;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->strResult:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mInstance:Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mInstance:Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mInstance:Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mInstance:Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;

    return-object p0
.end method

.method private setupImageReader()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDispalyWidth:I

    iget v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDisplayHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mImageReader:Landroid/media/ImageReader;

    return-void
.end method

.method private setupVirtualDisplay()V
    .locals 12

    const-string v0, "TestForStartAppEarly"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mDisplayRealMetrics:Landroid/util/DisplayMetrics;

    .line 3
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 4
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mDisplayRealMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    iget-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "VirtualDisplay_app"

    :try_start_1
    iget v5, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDispalyWidth:I

    iget v6, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDisplayHeight:I

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mDisplayRealMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mImageReader:Landroid/media/ImageReader;

    .line 8
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9
    invoke-virtual/range {v3 .. v11}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 14
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 15
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.baidu.naviauto"

    const-string v4, "com.baidu.naviauto.SlashActivity"

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10001000

    .line 17
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 20
    iget-object v4, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "create virtual display %dx%d (%d)  displayid: %d"

    const/4 v3, 0x4

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 22
    iget v5, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDispalyWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDisplayHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mDisplayRealMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_0

    const-string v1, "create virtual display success"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "create virtual display fail"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->setupImageReader()V

    .line 2
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->setupVirtualDisplay()V

    .line 3
    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->startAppAfterLauncher()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->strStartAppEarly:Ljava/lang/String;

    return-void
.end method

.method public startAppAfterLauncher()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;-><init>()V

    const-string v1, "am stack list |grep Stack "

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->run(Ljava/lang/String;I)Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1919"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    const-string v2, "id="

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    const-string v3, " "

    .line 13
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v3, v2, 0x3

    .line 14
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->strResult:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 17
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "all result1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \nnIndexStart "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " nIndexEnd "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nstrResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->strResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestForStartAppEarly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->strResult:Ljava/lang/String;

    return-object v0
.end method

.method public startAppOnClick()Z
    .locals 5

    const-string v0, "TestForStartAppEarly"

    const-string v1, "startAppOnClick: "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-direct {v1}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;-><init>()V

    const-string v2, "am stack list |grep Stack"

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->run(Ljava/lang/String;I)Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1919"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "am display move-stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/navi/startapp/StartAppEarly;->startAppAfterLauncher()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-direct {v2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->run(Ljava/lang/String;I)Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->getResult()Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmdAll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nall result2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopIme()V
    .locals 3

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;-><init>()V

    const-string v1, "am force-stop com.sohu.inputmethod.sogou.oem"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->run(Ljava/lang/String;I)Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/navi/startapp/ExeCommand;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd stop ime result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestForStartAppEarly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
