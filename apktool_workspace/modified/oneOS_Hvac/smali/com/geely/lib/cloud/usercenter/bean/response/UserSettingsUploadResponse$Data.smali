.class Lcom/geely/lib/cloud/usercenter/bean/response/UserSettingsUploadResponse$Data;
.super Ljava/lang/Object;
.source "UserSettingsUploadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/bean/response/UserSettingsUploadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private profileId:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserSettingsUploadResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/usercenter/bean/response/UserSettingsUploadResponse;)V
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
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserSettingsUploadResponse$Data;->this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserSettingsUploadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
