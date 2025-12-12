.class public Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;
.super Ljava/lang/Object;
.source "GetAppListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;,
        Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;,
        Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;
    }
.end annotation


# instance fields
.field private data:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;->data:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;->data:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;->status:Ljava/lang/String;

    return-void
.end method
