.class public abstract Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;
.source "SearchSongCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback<",
        "Lcom/geely/lib/oneosapi/mediacenter/callback/ISearchSongCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;-><init>()V

    .line 2
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/callback/SearchSongCallback;)V

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->setCallbackImpl(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract onSearchSongResult(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "appSource",
            "searchResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;",
            "Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/mediacenter/bean/SearchResult;",
            ">;)V"
        }
    .end annotation
.end method
