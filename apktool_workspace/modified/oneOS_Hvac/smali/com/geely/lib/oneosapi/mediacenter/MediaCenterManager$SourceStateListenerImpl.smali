.class public Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;
.super Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceStateListenerImpl"
.end annotation


# instance fields
.field private final isPsdCallback:Z

.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "isPsdCallback"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->isPsdCallback:Z

    return-void
.end method


# virtual methods
.method public onPsdBtStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connected"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->access$100(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$2;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSourceChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "appSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->access$100(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/geely/lib/oneosapi/mediacenter/listener/ISourceStateListener$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MediaCenterManager"

    const-string p3, "onTransact: "

    .line 3
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onWeCarFlowTabChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "appSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->isPsdCallback:Z

    iget-object v1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->isPsdMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->access$100(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl$3;-><init>(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$SourceStateListenerImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
