.class public Lcom/geely/lib/oneosapi/navi/NaviManager$4;
.super Ljava/lang/Object;
.source "NaviManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$4;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$4;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/navi/NaviManager;->access$1800(Lcom/geely/lib/oneosapi/navi/NaviManager;)V

    return-void
.end method
