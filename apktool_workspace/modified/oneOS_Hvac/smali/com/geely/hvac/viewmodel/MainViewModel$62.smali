.class Lcom/geely/hvac/viewmodel/MainViewModel$62;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/geely/os/car/IGlyCarEventCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/viewmodel/MainViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 3105
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$62;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(IILjava/lang/Object;)V
    .locals 3
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

    .line 3108
    instance-of v0, p3, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 3109
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 3110
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$62;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geely/hvac/viewmodel/MainViewModel;->onFloatChangeEvent(IIF)V

    goto :goto_1

    .line 3111
    :cond_0
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3112
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 3113
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$62;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geely/hvac/viewmodel/MainViewModel;->onIntChangeEvent(III)V

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    const-string v0, "null"

    goto :goto_0

    .line 3115
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3116
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callback unknow type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " propertyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " areaId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " val="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onSupportChanged(III)V
    .locals 1
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

    .line 3122
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$62;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0, p1, p2, p3}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$1100(Lcom/geely/hvac/viewmodel/MainViewModel;III)V

    return-void
.end method
