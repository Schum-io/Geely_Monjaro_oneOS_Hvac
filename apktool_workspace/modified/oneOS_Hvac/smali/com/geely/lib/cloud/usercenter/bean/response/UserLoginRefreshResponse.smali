.class public Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;
.super Ljava/lang/Object;
.source "UserLoginRefreshResponse.java"


# instance fields
.field private expireAt:Ljava/lang/Number;

.field private refreshToken:Ljava/lang/String;

.field private refreshTokenExpireAt:Ljava/lang/Number;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "expireAt",
            "token",
            "refreshTokenExpireAt",
            "refreshToken"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->expireAt:Ljava/lang/Number;

    .line 11
    iput-object p2, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->token:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->refreshTokenExpireAt:Ljava/lang/Number;

    .line 13
    iput-object p4, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->refreshToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExpireAt()Ljava/lang/Number;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->expireAt:Ljava/lang/Number;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpireAt()Ljava/lang/Number;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->refreshTokenExpireAt:Ljava/lang/Number;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->token:Ljava/lang/String;

    return-object v0
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

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->expireAt:Ljava/lang/Number;

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

    .line 45
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->refreshToken:Ljava/lang/String;

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

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->refreshTokenExpireAt:Ljava/lang/Number;

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

    .line 29
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginRefreshResponse;->token:Ljava/lang/String;

    return-void
.end method
