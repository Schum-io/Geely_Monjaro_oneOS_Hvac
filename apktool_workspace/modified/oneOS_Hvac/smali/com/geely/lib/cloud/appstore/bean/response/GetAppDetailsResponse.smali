.class public Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;
.super Ljava/lang/Object;
.source "GetAppDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;,
        Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$Data;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;->data:Ljava/lang/String;

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

    .line 321
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;->message:Ljava/lang/String;

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

    .line 313
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;->status:Ljava/lang/String;

    return-void
.end method
