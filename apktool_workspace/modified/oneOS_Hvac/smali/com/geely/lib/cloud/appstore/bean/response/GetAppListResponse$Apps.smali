.class Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;
.super Ljava/lang/Object;
.source "GetAppListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Apps"
.end annotation


# instance fields
.field private apkSize:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

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

    .line 108
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;->this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkSize()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;->apkSize:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setApkSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkSize"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;->apkSize:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppListResponse$Apps;->name:Ljava/lang/String;

    return-void
.end method
