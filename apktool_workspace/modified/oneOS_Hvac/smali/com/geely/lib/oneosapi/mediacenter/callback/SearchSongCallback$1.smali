.class public Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;
.super Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback$Stub;
.source "SearchSongCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchSongResult(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "searchResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/SearchResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;IILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
