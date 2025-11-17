.class public Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;
.super Ljava/lang/Object;
.source "SearchSongCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;->onSearchSongResult(IILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;

.field public final synthetic val$app:I

.field public final synthetic val$searchResults:Ljava/util/List;

.field public final synthetic val$source:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;IILjava/util/List;)V
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
            "val$searchResults"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->val$source:I

    iput p3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->val$app:I

    iput-object p4, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->val$searchResults:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;

    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->val$source:I

    .line 2
    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->val$app:I

    .line 3
    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;->val$searchResults:Ljava/util/List;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;->onSearchSongResult(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/util/List;)V

    return-void
.end method
