.class Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;
.super Ljava/lang/Object;
.source "PostMachineAskScheduleResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Data"
.end annotation


# instance fields
.field private dailyList:Lcom/geely/lib/cloud/schedule/DailyListParam;

.field final synthetic this$0:Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;->this$0:Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDailyList()Lcom/geely/lib/cloud/schedule/DailyListParam;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;->dailyList:Lcom/geely/lib/cloud/schedule/DailyListParam;

    return-object v0
.end method

.method public setDailyList(Lcom/geely/lib/cloud/schedule/DailyListParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyList"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/PostMachineAskScheduleResponse$Data;->dailyList:Lcom/geely/lib/cloud/schedule/DailyListParam;

    return-void
.end method
