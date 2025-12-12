.class public Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$2;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->onPsdBtStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

.field public final synthetic val$connected:Z


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$connected"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$2;->this$1:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    iput-boolean p2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$2;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$2;->this$1:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->access$000(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;

    .line 2
    iget-boolean v2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$2;->val$connected:Z

    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;->onPsdBtStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
