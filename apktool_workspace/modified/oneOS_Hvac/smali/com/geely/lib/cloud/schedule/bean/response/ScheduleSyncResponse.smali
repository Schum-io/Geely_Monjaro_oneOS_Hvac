.class public Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;
.super Ljava/lang/Object;
.source "ScheduleSyncResponse.java"


# instance fields
.field private actionParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private actionType:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private describe:Ljava/lang/String;

.field private expiration:Ljava/lang/Long;

.field private push:Ljava/lang/Long;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->actionParam:Ljava/util/Map;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/lang/Long;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->expiration:Ljava/lang/Long;

    return-object v0
.end method

.method public getPush()Ljava/lang/Long;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->push:Ljava/lang/Long;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setActionParam(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionParam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->actionParam:Ljava/util/Map;

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionType"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->actionType:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->appId:Ljava/lang/String;

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "describe"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->describe:Ljava/lang/String;

    return-void
.end method

.method public setExpiration(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expiration"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->expiration:Ljava/lang/Long;

    return-void
.end method

.method public setPush(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "push"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->push:Ljava/lang/Long;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/ScheduleSyncResponse;->type:Ljava/lang/String;

    return-void
.end method
