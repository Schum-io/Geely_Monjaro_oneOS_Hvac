.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;
.super Ljava/lang/Object;
.source "BaseMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;->onMediaQueryFinished(ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

.field public final synthetic val$info:Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;

.field public final synthetic val$source:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;ILcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$source",
            "val$info"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;->val$source:I

    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;->val$info:Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mQueryUsbMediaListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;

    .line 2
    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;->val$source:I

    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$10;->val$info:Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;

    invoke-interface {v1, v2, v3}, Lcom/geely/lib/oneosapi/mediacenter/listener/QueryUsbMediaListener;->onMediaQueryFinished(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/bean/DeviceInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
