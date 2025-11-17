.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;
.super Ljava/lang/Object;
.source "BaseMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;->onLrcLoad(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

.field public final synthetic val$lrc:Ljava/lang/String;

.field public final synthetic val$source:I

.field public final synthetic val$time:J


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;ILjava/lang/String;J)V
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
            "val$lrc",
            "val$time"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->val$source:I

    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->val$lrc:Ljava/lang/String;

    iput-wide p4, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl;->this$0:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;->mMusicStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;

    .line 2
    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->val$source:I

    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->val$lrc:Ljava/lang/String;

    iget-wide v4, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MusicStateListenerImpl$6;->val$time:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/geely/lib/oneosapi/mediacenter/listener/MusicStateListener;->onLrcLoad(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
