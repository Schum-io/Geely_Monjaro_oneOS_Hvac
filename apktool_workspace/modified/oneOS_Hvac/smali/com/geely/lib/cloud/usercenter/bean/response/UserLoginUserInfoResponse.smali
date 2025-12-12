.class public Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;
.super Ljava/lang/Object;
.source "UserLoginUserInfoResponse.java"


# instance fields
.field private accountType:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expireAt:Ljava/lang/Number;

.field private mobile:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private refreshTokenExpireAt:Ljava/lang/Number;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "expireAt",
            "refreshTokenExpireAt",
            "refreshToken",
            "userId",
            "accountType",
            "avatarUrl",
            "displayName",
            "email",
            "mobile"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->token:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->expireAt:Ljava/lang/Number;

    .line 20
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->refreshTokenExpireAt:Ljava/lang/Number;

    .line 21
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->refreshToken:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->userId:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->accountType:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->avatarUrl:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->displayName:Ljava/lang/String;

    .line 26
    iput-object p9, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->email:Ljava/lang/String;

    .line 27
    iput-object p10, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->mobile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireAt()Ljava/lang/Number;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->expireAt:Ljava/lang/Number;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpireAt()Ljava/lang/Number;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->refreshTokenExpireAt:Ljava/lang/Number;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountType"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->accountType:Ljava/lang/String;

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

    .line 83
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->avatarUrl:Ljava/lang/String;

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

    .line 91
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "email"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->email:Ljava/lang/String;

    return-void
.end method

.method public setExpireAt(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expireAt"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->expireAt:Ljava/lang/Number;

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

    .line 107
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshToken"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenExpireAt(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshTokenExpireAt"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->refreshTokenExpireAt:Ljava/lang/Number;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginUserInfoResponse;->userId:Ljava/lang/String;

    return-void
.end method
