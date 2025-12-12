.class public Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl$1;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;->onRebootPlayChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;

.field public final synthetic val$rebootPlayValue:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$rebootPlayValue"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl$1;->val$rebootPlayValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->access$300(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/RebootPlayChangeListener;

    .line 2
    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$RebootPlayChangeListenerImpl$1;->val$rebootPlayValue:I

    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getRebootPlay(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/RebootPlayChangeListener;->onRebootPlayChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$RebootPlay;)V

    goto :goto_0

    :cond_0
    return-void
.end method
