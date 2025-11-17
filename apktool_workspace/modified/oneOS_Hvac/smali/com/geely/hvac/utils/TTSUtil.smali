.class public Lcom/geely/hvac/utils/TTSUtil;
.super Ljava/lang/Object;
.source "TTSUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTSUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static speak(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "text"
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->getInstance(Landroid/content/Context;)Lcom/geely/lib/oneosapi/OneOSApiManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/geely/lib/oneosapi/OneOSApiManager;->getVrManager()Lcom/geely/lib/oneosapi/vr/VrManager;

    move-result-object p0

    .line 18
    sget-object v0, Lcom/geely/hvac/utils/TTSUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ttsBroadcast vrManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, v0}, Lcom/geely/lib/oneosapi/vr/VrManager;->speak(Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method
