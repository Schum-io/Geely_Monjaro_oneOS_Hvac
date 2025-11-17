.class public Lcom/geely/lib/cloud/appstore/bean/CategoryList;
.super Ljava/lang/Object;
.source "CategoryList.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
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

    .line 13
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/CategoryList;->categoryList:Ljava/util/List;

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

    .line 9
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/CategoryList;->categoryList:Ljava/util/List;

    return-void
.end method
