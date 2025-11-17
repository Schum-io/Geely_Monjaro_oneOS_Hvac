.class public Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$1;
.super Ljava/lang/Object;
.source "MusicAdapterManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "appSource"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->access$000(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

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
    invoke-interface {v1, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/listener/SourceStateListener;->onSourceChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    goto :goto_0

    :cond_0
    return-void
.end method
