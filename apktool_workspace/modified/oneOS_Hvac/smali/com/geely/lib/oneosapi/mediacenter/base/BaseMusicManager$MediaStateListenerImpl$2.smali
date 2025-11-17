.class public Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;
.super Ljava/lang/Object;
.source "BaseMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;->onPlayPositionChanged(IIJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

.field public final synthetic val$app:I

.field public final synthetic val$current:J

.field public final synthetic val$source:I

.field public final synthetic val$total:J


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;IIJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$source",
            "val$app",
            "val$current",
            "val$total"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$source:I

    iput p3, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$app:I

    iput-wide p4, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$current:J

    iput-wide p6, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->this$1:Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl;

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

    move-object v2, v1

    check-cast v2, Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;

    .line 2
    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$source:I

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v3

    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$app:I

    .line 3
    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v4

    iget-wide v5, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$current:J

    iget-wide v7, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager$MediaStateListenerImpl$2;->val$total:J

    .line 4
    invoke-interface/range {v2 .. v8}, Lcom/geely/lib/oneosapi/mediacenter/listener/MediaStateListener;->onPlayPositionChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
