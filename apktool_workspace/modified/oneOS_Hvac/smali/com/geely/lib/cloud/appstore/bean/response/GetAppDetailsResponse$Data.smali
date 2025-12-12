.class Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$Data;
.super Ljava/lang/Object;
.source "GetAppDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private app:Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;

.field private category:Lcom/geely/lib/cloud/appstore/bean/Category;

.field final synthetic this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$Data;->this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
