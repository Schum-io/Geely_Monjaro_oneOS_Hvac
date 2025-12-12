.class Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;
.super Ljava/lang/Object;
.source "GetDriveQueryTrackResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private endTime:Ljava/lang/String;

.field private location:Lcom/geely/lib/cloud/maintain/bean/Location;

.field private startTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;->this$0:Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/geely/lib/cloud/maintain/bean/Location;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;->location:Lcom/geely/lib/cloud/maintain/bean/Location;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/geely/lib/cloud/maintain/bean/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;->location:Lcom/geely/lib/cloud/maintain/bean/Location;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/geely/lib/cloud/maintain/bean/response/GetDriveQueryTrackResponse$Data;->startTime:Ljava/lang/String;

    return-void
.end method
