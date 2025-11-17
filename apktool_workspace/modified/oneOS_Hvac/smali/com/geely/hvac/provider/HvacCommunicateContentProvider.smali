.class public Lcom/geely/hvac/provider/HvacCommunicateContentProvider;
.super Landroid/content/ContentProvider;
.source "HvacCommunicateContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/provider/HvacCommunicateContentProvider$GetHvacVisibilityCursor;,
        Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;
    }
.end annotation


# static fields
.field public static final INTERFACE_VISIBILITY_NO:I = 0x1

.field public static final INTERFACE_VISIBILITY_YES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HvacCommunicateContentProvider"

.field public static final TYPE_CLOSE:Ljava/lang/String; = "close"

.field public static final TYPE_GET_VISIBILITY:Ljava/lang/String; = "getVisibility"

.field public static final TYPE_OPEN:Ljava/lang/String; = "open"

.field private static mStickHvacCommunicateData:Lcom/geely/hvac/provider/HvacCommunicateData;

.field private static sAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

.field private static sHvacCommunicateListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AUTHORITIES_PATH:Ljava/lang/String;

.field private final CODE_QUERY:I

.field private final PATH_QUERY:Ljava/lang/String;

.field private final mCommunicatTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 64
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "com.geely.hvac"

    .line 28
    iput-object v0, p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->AUTHORITIES_PATH:Ljava/lang/String;

    const-string v1, "hvac/query"

    .line 29
    iput-object v1, p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->PATH_QUERY:Ljava/lang/String;

    const/4 v2, 0x3

    .line 30
    iput v2, p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->CODE_QUERY:I

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mCommunicatTypes:Ljava/util/List;

    .line 65
    new-instance v4, Landroid/content/UriMatcher;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v4, p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 66
    invoke-virtual {v4, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "open"

    .line 67
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "close"

    .line 68
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "getVisibility"

    .line 69
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onGetVisibility(Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 115
    invoke-interface {p1}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;->onGetHvacVisibility()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 120
    :cond_0
    new-instance p1, Landroid/database/CursorWindow;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 121
    invoke-virtual {p1, v2}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 122
    invoke-virtual {p1}, Landroid/database/CursorWindow;->allocRow()Z

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/database/CursorWindow;->putLong(JII)Z

    .line 124
    new-instance v0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider$GetHvacVisibilityCursor;

    invoke-direct {v0, p1}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider$GetHvacVisibilityCursor;-><init>(Landroid/database/CursorWindow;)V

    return-object v0
.end method

.method private static onSetVisibility(Ljava/lang/String;Ljava/lang/String;Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "extra",
            "listener"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 129
    new-instance v0, Lcom/geely/hvac/provider/HvacCommunicateData;

    invoke-direct {v0, p0, p1}, Lcom/geely/hvac/provider/HvacCommunicateData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mStickHvacCommunicateData:Lcom/geely/hvac/provider/HvacCommunicateData;

    :cond_0
    const-string v0, "open"

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    sget-object p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->TAG:Ljava/lang/String;

    const-string p1, "show"

    invoke-static {p0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    new-instance p0, Landroid/content/Intent;

    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    const-class p2, Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/geely/hvac/GlyAcApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "close"

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 143
    sget-object p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->sAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    if-eqz p0, :cond_2

    .line 144
    invoke-interface {p0, p1}, Lcom/geely/hvac/provider/AcVisibilityListener;->onInVisible(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 147
    invoke-interface {p2, p1}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;->onClose(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static reSetAcVisibilityListener(Lcom/geely/hvac/provider/AcVisibilityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    const/4 p0, 0x0

    .line 82
    sput-object p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->sAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    return-void
.end method

.method public static setAcVisibilityListener(Lcom/geely/hvac/provider/AcVisibilityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 78
    sput-object p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->sAcVisibilityListener:Lcom/geely/hvac/provider/AcVisibilityListener;

    return-void
.end method

.method public static setHvacCommunicateListener(Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHvacCommunicateListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, v0}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->setHvacCommunicateListener(Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;Z)V

    return-void
.end method

.method public static setHvacCommunicateListener(Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "useStickData"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHvacCommunicateListener, listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", useStickData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStickHvacCommunicateData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mStickHvacCommunicateData:Lcom/geely/hvac/provider/HvacCommunicateData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->sHvacCommunicateListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 91
    sget-object p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mStickHvacCommunicateData:Lcom/geely/hvac/provider/HvacCommunicateData;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/geely/hvac/provider/HvacCommunicateData;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "open"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mStickHvacCommunicateData:Lcom/geely/hvac/provider/HvacCommunicateData;

    .line 94
    invoke-virtual {p0}, Lcom/geely/hvac/provider/HvacCommunicateData;->getType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "close"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "selection",
            "selectionArgs"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "values"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "projection",
            "selection",
            "selectionArgs",
            "sortOrder"
        }
    .end annotation

    .line 156
    sget-object p3, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "query, uri:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p4, 0x0

    if-eqz p2, :cond_9

    .line 157
    array-length p5, p2

    if-nez p5, :cond_0

    goto/16 :goto_6

    .line 161
    :cond_0
    array-length p3, p2

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    .line 162
    sget-object v2, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query, projection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object p3, p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_8

    .line 165
    aget-object p1, p2, p5

    .line 167
    array-length p3, p2

    const/4 v0, 0x1

    if-le p3, v0, :cond_2

    .line 168
    aget-object p2, p2, v0

    goto :goto_1

    :cond_2
    move-object p2, p4

    .line 170
    :goto_1
    iget-object p3, p0, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->mCommunicatTypes:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    return-object p4

    .line 173
    :cond_3
    sget-object p3, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->sHvacCommunicateListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_4

    .line 174
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;

    goto :goto_2

    :cond_4
    move-object p3, p4

    .line 175
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_3
    move p5, v1

    goto :goto_4

    :sswitch_0
    const-string p5, "getVisibility"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_5

    goto :goto_3

    :cond_5
    const/4 p5, 0x2

    goto :goto_4

    :sswitch_1
    const-string p5, "close"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    goto :goto_3

    :cond_6
    move p5, v0

    goto :goto_4

    :sswitch_2
    const-string v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    packed-switch p5, :pswitch_data_0

    goto :goto_5

    .line 181
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->onGetVisibility(Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 179
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->onSetVisibility(Ljava/lang/String;Ljava/lang/String;Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 177
    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/geely/hvac/provider/HvacCommunicateContentProvider;->onSetVisibility(Ljava/lang/String;Ljava/lang/String;Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_5
    return-object p4

    :cond_9
    :goto_6
    const-string p1, "query, projection is null or empty"

    .line 158
    invoke-static {p3, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p4

    :sswitch_data_0
    .sparse-switch
        0x34264a -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x61f71b08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "values",
            "selection",
            "selectionArgs"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
