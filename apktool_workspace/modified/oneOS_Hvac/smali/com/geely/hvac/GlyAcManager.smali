.class public Lcom/geely/hvac/GlyAcManager;
.super Ljava/lang/Object;
.source "GlyAcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/GlyAcManager$AirConditionManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlyAcManager"


# instance fields
.field private appCtx:Landroid/content/Context;

.field private final mAcInterfaceManager:Lcom/geely/hvac/GlyAcInterfaceManager;

.field private final mAcStateManager:Lcom/geely/hvac/GlyAcStateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-direct {v0}, Lcom/geely/hvac/GlyAcInterfaceManager;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/GlyAcManager;->mAcInterfaceManager:Lcom/geely/hvac/GlyAcInterfaceManager;

    .line 36
    new-instance v0, Lcom/geely/hvac/GlyAcStateManager;

    invoke-direct {v0}, Lcom/geely/hvac/GlyAcStateManager;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/GlyAcManager;->mAcStateManager:Lcom/geely/hvac/GlyAcStateManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/hvac/GlyAcManager$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/geely/hvac/GlyAcManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/geely/hvac/GlyAcManager;
    .locals 1

    .line 40
    invoke-static {}, Lcom/geely/hvac/GlyAcManager$AirConditionManagerHolder;->access$000()Lcom/geely/hvac/GlyAcManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->mAcInterfaceManager:Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-virtual {v0}, Lcom/geely/hvac/GlyAcInterfaceManager;->dismiss()V

    return-void
.end method

.method public getAcInterfaceManager()Lcom/geely/hvac/GlyAcInterfaceManager;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->mAcInterfaceManager:Lcom/geely/hvac/GlyAcInterfaceManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/geely/hvac/GlyAcManager;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    .line 54
    sget-object p1, Lcom/geely/hvac/utils/Executor;->IO:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/geely/hvac/-$$Lambda$GlyAcManager$SNyNac29QxE1eepXD1ooNB-aPNs;

    invoke-direct {v0, p0}, Lcom/geely/hvac/-$$Lambda$GlyAcManager$SNyNac29QxE1eepXD1ooNB-aPNs;-><init>(Lcom/geely/hvac/GlyAcManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    iget-object p1, p0, Lcom/geely/hvac/GlyAcManager;->mAcInterfaceManager:Lcom/geely/hvac/GlyAcInterfaceManager;

    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/GlyAcInterfaceManager;->init(Landroid/content/Context;)V

    .line 60
    iget-object p1, p0, Lcom/geely/hvac/GlyAcManager;->mAcStateManager:Lcom/geely/hvac/GlyAcStateManager;

    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/geely/hvac/GlyAcStateManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isStartLauncher()Z
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 80
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method public isStartLauncherByDisplayId(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayIndex"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const-class v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "getService"

    new-array v5, v3, [Ljava/lang/Class;

    .line 144
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    .line 148
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    .line 150
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getAllStackInfos"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    new-array v6, v3, [Ljava/lang/Object;

    .line 156
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 158
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "displayId"

    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-nez v6, :cond_4

    return v3

    .line 167
    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v7, "topActivity"

    .line 169
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    if-nez v7, :cond_5

    return v3

    .line 173
    :cond_5
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string/jumbo v8, "visible"

    .line 175
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_6

    return v3

    .line 179
    :cond_6
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 182
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 183
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-ne p1, v6, :cond_3

    .line 186
    new-instance v5, Lcom/geely/hvac/util/GlySystemUtil$StackInfo;

    invoke-direct {v5}, Lcom/geely/hvac/util/GlySystemUtil$StackInfo;-><init>()V

    .line 187
    iput v6, v5, Lcom/geely/hvac/util/GlySystemUtil$StackInfo;->displayId:I

    .line 188
    iput-object v7, v5, Lcom/geely/hvac/util/GlySystemUtil$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 189
    iput-boolean v4, v5, Lcom/geely/hvac/util/GlySystemUtil$StackInfo;->visible:Z

    if-eqz v7, :cond_3

    .line 191
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopActivityByDisplayId, e: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GlySystemUtil"

    invoke-static {v1, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    if-ne p1, v2, :cond_9

    .line 204
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/hvac/util/GlySystemUtil$StackInfo;

    .line 205
    iget-object p1, p1, Lcom/geely/hvac/util/GlySystemUtil$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    return v2
.end method

.method public jumpToHome()V
    .locals 4

    .line 106
    sget-object v0, Lcom/geely/hvac/GlyAcManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpToHome() screenId=0/topPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.launcher3"

    const-string v3, "com.android.launcher3.Launcher"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "title"

    const-string v2, ""

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "screenId"

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jumpToPSDHome()V
    .locals 4

    const-string v0, "com.android.launcher3"

    .line 125
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 126
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.geely.view.psd.PsdActivity"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "topPackageName"

    .line 129
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x2

    .line 131
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 132
    iget-object v2, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$init$0$GlyAcManager()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/geely/hvac/utils/FontManager;->getInstance()Lcom/geely/hvac/utils/FontManager;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/geely/hvac/utils/FontManager;->init(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/geely/hvac/data/GlySensorsData;->init(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->appCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->getInstance(Landroid/content/Context;)Lcom/geely/lib/oneosapi/OneOSApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->init()V

    return-void
.end method

.method public open()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/hvac/GlyAcManager;->mAcInterfaceManager:Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-virtual {v0}, Lcom/geely/hvac/GlyAcInterfaceManager;->show()V

    return-void
.end method
