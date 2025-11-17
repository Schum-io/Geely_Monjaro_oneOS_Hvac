.class public Lcom/geely/lib/cloud/membercenter/bean/response/LogoutResponse;
.super Ljava/lang/Object;
.source "LogoutResponse.java"


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/LogoutResponse;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/LogoutResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/membercenter/bean/response/LogoutResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 13
    iput p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/LogoutResponse;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/LogoutResponse;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/geely/lib/cloud/membercenter/bean/response/LogoutResponse;->message:Ljava/lang/String;

    return-void
.end method
