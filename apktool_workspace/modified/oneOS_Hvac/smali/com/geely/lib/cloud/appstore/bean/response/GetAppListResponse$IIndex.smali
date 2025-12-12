.class Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;
.super Ljava/lang/Object;
.source "GetAppListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IIndex"
.end annotation


# instance fields
.field private pageNo:I

.field private pageSize:I

.field private pageTotal:I

.field final synthetic this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;

.field private totalResult:I


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

    .line 62
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNo()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->pageNo:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->pageSize:I

    return v0
.end method

.method public getPageTotal()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->pageTotal:I

    return v0
.end method

.method public getTotalResult()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->totalResult:I

    return v0
.end method

.method public setPageNo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageNo"
        }
    .end annotation

    .line 101
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->pageNo:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageSize"
        }
    .end annotation

    .line 93
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->pageSize:I

    return-void
.end method

.method public setPageTotal(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageTotal"
        }
    .end annotation

    .line 77
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->pageTotal:I

    return-void
.end method

.method public setTotalResult(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalResult"
        }
    .end annotation

    .line 85
    iput p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$IIndex;->totalResult:I

    return-void
.end method
