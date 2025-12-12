.class Lcom/geely/hvac/utils/Debounce$1;
.super Ljava/util/TimerTask;
.source "Debounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/utils/Debounce;->run(Lcom/geely/hvac/utils/Debounce$DebounceTask;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/utils/Debounce;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$task:Lcom/geely/hvac/utils/Debounce$DebounceTask;


# direct methods
.method constructor <init>(Lcom/geely/hvac/utils/Debounce;Lcom/geely/hvac/utils/Debounce$DebounceTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$task",
            "val$args"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/geely/hvac/utils/Debounce$1;->this$0:Lcom/geely/hvac/utils/Debounce;

    iput-object p2, p0, Lcom/geely/hvac/utils/Debounce$1;->val$task:Lcom/geely/hvac/utils/Debounce$DebounceTask;

    iput-object p3, p0, Lcom/geely/hvac/utils/Debounce$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/geely/hvac/utils/Debounce$1;->val$task:Lcom/geely/hvac/utils/Debounce$DebounceTask;

    iget-object v1, p0, Lcom/geely/hvac/utils/Debounce$1;->val$args:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/geely/hvac/utils/Debounce$DebounceTask;->invoke([Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/geely/hvac/utils/Debounce$1;->this$0:Lcom/geely/hvac/utils/Debounce;

    invoke-static {v0}, Lcom/geely/hvac/utils/Debounce;->access$000(Lcom/geely/hvac/utils/Debounce;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/geely/hvac/utils/Debounce$1;->this$0:Lcom/geely/hvac/utils/Debounce;

    invoke-static {v0}, Lcom/geely/hvac/utils/Debounce;->access$000(Lcom/geely/hvac/utils/Debounce;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
