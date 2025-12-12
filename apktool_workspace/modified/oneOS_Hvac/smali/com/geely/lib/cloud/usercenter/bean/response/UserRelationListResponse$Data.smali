.class Lcom/geely/lib/cloud/usercenter/bean/response/UserRelationListResponse$Data;
.super Ljava/lang/Object;
.source "UserRelationListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/usercenter/bean/response/UserRelationListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserRelationListResponse;

.field private userEmail:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImage:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userPhone:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/usercenter/bean/response/UserRelationListResponse;)V
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
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/bean/response/UserRelationListResponse$Data;->this$0:Lcom/geely/lib/cloud/usercenter/bean/response/UserRelationListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
