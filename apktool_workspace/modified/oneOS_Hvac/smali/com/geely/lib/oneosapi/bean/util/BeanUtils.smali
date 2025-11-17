.class public Lcom/geely/lib/oneosapi/bean/util/BeanUtils;
.super Ljava/lang/Object;
.source "BeanUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNewsFeedList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/NewsItemBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/NewsMediaBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/bean/NewsItemBean;

    .line 7
    new-instance v2, Lcom/geely/lib/oneosapi/bean/NewsMediaBean;

    invoke-direct {v2}, Lcom/geely/lib/oneosapi/bean/NewsMediaBean;-><init>()V

    .line 8
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/NewsItemBean;->getDocid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->setItemId(Ljava/lang/String;)V

    const-string v3, "news"

    .line 9
    invoke-virtual {v2, v3}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->setItemType(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/NewsItemBean;->getSrcfrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->setItemAuthor(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/NewsItemBean;->getShortcut()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->setItemImageUrl(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/NewsItemBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->setItemTitle(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/NewsItemBean;->getPubtime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/geely/lib/oneosapi/bean/NewsMediaBean;->setPublishTime(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/NewsItemBean;->getSourceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->setSourceInfo(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static filterUnplayableMusic(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "songlist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/geely/lib/oneosapi/bean/util/BeanUtils;->filterUnplayableMusic(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filterUnplayableMusic(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "songlist",
            "include"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 14
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->isPlayable()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_0

    .line 18
    :cond_2
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSinger_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->setItemAuthor(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getAlbum_pic_300x300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->setItemImageUrl(Ljava/lang/String;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSong_id()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->setItemId(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->getSong_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->setItemTitle(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "song"

    .line 23
    invoke-virtual {v1, v2}, Lcom/geely/lib/oneosapi/bean/BaseSongItemBean;->setItemType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getMediaIdString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/bean/BaseMediaBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;

    .line 7
    invoke-virtual {v1}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method
