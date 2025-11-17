.class Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse$Data;
.super Ljava/lang/Object;
.source "UserHabitVehicleUploadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private profileId:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse$Data;->this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse$Data;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileId"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleUploadResponse$Data;->profileId:Ljava/lang/String;

    return-void
.end method
