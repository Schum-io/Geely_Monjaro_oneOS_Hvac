.class public Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;
.super Ljava/lang/Object;
.source "PostDriveDataResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;

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

    .line 95
    iget v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;->code:I

    return v0
.end method

.method public getData()Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;->message:Ljava/lang/String;

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

    .line 99
    iput p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;->code:I

    return-void
.end method

.method public setData(Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;->data:Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse$Data;

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

    .line 107
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/PostDriveDataResponse;->message:Ljava/lang/String;

    return-void
.end method
