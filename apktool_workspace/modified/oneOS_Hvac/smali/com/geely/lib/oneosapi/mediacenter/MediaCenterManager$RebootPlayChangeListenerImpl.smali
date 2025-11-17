.class public Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;
.super Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RebootPlayChangeListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/listener/IRebootPlayChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRebootPlayChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rebootPlayValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->access$100(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
