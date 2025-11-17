.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyVrInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->getVrInteraction()Lcom/geely/os/diminteraction/IGlyVrInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyVoiceToTextCompleted(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;->notifyVoiceToTextCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public notifyVrSearchStates(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;->notifyVrSearchStates(I)V

    return-void
.end method

.method public notifyVrStatusChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vrStatusBefore",
            "vrStatusCurrent"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;->notifyVrStatusChanged(II)V

    return-void
.end method

.method public notifyVrTTSText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttsText"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;->notifyVrTTSText(Ljava/lang/String;)V

    return-void
.end method

.method public registerVrCallback(Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$700(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$700(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;->registerVrCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public unRegisterVrCallback(Lcom/geely/os/diminteraction/IGlyVrInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$700(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$000(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$600(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$6;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$700(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction;->unRegisterVrCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IVrInteraction$IVrInteractionCallback;)V

    :cond_0
    return-void
.end method
