.class Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;
.super Ljava/lang/Object;
.source "UserInfoResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private accountId:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountId"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->accountId:Ljava/lang/String;

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "avatarUrl"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayName"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserInfoResponse$Data;->mobile:Ljava/lang/String;

    return-void
.end method
