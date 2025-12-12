.class Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;
.super Ljava/lang/Object;
.source "UserHabitVehicleDownloadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private profile:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private profileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse;)V
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
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;->this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProfile()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;->profile:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;->profile:Ljava/lang/String;

    return-void
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

    .line 34
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profileName"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserHabitVehicleDownloadResponse$Data;->profileName:Ljava/lang/String;

    return-void
.end method
