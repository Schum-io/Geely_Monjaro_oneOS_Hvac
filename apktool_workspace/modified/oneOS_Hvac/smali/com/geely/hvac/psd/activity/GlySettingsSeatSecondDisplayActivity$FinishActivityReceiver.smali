.class public Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlySettingsSeatSecondDisplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishActivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;


# direct methods
.method public constructor <init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;->this$0:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.geely.hvac.CLOSE_PSD_SEAT_SETTING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GlySettingsSeatSecondDisplayActivity"

    const-string p2, "Broadcast finish activity"

    .line 346
    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    iget-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$FinishActivityReceiver;->this$0:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method
