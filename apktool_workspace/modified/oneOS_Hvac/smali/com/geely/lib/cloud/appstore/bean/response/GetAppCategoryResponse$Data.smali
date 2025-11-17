.class Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;
.super Ljava/lang/Object;
.source "GetAppCategoryResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/Category;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;->this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/Category;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method public setCategoryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "categoryList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/appstore/bean/Category;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppCategoryResponse$Data;->categoryList:Ljava/util/List;

    return-void
.end method
