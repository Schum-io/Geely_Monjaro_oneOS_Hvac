.class public Lcom/geely/lib/cloud/schedule/bean/response/GetMachineSyncSwitchStatusResponse;
.super Ljava/lang/Object;
.source "GetMachineSyncSwitchStatusResponse.java"


# instance fields
.field private dailyFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDailyFlag()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/geely/lib/cloud/schedule/bean/response/GetMachineSyncSwitchStatusResponse;->dailyFlag:I

    return v0
.end method

.method public setDailyFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dailyFlag"
        }
    .end annotation

    .line 13
    iput p1, p0, Lcom/geely/lib/cloud/schedule/bean/response/GetMachineSyncSwitchStatusResponse;->dailyFlag:I

    return-void
.end method
