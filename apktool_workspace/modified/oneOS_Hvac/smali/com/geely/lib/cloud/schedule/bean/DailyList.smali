.class public Lcom/geely/lib/cloud/schedule/bean/DailyList;
.super Ljava/lang/Object;
.source "DailyList.java"


# instance fields
.field private dailyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/schedule/DailyParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDailyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/schedule/DailyParam;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/DailyList;->dailyList:Ljava/util/List;

    return-object v0
.end method

.method public setDailyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/cloud/schedule/DailyParam;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/DailyList;->dailyList:Ljava/util/List;

    return-void
.end method
