.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$8;
.super Ljava/lang/Object;
.source "BaseMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;->onAppDied(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

.field public final synthetic val$app:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$app"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$8;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$8;->val$app:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$8;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mDeviceStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;

    .line 2
    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$DeviceStateListenerImpl$8;->val$app:I

    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/listener/DeviceStateListener;->onAppDied(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;)V

    goto :goto_0

    :cond_0
    return-void
.end method
