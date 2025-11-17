.class Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;
.super Ljava/lang/Object;
.source "GetAppListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private apps:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;

.field private iIndex:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;

.field final synthetic this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;->this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApps()Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;->apps:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;

    return-object v0
.end method

.method public getiIndex()Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;->iIndex:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;

    return-object v0
.end method

.method public setApps(Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apps"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;->apps:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;

    return-void
.end method

.method public setiIndex(Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iIndex"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Data;->iIndex:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;

    return-void
.end method
