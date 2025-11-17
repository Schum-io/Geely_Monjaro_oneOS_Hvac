.class Lcom/geely/hvac/component/Temperature$1;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/component/Temperature;->setOrderRefresh(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/Temperature;

.field final synthetic val$temperature:F


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/Temperature;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$temperature"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/geely/hvac/component/Temperature$1;->this$0:Lcom/geely/hvac/component/Temperature;

    iput p2, p0, Lcom/geely/hvac/component/Temperature$1;->val$temperature:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/geely/hvac/component/Temperature$1;->this$0:Lcom/geely/hvac/component/Temperature;

    iget v1, p0, Lcom/geely/hvac/component/Temperature$1;->val$temperature:F

    invoke-static {v0, v1}, Lcom/geely/hvac/component/Temperature;->access$100(Lcom/geely/hvac/component/Temperature;F)V

    return-void
.end method
