.class public Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;
.super Ljava/lang/Object;
.source "HuRefreshTokenVO.java"


# instance fields
.field private expireAt:J

.field private refreshToken:Ljava/lang/String;

.field private refreshTokenExpireAt:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireAt()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->expireAt:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpireAt()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->refreshTokenExpireAt:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->token:Ljava/lang/String;

    return-object v0
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

    .line 21
    iput-wide p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->expireAt:J

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

    .line 29
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenExpireAt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshTokenExpireAt"
        }
    .end annotation

    .line 45
    iput-wide p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->refreshTokenExpireAt:J

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

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/HuRefreshTokenVO;->token:Ljava/lang/String;

    return-void
.end method
