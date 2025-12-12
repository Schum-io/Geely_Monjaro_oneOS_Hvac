.class public Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1$1;
.super Ljava/lang/Object;
.source "MusicListCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1;->onPlayListChanged(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1;

.field public final synthetic val$list:Ljava/util/List;

.field public final synthetic val$source:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1;ILjava/util/List;)V
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
            "val$list"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1$1;->val$source:I

    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback;

    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1$1;->val$source:I

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback$1$1;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicListCallback;->onPlayListChanged(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Ljava/util/List;)V

    return-void
.end method
