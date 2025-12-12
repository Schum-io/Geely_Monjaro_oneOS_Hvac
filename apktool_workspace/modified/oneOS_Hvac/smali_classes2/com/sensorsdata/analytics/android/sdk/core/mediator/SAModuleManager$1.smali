.class Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;
.super Ljava/util/ArrayList;
.source "SAModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;->installService(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "com.sensorsdata.analytics.android.autotrack.core.SensorsAutoTrackAPI"

    .line 70
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sensorsdata.analytics.android.webview.impl.SensorsWebViewAPI"

    .line 71
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sensorsdata.analytics.android.sdk.encrypt.impl.SAEncryptProtocolImpl"

    .line 72
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sensorsdata.analytics.android.sdk.push.core.PushProtocolImp"

    .line 73
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sensorsdata.analytics.android.sdk.visual.impl.SAVisualProtocolAPI"

    .line 74
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sensorsdata.analytics.android.sdk.exposure.SAExposureProtocolImpl"

    .line 75
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->add(Ljava/lang/Object;)Z

    const-string p1, "com.sensorsdata.analytics.android.sdk.advert.impl.SensorsAdvertProtocolAPI"

    .line 76
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/core/mediator/SAModuleManager$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
