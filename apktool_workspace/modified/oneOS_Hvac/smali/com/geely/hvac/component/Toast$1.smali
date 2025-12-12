.class Lcom/geely/hvac/component/Toast$1;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/component/Toast;


# direct methods
.method constructor <init>(Lcom/geely/hvac/component/Toast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/geely/hvac/component/Toast$1;->this$0:Lcom/geely/hvac/component/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/geely/hvac/component/Toast$1;->this$0:Lcom/geely/hvac/component/Toast;

    invoke-virtual {v0}, Lcom/geely/hvac/component/Toast;->cancel()V

    return-void
.end method
