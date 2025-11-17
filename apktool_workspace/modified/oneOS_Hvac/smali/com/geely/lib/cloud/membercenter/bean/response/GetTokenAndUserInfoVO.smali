.class public Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;
.super Ljava/lang/Object;
.source "GetTokenAndUserInfoVO.java"


# instance fields
.field private accountType:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expireAt:J

.field private mobile:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private refreshTokenExpireAt:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireAt()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->expireAt:J

    return-wide v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpireAt()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->refreshTokenExpireAt:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->userId:Ljava/lang/String;

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

    .line 39
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->accountType:Ljava/lang/String;

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

    .line 47
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->avatarUrl:Ljava/lang/String;

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

    .line 55
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->displayName:Ljava/lang/String;

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

    .line 63
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->email:Ljava/lang/String;

    return-void
.end method

.method public setExpireAt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expireAt"
        }
    .end annotation

    .line 71
    iput-wide p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->expireAt:J

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

    .line 79
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->mobile:Ljava/lang/String;

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

    .line 87
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenExpireAt(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshTokenExpireAt"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->refreshTokenExpireAt:Ljava/lang/String;

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

    .line 103
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->token:Ljava/lang/String;

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

    .line 111
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/GetTokenAndUserInfoVO;->userId:Ljava/lang/String;

    return-void
.end method
