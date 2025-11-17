.class Lcom/geely/hvac/component/FanLevel$1;
.super Ljava/lang/Object;
.source "FanLevel.java"

# interfaces
.implements Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/FanLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/FanLevel;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/FanLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/geely/hvac/component/FanLevel$1;->this$0:Lcom/geely/hvac/component/FanLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/geely/hvac/component/ManualFanLevel;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fanLevel",
            "level",
            "isTouch"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/geely/hvac/component/FanLevel;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mListener onChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/geely/hvac/component/FanLevel$1;->this$0:Lcom/geely/hvac/component/FanLevel;

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/FanLevel;->setCurrentLevel(I)V

    .line 36
    iget-object p1, p0, Lcom/geely/hvac/component/FanLevel$1;->this$0:Lcom/geely/hvac/component/FanLevel;

    invoke-static {p1, p2, p3}, Lcom/geely/hvac/component/FanLevel;->access$100(Lcom/geely/hvac/component/FanLevel;IZ)V

    return-void
.end method
