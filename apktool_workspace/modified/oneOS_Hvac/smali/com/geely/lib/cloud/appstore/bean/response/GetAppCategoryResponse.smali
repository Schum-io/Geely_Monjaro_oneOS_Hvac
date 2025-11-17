.class public Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;
.super Ljava/lang/Object;
.source "GetAppCategoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;
    }
.end annotation


# instance fields
.field private data:Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;

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
.method public getData()Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;->data:Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;->data:Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;

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

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;->message:Ljava/lang/String;

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

    .line 29
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;->status:Ljava/lang/String;

    return-void
.end method
