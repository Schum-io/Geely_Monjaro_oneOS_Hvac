.class Lcom/geely/hvac/util/TemperatureToast$1;
.super Ljava/lang/Object;
.source "TemperatureToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/util/TemperatureToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/util/TemperatureToast;


# direct methods
.method constructor <init>(Lcom/geely/hvac/util/TemperatureToast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/geely/hvac/util/TemperatureToast$1;->this$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/geely/hvac/util/TemperatureToast$1;->this$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-virtual {v0}, Lcom/geely/hvac/util/TemperatureToast;->cancel()V

    return-void
.end method
