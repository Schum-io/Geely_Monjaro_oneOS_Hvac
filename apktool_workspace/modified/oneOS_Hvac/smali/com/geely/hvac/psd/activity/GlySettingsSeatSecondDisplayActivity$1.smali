.class Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$1;
.super Ljava/lang/Object;
.source "GlySettingsSeatSecondDisplayActivity.java"

# interfaces
.implements Lcom/geely/os/car/IGlyCarEventCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;


# direct methods
.method constructor <init>(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$1;->this$0:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "value"
        }
    .end annotation

    return-void
.end method

.method public onSupportChanged(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "status"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSupportChanged propertyId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[areaId]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[status]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlySettingsSeatSecondDisplayActivity"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 212
    iget-object p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$1;->this$0:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;

    invoke-static {p2, p1, p3}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->access$000(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    if-ne p2, v0, :cond_2

    const p2, 0x2d080100

    if-eq p1, p2, :cond_1

    const p2, 0x2d080200

    if-ne p1, p2, :cond_2

    .line 215
    :cond_1
    iget-object p2, p0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity$1;->this$0:Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;

    invoke-static {p2, p1, p3}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->access$000(Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;II)V

    :cond_2
    :goto_0
    return-void
.end method
