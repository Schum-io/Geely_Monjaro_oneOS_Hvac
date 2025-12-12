.class Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;
.super Ljava/lang/Object;
.source "GetLastDateResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private lastDate:I

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastDate()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;->lastDate:I

    return v0
.end method

.method public setLastDate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastDate"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastDateResponse$Data;->lastDate:I

    return-void
.end method
