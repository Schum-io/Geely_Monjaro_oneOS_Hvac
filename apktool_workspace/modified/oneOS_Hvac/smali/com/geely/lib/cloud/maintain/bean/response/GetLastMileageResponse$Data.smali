.class Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse$Data;
.super Ljava/lang/Object;
.source "GetLastMileageResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private lastMileage:I

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastMileage()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse$Data;->lastMileage:I

    return v0
.end method

.method public setLastMileage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastMileage"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetLastMileageResponse$Data;->lastMileage:I

    return-void
.end method
