.class public Lcom/geely/lib/cloud/membercenter/bean/request/RefreshTokenParam;
.super Ljava/lang/Object;
.source "RefreshTokenParam.java"


# instance fields
.field private refreshToken:Ljava/lang/String;

.field private refreshTokenFlag:Z


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

    .line 10
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/request/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public isRefreshTokenFlag()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/geely/lib/cloud/membercenter/bean/request/RefreshTokenParam;->refreshTokenFlag:Z

    return v0
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

    .line 14
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/request/RefreshTokenParam;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshTokenFlag"
        }
    .end annotation

    .line 22
    iput-boolean p1, p0, Lcom/geely/lib/cloud/membercenter/bean/request/RefreshTokenParam;->refreshTokenFlag:Z

    return-void
.end method
