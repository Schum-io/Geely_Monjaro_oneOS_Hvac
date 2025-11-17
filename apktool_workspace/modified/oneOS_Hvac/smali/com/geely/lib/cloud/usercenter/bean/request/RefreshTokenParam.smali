.class public Lcom/geely/lib/cloud/usercenter/bean/request/RefreshTokenParam;
.super Ljava/lang/Object;
.source "RefreshTokenParam.java"


# instance fields
.field private refreshToken:Ljava/lang/String;

.field private refreshTokenFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/request/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenFlag()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/request/RefreshTokenParam;->refreshTokenFlag:Ljava/lang/String;

    return-object v0
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

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/request/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenFlag(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshTokenFlag"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/request/RefreshTokenParam;->refreshTokenFlag:Ljava/lang/String;

    return-void
.end method
