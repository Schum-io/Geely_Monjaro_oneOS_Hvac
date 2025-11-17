.class public Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$1;
.super Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket$Stub;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->runHeartbeatPacket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/IHeartbeatPacket$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    invoke-static {v0}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->access$200(Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
