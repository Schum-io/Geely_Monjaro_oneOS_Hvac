.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;
.super Ljava/lang/Object;
.source "BaseMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->onMediaDataChanged(IILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

.field public final synthetic val$app:I

.field public final synthetic val$mediaData:Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

.field public final synthetic val$source:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;IILcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$source",
            "val$app",
            "val$mediaData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->val$source:I

    iput p3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->val$app:I

    iput-object p4, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->val$mediaData:Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMediaStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;

    .line 2
    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->val$source:I

    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v2

    iget v3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->val$app:I

    .line 3
    invoke-static {v3}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v3

    iget-object v4, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$1;->val$mediaData:Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;

    .line 4
    invoke-interface {v1, v2, v3, v4}, Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;->onMediaDataChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Lcom/geely/lib/oneosapi/mediacenter/bean/MediaData;)V

    goto :goto_0

    :cond_0
    return-void
.end method
