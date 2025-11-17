.class Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginConfirmResponse$Data;
.super Ljava/lang/Object;
.source "UserLoginConfirmResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginConfirmResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private qrCodeStatus:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginConfirmResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginConfirmResponse;)V
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
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginConfirmResponse$Data;->this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserLoginConfirmResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
