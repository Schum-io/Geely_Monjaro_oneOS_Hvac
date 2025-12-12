.class Lcom/geely/hvac/GlyAcApp$1;
.super Ljava/lang/Object;
.source "GlyAcApp.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/listener/ApiConnectCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/GlyAcApp;->lambda$init$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/GlyAcApp;


# direct methods
.method constructor <init>(Lcom/geely/hvac/GlyAcApp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/geely/hvac/GlyAcApp$1;->this$0:Lcom/geely/hvac/GlyAcApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail: one os api init fail"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public success()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success: one os api init success"

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 68
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/viewmodel/AppMainViewModel;

    .line 71
    iget-object v1, p0, Lcom/geely/hvac/GlyAcApp$1;->this$0:Lcom/geely/hvac/GlyAcApp;

    invoke-virtual {v1}, Lcom/geely/hvac/GlyAcApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/geely/hvac/data/GlySensorsData;->registerSuperProperties(Landroid/content/Context;I)V

    .line 72
    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->initUserCount()V

    return-void
.end method
